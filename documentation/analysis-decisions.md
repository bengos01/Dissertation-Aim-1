# Aim 1 analysis decision log

Use this file for concise, non-sensitive decisions that need to remain synchronized with the code and manuscript. Detailed planning and meeting notes remain in Notion.

## Decisions to date

| Date | Decision | Rationale | Code or manuscript affected | Discussed with |
|---|---|---|---|---|
| 2026-10-02 | Develop and test code using the synthetic dataset; restricted real data remain outside GitHub. | Allows reproducible code development without committing restricted individual-level data. | All analysis files | Jeanette / project workflow |
| 2026-10-02 | Preserve original registry variables and create separate analysis variables rather than renaming raw fields. | Keeps code compatible with the real registry data and preserves the original data structure. | `Aim1_analysis.Rmd` | — |
| 2026-10-02 | Use age 15–65 years and calendar years 2005–2023 as established Aim 1 restrictions. | These are the prespecified study population and time-period restrictions. | `Aim1_Analytic_Sample.Rmd`, `Aim1_analysis.Rmd` | Dissertation plan |
| 2026-10-02 | Investigate repeated individuals on the full raw dataset before applying age/year restrictions. | Restricting first could hide earlier/later records for the same individual and obscure why an ID appears more than once. | `Duplicates_Review.Rmd` | — |
| 2026-10-02 | Do not automatically deduplicate or select the earliest record until the real repeated-record patterns are understood. | The registry meaning of repeated records has not yet been established. | `Duplicates_Review.Rmd`, `Aim1_Analytic_Sample.Rmd` | Pending real-data review |
| 2026-10-02 | Keep QC, duplicate review, analytic-sample construction, and primary analysis as separate R Markdown workflows. | Separates data understanding and cohort decisions from the final analysis while keeping each step reproducible. | Repository workflow | — |
| 2026-10-02 | The main analysis Rmd will independently reproduce the finalized analytic-sample rules from the raw data. | The primary analysis should be runnable without first executing another R Markdown document. | `Aim1_analysis.Rmd` | — |
| 2026-10-02 | Do not recode unresolved region code 0 or country-of-origin code 0 until their meanings are confirmed. | Current codebook information does not define these values sufficiently for recoding. | QC and analytic-variable coding | Pending clarification |
| 2026-10-02 | Treat knitted HTML files as temporary local outputs rather than version-controlled source files. | R Markdown files are the reproducible source and HTML can be regenerated as needed. | Repository organization | — |
| 2026-11-10 | Use Option B as the Aim 1 cohort: records with `ipd_cofirmado = SI` and `ipd_descartado = NO`; each person's earliest such record; then 2005–2023 and ages 15–65. | Confirmed cases only; dating at the confirmed record is clear and defensible. Expected counts: 22,471 people before restrictions, 20,388 after. | `03a`, `04`, manuscript | — |
| 2026-11-10 | Read case-creation dates with `parse_date(format = "%d%b%Y")` in every file. | `04` used `parse_date_time()` with several candidate formats, which swapped month and day for days 01–12 (years were unaffected). This picked a different record for one person and gave 20,389 instead of 20,388. | `04` (fixed in commit 49b8ac4) | — |


## Current real-data findings

- 53,611 records; 49,839 people; 3,392 people with more than one record. Repeat records are a median of ~3.1 years apart, so they look like separate GES cases rather than duplicates.
- IPD status by record: confirmed 42.9%, neither 29.5%, discarded 27.6%. No record is both confirmed and discarded. No missing or blank values.
- No missing values in age, date, sex, region, or tramo. Nationality is missing for 17 records; comuna for 67%.
- Option B cohort: 20,388 people. Mean age at case creation rises from 25.4 (2005) to 32.2 (2023).
- Region code 0 (9.4% of Option B) and tramo X (9.2%) are similar in size, and both groups are older than the rest.
- The extract has no ethnicity, education, or occupation variables.

## Open questions

- What do region code 0 and tramo X mean, and are they the same people? (Ask the data provider; needed before modeling.)
- What does country-of-origin code 0 mean?
- Are the `cmd_*_benef` variables (region, tramo) recorded at case creation or at the date of data extraction?
- Is a broader insurance variable (`cod_prevision`) available, or only FONASA tramo?
- What reference categories will the regression models use?

## Next steps

1. Re-run `04_Aim1_Descriptives_and_Trends.Rmd` on the real data and confirm it prints the 22,471 / 20,388 check.
2. Send the open questions above to the data provider.
3. Add the four Aim 1 regression models to `04` (or a new `05`).
