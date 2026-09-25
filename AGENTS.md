# Workspace: Calculus with R

> This file governs assistant behavior for this workspace.
> Activity setup follows the [Activity Setup Guide](../ActivitySetupGuide.md).

---

## Workspace Overview

An R translation of Mike X Cohen's *Calculus with Python* course (see [original repo](https://github.com/mikexcohen/calculusWithPython)). The workspace renders content as Quarto HTML documents, organized by course unit. The published site is at https://dkillian.github.io.

## Activities

| Activity | Folder | Status |
|----------|--------|--------|
| Unit 3: Functions | `calculus1_derivatives/functions/` | active |
| Unit 1–2: Derivatives (other topics) | `calculus1_derivatives/` | in progress |
| Unit: Integrals | `calculus2_integrals/` | planned |

---

## Coding Conventions

- **Language**: R
- **Pipe**: Base R `|>` for new code; existing code uses `%>%` — do not convert unless asked
- **Packages**: Loaded via `source("../../Calculus with R prep.r")` at the top of each .qmd
  - Core: tidyverse, ggplot2, flextable, patchwork, viridis
  - Tables: flextable (default font: Gill Sans MT, size 10, autofit)
  - Color: USAID palette variables (`usaid_blue`, `usaid_red`, etc.) and viridis defaults for ggplot2
- **ggplot2 themes**: `base`, `base_grid`, `base_ppt`, `faceted` — all defined in prep.R; `base` is set as default via `theme_set(base)`
- **Font**: Source Sans 3 (loaded via showtext)
- **Script naming convention** (newer files): `r[course]_[unitNum][unitName]_[scriptNum][scriptName].qmd`
  - Example: `rcalc1_3functions_2expLog.qmd` = R, Calc 1, Unit 3 (Functions), Script 2 (Exp & Log)
- **Options**: `digits=3`, `scipen=6`

---

## Standing Instructions

- **Explain issues before changing code. Ask permission before modifying any file.**
- At the start of each session, if an activity's Log and Conversations files exist, read them before proceeding.
- At the end of each session, append the transcript to `[ActivityName]Conversations.md`, add a new entry to `[ActivityName]Log.md`, and update `[ActivityName]Documentation.md` if anything changed.
- Do not overwrite raw data files.
- Do not use `size` in ggplot2 (deprecated for lines); use `linewidth` instead.
- Prefer conservative statistical interpretations; note uncertainty explicitly.

---

## Notes

- The prep file path is relative: `source("../../Calculus with R prep.r")` — assumes scripts are two levels deep from the project root.
- The workspace is version-controlled via git and published via GitHub Pages.
- Some older `.qmd` files in `calculus1_derivatives/functions/` use an earlier naming scheme (no unit number prefix, e.g., `rcalc1_functions_polynomials.qmd`). Newer files follow the numbered convention above.
