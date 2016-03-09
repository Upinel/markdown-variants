#!/bin/bash
cd ~/GitHub/markdown-cheatsheet
multimarkdown README.md > README-mmd.html
pandoc -f markdown_strict -s -o README-md.html README.md
pandoc -f markdown+mmd_header_identifiers+abbreviations+autolink_bare_uris+mmd_link_attributes+markdown_attribute+mmd_title_block+tex_math_double_backslash --smart --toc -s --mathjax -o README-pandoc.html README.md
pandoc -f markdown+mmd_header_identifiers+abbreviations+autolink_bare_uris+mmd_link_attributes+markdown_attribute+mmd_title_block+tex_math_double_backslash --smart --toc -s -o README-pandoc.pdf README.md

multimarkdown -t latex README.md > temp.tex
latexmk -pdf temp.tex
mv temp.pdf README-mmd.pdf
find . -iname 'temp.*' -exec mv '{}' ~/.Trash/ \;