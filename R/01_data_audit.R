# Aim 1: first-pass data audit
#
# Run only after confirming the authorized local data path.
# Do not commit data, record-level output, identifiers, or small-cell results.

# 1. Import data from the approved secure location -------------------------

# data_raw <- readRDS("AUTHORIZED_LOCAL_PATH/file.rds")


# 2. Inspect structure -----------------------------------------------------

# dim(data_raw)
# names(data_raw)
# str(data_raw)


# 3. Check identifiers and duplicate records ------------------------------

# Confirm the individual identifier before running record-level checks.


# 4. Validate dates and study years ---------------------------------------

# Confirm date formats, precision, plausible ranges, and coverage of 2005–2023.


# 5. Review diagnoses and cohort construction -----------------------------

# Confirm diagnosis codes, first-episode definition, and any washout period.


# 6. Review key variables and missingness ---------------------------------

# Age at diagnosis
# Sex/gender
# Ethnicity
# Education and/or occupation
# Migration status
# Geographic region


# 7. Check annual cohort counts -------------------------------------------

# Suppress or avoid committing small-cell results.


# 8. Record decisions ------------------------------------------------------

# Summarize non-sensitive decisions in documentation/analysis-decisions.md.
