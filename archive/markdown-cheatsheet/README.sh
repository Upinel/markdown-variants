#!/bin/bash
cd "$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# MMD to HTML
multimarkdown --accept --reject README.md > README-mmd.html

# Pure Markdown to HTML (by pandoc)
pandoc -f markdown_strict -s -o README-md.html README.md

# pandoc markdown to XHTML
pandoc -f markdown+abbreviations+autolink_bare_uris+markdown_attribute+mmd_header_identifiers+mmd_link_attributes+mmd_title_block+tex_math_double_backslash -S --base-header-level=1 --toc --toc-depth=6 -N --normalize -s --mathjax -t html -o README-pandoc-XHTML.html README.md

# pandoc markdown to HTML5
pandoc -f markdown+abbreviations+autolink_bare_uris+markdown_attribute+mmd_header_identifiers+mmd_link_attributes+mmd_title_block+tex_math_double_backslash -S --base-header-level=1 --toc --toc-depth=6 -N --normalize -s --mathjax -t html5 -o README-pandoc-HTML5.html README.md

# pandoc markdown to LaTeX to PDF
pandoc -f markdown+abbreviations+autolink_bare_uris+markdown_attribute+mmd_header_identifiers+mmd_link_attributes+mmd_title_block+tex_math_double_backslash -S --base-header-level=1 --toc --toc-depth=6 -N --normalize -s --latex-engine=pdflatex -V linkcolorblue -V citecolor=blue -V urlcolor=blue -V toccolor=blue -o README-pandoc.tex README.md
pandoc -f markdown+abbreviations+autolink_bare_uris+markdown_attribute+mmd_header_identifiers+mmd_link_attributes+mmd_title_block+tex_math_double_backslash -S --base-header-level=1 --toc --toc-depth=6 -N --normalize -s --latex-engine=pdflatex -V linkcolorblue -V citecolor=blue -V urlcolor=blue -V toccolor=blue -o README-pandoc.pdf README.md

# MultiMarkdown to LaTeX to PDF
multimarkdown --accept --reject -t latex README.md > temp.tex
latexmk -pdf temp.tex
mv temp.tex README-mmd.tex
mv temp.pdf README-mmd.pdf
find . -iname 'temp.*' -exec mv '{}' ~/.Trash/ \;