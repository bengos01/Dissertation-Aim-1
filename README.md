# Dissertation Aim 1

Code and documentation for Aim 1 of Sofia Bengoa's dissertation on trends and inequities in first-episode non-affective psychosis diagnosis in Chile, 2005–2023.

## Aim 1 purpose

Develop the first dissertation paper examining temporal trends in diagnosis, age at diagnosis, and inequities across sociodemographic groups, including sex/gender, ethnicity, education and/or occupation, migration status, and geographic region.

## Repository contents

- `R/`: R scripts and reusable functions
- `documentation/`: analysis decisions, data documentation, and reproducibility notes
- `manuscript/`: manuscript components appropriate for version control
- `output/figures/`: reproducible figures
- `output/tables/`: reproducible tables
- `data/`: local-only data location; research data must not be committed

## Data protection

Although this repository is private, do not upload individual-level, identifiable, restricted, or sensitive research data. The `.gitignore` excludes common data formats and the contents of local data folders.

## Initial workflow

1. Complete the analysis map and confirm the study population, outcomes, stratifiers, and denominator availability.
2. Prepare table and figure shells.
3. Draft the methods shell.
4. Build the literature evidence map.
5. When data arrive, run the data audit before beginning the primary analysis.

## Suggested commit messages

- `Create Aim 1 data audit template`
- `Document cohort inclusion criteria`
- `Add annual cohort count checks`
- `Revise age-at-diagnosis figure`
