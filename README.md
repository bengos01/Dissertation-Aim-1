# Dissertation Aim 1

Code, reproducible outputs, and the Quarto manuscript for Sofia Bengoa's first dissertation paper on trends and inequities in age at diagnosis of first-episode non-affective psychosis in Chile, 2005–2023.

## Source of truth

- **Notion:** workflow, research decisions, unresolved questions, and meeting notes
- **RStudio + Quarto:** official manuscript and analysis
- **GitHub:** version history for code, the Quarto source, and nonconfidential reproducible outputs
- **EndNote:** citation management; export the paper's references to `manuscript/references.bib`
- **Word:** a rendered copy for review and submission, not a second independently edited master draft

The official manuscript source is `manuscript/aim1-manuscript.qmd`. Open it in RStudio and use **Render** to create a Word document.

## Repository contents

- `R/`: R scripts and reusable functions
- `documentation/`: analysis decisions, data documentation, and reproducibility notes
- `manuscript/`: Quarto manuscript source and citation/style files
- `output/figures/`: reproducible figures
- `output/tables/`: reproducible tables
- `data/`: local-only data location; research data must not be committed

## Current workflow

1. Review the mock table and figure specifications in Notion.
2. Edit the Methods section in `manuscript/aim1-manuscript.qmd`.
3. Build the analysis code skeleton without inventing the data structure.
4. Export relevant EndNote records to `manuscript/references.bib` when citations are needed.
5. Shortlist target journals before polishing the full manuscript.
6. When data arrive, run the data audit before the primary analysis.

## Data protection

Although this repository is private, do not upload individual-level, identifiable, restricted, or sensitive research data. The `.gitignore` excludes common data formats and the contents of local data folders.
