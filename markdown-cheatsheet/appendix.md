# MMD "Viariants" #

## Editorial ##

Bug:

- Within Code delimiter (```), `<>` are not escaped. i.e. HTML codes within code block will still be HTML codes, not plain text.

Does not support:

- MMD metadata block (e.g. title is ignored)
- superscript & subscript (e.g. if MultiMarkdown is not selected, there's an option to select superscript. But once MMD is enabled, MMD styled superscript and subscript is not supported)
- Abbreviations
- Inline footnote
- ``this kind of smart quote'' will not resulted in “this”
- Code class (e.g. "```tex" should becomes `<code class="tex">...`)
- Math class (it doesn't have `<span class="math">...` enclosing the math)
- 

## Drafts ##

HTML rendered by Drafts 4 (using the default markdown engine claimed to be MultiMarkdown) comparing to MultiMarkdown's reference rendering:

- in the newest MMD, metadata related to LaTeX are suppressed
- auto Cross-References does not work: `[heading][]` syntax is not supported.
- all the headings do not have auto-id: `# heading1` should have an id of `heading1`
- CriticMarkup is not supported
- the rendering of the tables has some differences in the code, probably because of an older version of MMD?
- if I put ``{{TOC}}`` (one ` in the markdown source), Drafts would incorrectly rendered it as `<code>TOC</code>`
- Drafts put `<br/>` into Math environments, which I believe is a mistake.