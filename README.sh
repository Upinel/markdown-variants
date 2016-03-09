#!/bin/bash
cd ~/GitHub/markdown-cheatsheet
multimarkdown README.md > README-mmd.html
pandoc -f markdown_strict -s -o README-md.html README.md
pandoc -f markdown+mmd_header_identifiers+abbreviations+autolink_bare_uris+mmd_link_attributes+markdown_attribute+mmd_title_block+tex_math_double_backslash -S --base-header-level=1 --toc --toc-depth=6 -N --normalize -s --mathjax -o README-pandoc.html README.md
pandoc -f markdown+mmd_header_identifiers+abbreviations+autolink_bare_uris+mmd_link_attributes+markdown_attribute+mmd_title_block+tex_math_double_backslash -S --base-header-level=1 --toc --toc-depth=6 -N --normalize -s --latex-engine=pdflatex -V linkcolorblue -V citecolor=blue -V urlcolor=blue -V toccolor=blue -o README-pandoc.pdf README.md

multimarkdown -t latex README.md > temp.tex
latexmk -pdf temp.tex
mv temp.pdf README-mmd.pdf
find . -iname 'temp.*' -exec mv '{}' ~/.Trash/ \;