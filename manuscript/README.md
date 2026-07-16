# Manuscript workspace

The official Aim 1 manuscript source is `aim1-manuscript.qmd`.

## How to work

1. Open the GitHub project in RStudio.
2. Open `manuscript/aim1-manuscript.qmd`.
3. Write or revise the manuscript there.
4. Click **Render** to create a Word copy for reading or sharing.
5. Commit and push meaningful changes to GitHub.

Use Notion for workflow, decisions, unresolved questions, and meeting notes. Do not maintain a second full manuscript draft in Notion or Word.

## Citations

Keep managing references in EndNote. When you begin adding citations:

1. Export only the references needed for Aim 1 as a BibTeX file named `references.bib`.
2. Save it in this folder.
3. Add `bibliography: references.bib` to the Quarto YAML.
4. Cite sources in the manuscript as `[@citationkey]`.
5. Add a journal `.csl` file later when a target journal is selected.

## Files that belong here

- `aim1-manuscript.qmd`: official manuscript source
- `references.bib`: EndNote export for Aim 1
- `journal-style.csl`: optional journal citation style
- `reference.docx`: optional Word formatting template

Rendered Word files are working outputs and are ignored by Git by default. Do not place restricted data, copyrighted full-text articles, or confidential comments here.
