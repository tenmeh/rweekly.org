library(dplyr)
library(ellmer)
library(ragnar)
library(purrr)
library(reticulate)
library(jsonlite)
library(tidyr)
library(glue)

source("scripts/parse_curinator.R")

read_md <- function(filepath) {
  paste(readLines(filepath), collapse = "\n")
}

try_read_as_markdown <- function(url){
  tryCatch(
    ragnar::read_as_markdown(url),
    error = function(e) {
      warning("Failed to read URL: ", url, " - ", e$message)
      NA  # Return NA when there's an error
    }
  )
}

md_links <- parse_curinator_md("curatinator_latest.md") |>
  filter(`type` == "RSS POSTS") |>
  mutate(content = map_chr(link, try_read_as_markdown)) |>
  # limit character length of content to 1000 characters to respect model token limits
  mutate(content = substr(content, 1, 1000)) 

system_prompt <- read_md("scripts/curinator_system_prompt.md")

chat <- ellmer::chat_anthropic(
  system_prompt = system_prompt,
  model = "claude-opus-4-1-20250805"
)

set.seed(as.numeric(Sys.time()))
xml_tag <- paste0("info_", sample(500:9999, 1))

prompts <- interpolate(
  "<{{xml_tag}}>
  Title: {{md_links$title}}
  Link: {{md_links$link}}
  Content: {{md_links$content}}
  </{{xml_tag}}>"
)

result_raw <- md_links |>
  mutate(
    json_metadata = parallel_chat_text(
      chat,
      prompt = prompts
    )
  )
  
result_wrangled <- result_raw |>
  mutate(metadata = map(json_metadata, ~ fromJSON(.x))) |>
  unnest_wider(metadata) |>
  filter(is_r_related == "yes") |>
  mutate(md_link = glue("[{title}]({link})")) |>
  group_by(type) |>
  summarise(
    combined_text = glue("## {first(category)}\n{paste(md_link, collapse = '\n')}"),
    .groups = "drop"
  ) |>
  pull(combined_text)

manual_review_links <- result_raw |>
  mutate(metadata = map(json_metadata, ~ fromJSON(.x))) |>
  unnest_wider(metadata) |>
  filter(is.na(content)) |>
  mutate(md_link = glue("[{title}]({link})")) |>
  summarise(
    combined_text = glue("## Requiring manual review\n{paste(md_link, collapse = '\n')}")
  ) |>
  pull(combined_text)
