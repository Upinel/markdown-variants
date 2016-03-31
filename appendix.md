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