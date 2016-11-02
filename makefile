SHELL := /bin/bash

markdownVariants := markdown_pandoc markdown_pandoc_extended markdown_phpextra markdown_github markdown_mmd markdown_strict

CSV := $(wildcard *.csv)

CSV2MDpandoc := $(patsubst %.csv,%-pandoc.md,$(CSV))
CSV2MDpandocExtended := $(patsubst %.csv,%-pandoc-extended.md,$(CSV))
CSV2MDphpExtra := $(patsubst %.csv,%-php-extra.md,$(CSV))
CSV2MDgithub := $(patsubst %.csv,%-github.md,$(CSV))
CSV2MDmmd := $(patsubst %.csv,%-mmd.md,$(CSV))
CSV2MDstrict := $(patsubst %.csv,%-strict.md,$(CSV))
CSV2MDmaster := $(patsubst %.csv,%-master.md,$(CSV))

MD := $(wildcard */*.md)

# building
all: $(CSV2MDpandoc) $(CSV2MDpandocExtended) $(CSV2MDphpExtra) $(CSV2MDgithub) $(CSV2MDmmd) $(CSV2MDstrict) $(CSV2MDmaster)

# cleaning generated files
clean:
	rm -f $(CSV2MDpandoc) $(CSV2MDpandocExtended) $(CSV2MDphpExtra) $(CSV2MDgithub) $(CSV2MDmmd) $(CSV2MDstrict) $(CSV2MDmaster)

# update submodule
update:
	git submodule update --recursive --remote

# Automation on */*.md, in the order from draft to finish #############################################################################################################################################

# this touches all md files expected from the csv, in case they aren't written yet.
touch:
	cut -d, -f 1 $< | tail -n +2 | sed -e 's=^=cheatsheet/=g' -e 's=$$=.md=g' | xargs touch

## Normalize white spaces:
### 1. Add 2 trailing newlines
### 2. transform non-breaking space into (explicit) space
### 3. temporarily transform markdown non-breaking space `\ ` into unicode
### 4. delete all CONSECUTIVE blank lines from file except the first; deletes all blank lines from top and end of file; allows 0 blanks at top, 0,1,2 at EOF
### 5. delete trailing whitespace (spaces, tabs) from end of each line
### 6. revert (3)
normalize:
	find . -maxdepth 2 -mindepth 2 -iname "*.md" | xargs -i -n1 -P8 bash -c 'printf "\n\n" >> "$$0" && sed -i -e "s/ / /g" -e '"'"'s/\\ / /g'"'"' -e '"'"'/./,/^$$/!d'"'"' -e '"'"'s/[ \t]*$$//'"'"' -e '"'"'s/ /\\ /g'"'"' $$0' {}

###############################################################################

# CSV to md
cheatsheet-pandoc.md: cheatsheet.csv $(MD)
	grep "markdown_pandoc" $< | cut -d, -f 1 | tail -n +2 | sed -e 's=^=cheatsheet/=g' -e 's=$$=.md=g' | xargs cat > $@
cheatsheet-pandoc-extended.md: cheatsheet.csv $(MD)
	grep "markdown_pandoc_extended" $< | cut -d, -f 1 | tail -n +2 | sed -e 's=^=cheatsheet/=g' -e 's=$$=.md=g' | xargs cat > $@
cheatsheet-php-extra.md: cheatsheet.csv $(MD)
	grep "markdown_phpextra" $< | cut -d, -f 1 | tail -n +2 | sed -e 's=^=cheatsheet/=g' -e 's=$$=.md=g' | xargs cat > $@
cheatsheet-github.md: cheatsheet.csv $(MD)
	grep "markdown_github" $< | cut -d, -f 1 | tail -n +2 | sed -e 's=^=cheatsheet/=g' -e 's=$$=.md=g' | xargs cat > $@
cheatsheet-mmd.md: cheatsheet.csv $(MD)
	grep "markdown_mmd" $< | cut -d, -f 1 | tail -n +2 | sed -e 's=^=cheatsheet/=g' -e 's=$$=.md=g' | xargs cat > $@
cheatsheet-strict.md: cheatsheet.csv $(MD)
	grep "markdown_strict" $< | cut -d, -f 1 | tail -n +2 | sed -e 's=^=cheatsheet/=g' -e 's=$$=.md=g' | xargs cat > $@

cheatsheet-master.md: cheatsheet.csv $(MD)
	cut -d, -f 1 $< | tail -n +2 | sed -e 's=^=cheatsheet/=g' -e 's=$$=.md=g' | xargs cat > $@
