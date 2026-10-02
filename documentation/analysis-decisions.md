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

## Current real-data findings relevant to pending decisions

- The first-pass descriptive/QC workflow has been run on the restricted real registry data.
- The real extract contains 53,611 records and 49,839 unique individuals.
- 3,392 individuals have more than one record, so a repeated-record rule must be established before finalizing the Aim 1 cohort.
- The current extract includes `cmd_carga_tramo_benef` (FONASA beneficiary tramo); availability of a broader insurance variable still needs confirmation.
- Region code 0 and country-of-origin code 0 remain unresolved and should remain flagged rather than automatically recoded.

## Open decisions

- What do repeated records for the same `id_persona` represent, and what record-level rule should be used for Aim 1?
- What is the final record-level operational definition of eligible FEP/NAPD using the available confirmation/discard information?
- What does region code 0 represent in the real registry?
- What does country-of-origin code 0 represent in the real registry?
- Is the broader insurance variable (`cod_prevision`) available for Aim 1, or is FONASA tramo the available insurance measure?
- Is Indigenous ethnicity available in the final analytic data, and how is it coded?
- What missing-data strategy will be used in the final descriptive and regression analyses?
- What factor/reference-category coding will be used for the final regression models?

## Next decision point

Review the real-data output from `Duplicates_Review.Rmd`. Use those results together with clarification of the FEP/NAPD operational definition to finalize `Aim1_Analytic_Sample.Rmd`. Once those rules are established, reproduce them in `Aim1_analysis.Rmd` before proceeding to the final descriptive analyses and regression models.
