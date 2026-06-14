---
name: highlights
description: Generate the R Weekly Highlights Poll Slack text. Parses draft.md for all links, presents them for editor selection, then formats two /poll Slack commands (5 items each). Use when an editor wants to create the highlights poll for the #highlights Slack channel.
disable-model-invocation: true
allowed-tools: Read, Bash
---

# R Weekly Highlights Poll Generator

Replicates the rweekly.highlights Shiny app (https://github.com/rweekly/rweekly.highlights) as a Claude Code skill.

## Goal

Produce two Slack `/poll` commands for the `#highlights` channel — one for items 1–5, one for items 6–10 — so editors can vote on the weekly highlights.

## Steps

### Step 1: Parse the draft

Read `draft.md` and extract the issue number from the `title:` front matter field (e.g. `R Weekly 2026-W24` → `2026-W24`).

If the title contains the placeholder `W00`, determine the correct week number by:
1. Running `ls _posts/ | sort | tail -1` to find the last published issue filename (e.g. `2026-06-08-2026-W24.md`)
2. Extracting its week number and adding 1 (e.g. `W24` → `W25`)
3. Cross-checking with `date +%G-W%V` — use whichever is later

Use the resolved week number (e.g. `2026-W25`) everywhere `ISSUE` appears in the poll commands.

Extract every link in the draft body using the pattern `+ [Title](URL)`. Exclude:
- Lines inside the `### Highlight` section (already selected)
- Boilerplate/recurring links:
  - `https://serve.podhome.fm/r-weekly-highlights`
  - `https://rweekly.org/live`
  - `https://jumpingrivers.github.io/meetingsR/events.html`
  - `https://community.rstudio.com/c/irl`
  - `https://sites.google.com/view/dariia-mykhailyshyna/main/r-workshops-for-ukraine`
  - `https://DSLC.io/`
  - `https://github.com/rweekly/rweekly.org#how-to-have-my-content-shared-by-r-weekly`
  - `https://r-universe.dev/search/`
  - `https://dirk.eddelbuettel.com/cranberries/cran/new/`

Display the full numbered list to the editor, grouped by section, so they can see where each item comes from.

### Step 2: Pre-select candidates

Review the list and suggest 10 items that would make strong highlights — prioritise:
- Broad appeal to R users of all levels
- Tutorials and practical tips
- Notable package releases or updates
- Community news from rOpenSci, Posit, etc.
- Anything particularly novel or creative

Present your 10 suggested picks clearly (e.g. "My suggested 10: items 3, 7, 12, ...") and ask the editor to confirm or swap any out.

**Wait for the editor's response before proceeding.**

### Step 3: Generate Slack poll commands

Once exactly 10 items are confirmed, format two Slack `/poll` commands.

Each item is formatted as:
```
"TITLE\nURL"
```

**Poll 1** (items 1–5):
```
/poll "Which of the following items in ISSUE should be highlighted? (Part 1)" "Title1\nURL1" "Title2\nURL2" "Title3\nURL3" "Title4\nURL4" "Title5\nURL5"
```

**Poll 2** (items 6–10):
```
/poll "Which of the following items in ISSUE should be highlighted? (Part 2)" "Title6\nURL6" "Title7\nURL7" "Title8\nURL8" "Title9\nURL9" "Title10\nURL10"
```

Output both commands as plain text in a code block, ready to copy and paste into the `#highlights` Slack channel.
