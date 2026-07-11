---
layout: draft
title: R Weekly 2026-W00
description: Draft of the R Weekly
image: https://rweekly.org/public/facebook.png
---


+ [How to have (my) content shared by R Weekly?](https://github.com/rweekly/rweekly.org#how-to-have-my-content-shared-by-r-weekly)

This week’s release was curated by [](), with help from the R Weekly team members and contributors.



### Highlight



### Insights

- [Collaborating on Quarto documents](https://nrennie.rbind.io/blog/collaborating-quarto/)
+ [An API for Everything There Is to Know About Packages](https://ropensci.org/blog/2026/07/08/r-universe-apis-use-cases/)

### R in the Real World

[{rdoom} is a playable version of Doom for R.](https://github.com/coolbutuseless/rdoom)

![]()

+ [Crude oil stocks at Cushing, Oklahoma](https://freerangestats.info/blog/2026/07/09/cushing)

### Tutorials

+ [Parallel LLM Chats Extract a Lot of Data All at Once](https://3mw.albert-rapp.de/p/parallel-llm-chats-extract-a-lot-of-data-all-at-once)



### Resources



### New Packages

<!-- <p class="added-hostname"><a href="https://rweekly.org/live" target="_blank" class="externalLink">📦 <i>Go Live for More New Pkgs</i> 📦</a></p> --> 
<p class="added-hostname"><a href="https://dirk.eddelbuettel.com/cranberries/cran/new/" target="_blank" class="externalLink">📦 <i>Keep up to date wtih CRANberries</i> 📦</a></p>


**CRAN**

### 1. Modern Data Engineering & Large-Scale Mapping
* **[{deckglgeoarrow} 0.0.2](https://cran.r-project.org/package=deckglgeoarrow):** Use 'GeoArrow' to Add 'Deck.gl' Layers to a 'maplibregl'/'mapboxgl' Map - [diffify](https://diffify.com/R/deckglgeoarrow)
* *Why it's interesting:* Bridges the ultra-fast GeoArrow memory format with high-performance WebGL map rendering, crucial for modern, interactive big-data spatial visualization.
* **[{osmnxr} 0.1.1](https://cran.r-project.org/package=osmnxr):** Download, Model and Analyze 'OpenStreetMap' Street Networks - [diffify](https://diffify.com/R/osmnxr)
* *Why it's interesting:* Provides R users with a cleaner way to fetch and model complex OpenStreetMap road networks, historically a friction point for routing and urban analytics.
* **[{data.sketches} 0.1.0](https://cran.r-project.org/package=data.sketches):** Probabilistic Streaming Data Sketches - [diffify](https://diffify.com/R/data.sketches)
* *Why it's interesting:* Implements approximate algorithms for analyzing massive, high-velocity streaming data, letting you track distinct counts and quantiles with minimal memory footprint.

### 2. Large Language Models & AI Automation
* **[{inferencer} 0.1.4.5](https://cran.r-project.org/package=inferencer):** Simple Unified Wrappers for Hosted Foundation Model Inference APIs - [diffify](https://diffify.com/R/inferencer)
* *Why it's interesting:* A clean, abstracted wrapper interface for quickly hitting hosted API models (like OpenAI or Anthropic) directly from an R analytical workflow.
* **[{agentr} 0.2.8.4](https://cran.r-project.org/package=agentr):** Specification and Review Scaffolding for AI Agent Workflows - [diffify](https://diffify.com/R/agentr)
* *Why it's interesting:* Highly unique addition to R that helps developers structure, evaluate, and scaffold agentic AI behavior flows rather than simple single-prompt text generation.
* **[{doclingr} 0.1.0](https://cran.r-project.org/package=doclingr):** Document Intelligence via 'Docling' - [diffify](https://diffify.com/R/doclingr)
* *Why it's interesting:* Brings native document layout parsing and intelligence to R, making it significantly easier to scrape and structure PDFs or unstructured reports into tidy data.

### 3. Interactive UI & Presentation Tools
* **[{ggpaintr} 0.11.1](https://cran.r-project.org/package=ggpaintr):** Build Formula-Driven 'shiny' Apps for 'ggplot2' - [diffify](https://diffify.com/R/ggpaintr)
* *Why it's interesting:* Drastically reduces the boilerplate code needed to bridge ggplot2 objects with interactive Shiny dashboards using formula mechanics.
* **[{datasetviewer} 0.1.1](https://cran.r-project.org/package=datasetviewer):** 'SAS Studio'-Style Interactive Dataset Viewer - [diffify](https://diffify.com/R/datasetviewer)
* *Why it's interesting:* A highly practical quality-of-life tool for institutional users or transitioning SAS programmers who prefer a robust, spreadsheet-style GUI inside their workspace.
* **[{glyph} 0.1.1](https://cran.r-project.org/package=glyph):** A Next-Generation Grammar of Interactive Graphics - [diffify](https://diffify.com/R/glyph)
* *Why it's interesting:* Attempts a bold structural departure from standard ggplot syntax by introducing a modern, interactive-first grammar paradigm for plotting.

### 4. Advanced Statistics & Specialized Modeling
* **[{didintrjl} 0.2.6](https://cran.r-project.org/package=didintrjl):** Intersection Difference-in-Differences - [diffify](https://diffify.com/R/didintrjl)
* *Why it's interesting:* A modern causal inference package targeting advanced Difference-in-Differences setups, a highly active field in econometrics right now.
* **[{retraction} 0.1.0](https://cran.r-project.org/package=retraction):** Detect Retracted References in Documents and Bibliographies - [diffify](https://diffify.com/R/retraction)
* *Why it's interesting:* A specialized literature utility that acts as an automated audit tool, checking your data or citations against known academic retraction databases.
* **[{Unitary} 0.3.11](https://cran.r-project.org/package=Unitary):** Quantum Simulator - [diffify](https://diffify.com/R/Unitary)
* *Why it's interesting:* A completely unique niche package that provides a basic sandbox for quantum state simulation right inside an R script.




**GitHub or Bitbucket**

- [{vellum}: A grid-like low-level graphics framework for R with a Rust backend](https://github.com/r-vellum/vellum)
+ [{honestlm}: Guardrails for teaching and visualizing linear models in R](https://yanivjb.github.io/honestlm/)
+ [The lt Package: Lightweight HTML Tables for R (and Beyond)](https://yihui.org/en/2026/07/lt-package/)

### Updated Packages

<i>🔍 [Search on R-universe](https://r-universe.dev/search/) 🔍</i>

* **[{duckdb} 1.5.4.3](https://cran.r-project.org/package=duckdb):** DBI Package for the DuckDB Database Management System - [diffify](https://diffify.com/R/duckdb)
* *Why it's interesting:* A widely popular backend for fast, serverless analytical queries on larger-than-RAM data directly within R.
* **[{survival} 3.8-9](https://cran.r-project.org/package=survival):** Survival Analysis - [diffify](https://diffify.com/R/survival)
* *Why it's interesting:* The foundational, industry-standard package for time-to-event analysis in R, used globally in clinical trials and medical research.
* **[{rsconnect} 1.10.1](https://cran.r-project.org/package=rsconnect):** Deploy Docs, Apps, and APIs to 'Posit Connect', 'shinyapps.io', and 'RPubs' - [diffify](https://diffify.com/R/rsconnect)
* *Why it's interesting:* An essential production tool used by almost every R developer building Shiny apps or publishing automated Quarto/R Markdown documents.

* **[{LLMR} 0.8.10](https://cran.r-project.org/package=LLMR):** Interface for Large Language Model APIs in R - [diffify](https://diffify.com/R/LLMR)
* *Why it's interesting:* Highly relevant for integrating generative AI text APIs directly into tidy data pipelines.
* **[{AIGRA} 0.2.0](https://cran.r-project.org/package=AIGRA):** Agentic Item Generation, Review, and Analysis - [diffify](https://diffify.com/R/AIGRA)
* *Why it's interesting:* A unique package combining agentic AI frameworks with psychometric item generation and validation.
* **[{litedown} 0.10](https://cran.r-project.org/package=litedown):** A Lightweight Version of R Markdown - [diffify](https://diffify.com/R/litedown)
* *Why it's interesting:* A minimal, lightweight rendering alternative written by Yihui Xie (the creator of `knitr`), optimized for speed and simplicity.

* **[{PROJ} 0.7.0](https://cran.r-project.org/package=PROJ):** Generic Coordinate System Transformations Using 'PROJ' - [diffify](https://diffify.com/R/PROJ)
* *Why it's interesting:* A critical backbone tool providing low-level, high-performance C API bindings for global coordinate transformations.
* **[{deeptime} 2.4.0](https://cran.r-project.org/package=deeptime):** Plotting Tools for Anyone Working in Deep Time - [diffify](https://diffify.com/R/deeptime)
* *Why it's interesting:* A unique visualization tool designed specifically for geologists and paleontologists to plot data against customizable geological time scales.
* **[{soilDB} 2.9.2](https://cran.r-project.org/package=soilDB):** Soil Database Interface - [diffify](https://diffify.com/R/soilDB)
* *Why it's interesting:* A highly specialized, practical package that streamlines downloading and mapping raw ecological and soil survey data directly from USDA databases.

* **[{kableExtra} 1.4.1](https://cran.r-project.org/package=kableExtra):** Construct Complex Table with 'kable' and Pipe Syntax - [diffify](https://diffify.com/R/kableExtra)
* *Why it's interesting:* One of the most common and beloved presentation packages in the R ecosystem for turning raw data frames into beautiful, publication-ready PDF or HTML tables.
* **[{ggcorrplot} 0.2.0](https://cran.r-project.org/package=ggcorrplot):** Visualization of a Correlation Matrix using 'ggplot2' - [diffify](https://diffify.com/R/ggcorrplot)
* *Why it's interesting:* A widely used extension that makes it dead simple to build clean, intuitive correlation matrix heatmaps for exploratory data analysis.
* **[{rphylopic} 1.7.0](https://cran.r-project.org/package=rphylopic):** Get Silhouettes of Organisms from PhyloPic - [diffify](https://diffify.com/R/rphylopic)
* *Why it's interesting:* A unique package that lets evolutionary biologists automatically pull vector silhouettes of animals and plants to embed directly into ggplot graphs.

+ [RQuantLib 0.4.28 on CRAN: Small Update](http://dirk.eddelbuettel.com/blog/2026/07/10#rquantlib_0.4.28)
+ [Rcpp 1.1.2 on CRAN: Usual Improvements in Semi-Annual Update](http://dirk.eddelbuettel.com/blog/2026/07/05#rcpp_1.1.2)



### Videos and Podcasts

+ [Listen to the R-Weekly Highlights Podcast](https://serve.podhome.fm/r-weekly-highlights)


### Gist & Cookbook



### Shiny Apps



### R Internationally



<!--<div class="post-more-begin></div><div class="post-more-end"></div>-->

### R Project Updates

Updates from [R Core](http://developer.r-project.org/blosxom.cgi/R-devel/NEWS):

### Call for Participation


### Upcoming Events in 3 Months

Events in 3 Months:

+ [A list of R conferences and meetings](https://jumpingrivers.github.io/meetingsR/events.html)

+ [This week's local R-User and applied stats events](https://community.rstudio.com/c/irl)

+ [Weekly R Workshops for Ukraine](https://sites.google.com/view/dariia-mykhailyshyna/main/r-workshops-for-ukraine)

### Grants & Funding


### Datasets


### Connect

<i>[Join the Data Science Learning Community](https://DSLC.io/)</i>

### rtistry


### Quotes of the Week

<blockquote class="bluesky-embed" data-bluesky-uri="at://did:plc:kynaetyuzsp46xejc6mzpjle/app.bsky.feed.post/3mppsylujkc23" data-bluesky-cid="bafyreidoyyyfg53pp7lo4nuyfpsi64xh2qnlwdf55vmtpjhtxbnpncx3ni" data-bluesky-embed-color-mode="system"><p lang="en">Where it all started. #Rstats<br><br><a href="https://bsky.app/profile/did:plc:kynaetyuzsp46xejc6mzpjle/post/3mppsylujkc23?ref_src=embed">[image or embed]</a></p>&mdash; Alex Holcombe (<a href="https://bsky.app/profile/did:plc:kynaetyuzsp46xejc6mzpjle?ref_src=embed">@alexh.bsky.social</a>) <a href="https://bsky.app/profile/did:plc:kynaetyuzsp46xejc6mzpjle/post/3mppsylujkc23?ref_src=embed">July 3, 2026 at 2:31 PM</a></blockquote><script async src="https://embed.bsky.app/static/embed.js" charset="utf-8"></script>

<blockquote class="bluesky-embed" data-bluesky-uri="at://did:plc:vtb6zwyntsyelbzv24u2ajyd/app.bsky.feed.post/3mqdoyj3ex22z" data-bluesky-cid="bafyreibyvr55gn7l6mldrzzwmwmcempavfpqfliggbfew2rwq53w6qfmte" data-bluesky-embed-color-mode="system"><p lang="en">This report — every word, table, and chart — was made in #rstats www.dewr.gov.au/workplace-re...<br><br><a href="https://bsky.app/profile/did:plc:vtb6zwyntsyelbzv24u2ajyd/post/3mqdoyj3ex22z?ref_src=embed">[image or embed]</a></p>&mdash; Matt Cowgill (<a href="https://bsky.app/profile/did:plc:vtb6zwyntsyelbzv24u2ajyd?ref_src=embed">@mattcowgill.bsky.social</a>) <a href="https://bsky.app/profile/did:plc:vtb6zwyntsyelbzv24u2ajyd/post/3mqdoyj3ex22z?ref_src=embed">July 11, 2026 at 12:14 PM</a></blockquote><script async src="https://embed.bsky.app/static/embed.js" charset="utf-8"></script>




