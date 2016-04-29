HTML rendered by Drafts 4 (using the default markdown engine claimed to be MultiMarkdown) comparing to MultiMarkdown's reference rendering:

- in the newest MMD, metadata related to LaTeX are suppressed
- auto Cross-References does not work: `[heading][]` syntax is not supported.
- all the headings do not have auto-id: `# heading1` should have an id of `heading1`
- CriticMarkup is not supported
- the rendering of the tables has some differences in the code, probably because of an older version of MMD?
- if I put ``{{TOC}}`` (one ` in the markdown source), Drafts would incorrectly rendered it as `<code>TOC</code>`
- Drafts put `<br/>` into Math environments, which I believe is a mistake.

