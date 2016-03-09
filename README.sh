#!/bin/bash
cd ~/GitHub/markdown-cheatsheet
multimarkdown README.md > README-mmd.html
pandoc -f markdown_strict -s -o README-md.html README.md
pandoc --mathjax --toc -s -o README-pandoc.html README.md
pandoc --toc -s -o README-pandoc.pdf README.md

multimarkdown -t latex README.md > temp.tex
latexmk -pdf temp.tex
mv temp.pdf README-mmd.pdf
find . -iname 'temp.*' -exec mv '{}' ~/.Trash/ \;