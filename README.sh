#!/bin/bash
cd ~/GitHub/markdown-cheatsheet
multimarkdown README.md > README-mmd.html
pandoc --mathjax -s -o README-pandoc.html README.md
pandoc --mathjax -s -f markdown_strict -o README-md.html README.md
pandoc --mathjax -s -f commonmark -o README-commonmark.html README.md
pandoc --mathjax -s -f markdown_github -o README-gfm.html README.md