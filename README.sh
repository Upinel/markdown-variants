#!/bin/bash
cd ~/GitHub/markdown-cheatsheet
multimarkdown README.md > README-mmd.html
pandoc --mathjax --toc -s -o README-pandoc.html README.md
pandoc --mathjax -s -f markdown_strict -o README-md.html README.md