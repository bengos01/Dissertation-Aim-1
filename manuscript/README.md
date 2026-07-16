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

The manuscript is connected to `references.bib`.

1. Maintain the master references in the EndNote group **Aim 1 Manuscript**.
2. When that group changes, export it again as BibTeX and replace `references.bib` in this folder.
3. Cite sources as `[@citationkey]` or use RStudio's citation insertion tool.
4. Render the manuscript to refresh the citations and reference list.
5. Add a journal `.csl` file after the target journal is selected.

## Files that belong here

- `aim1-manuscript.qmd`: official manuscript source
- `references.bib`: EndNote export for Aim 1
- `journal-style.csl`: optional journal citation style
- `reference.docx`: optional Word formatting template

Rendered Word files are working outputs and are ignored by Git by default. Do not place restricted data, copyrighted full-text articles, or confidential comments here.
