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

# Normalize white spaces:
normalize:
	find */*.md -exec sed -i 's/[ \t]*$//' '{}' \; # delete trailing whitespace (spaces, tabs) from end of each line
	find */*.md -exec sed -i '/./,/^$/!d' '{}' \; # delete all CONSECUTIVE blank lines from file except the first; deletes all blank lines from top and end of file; allows 0 blanks at top, 1 at EOF
	find */*.md -exec sed -i '1i\'$'\n' '{}' \; # add leading new line

# this touches all md files expected from the csv, in case they aren't written yet.
touch: cheatsheet.csv
	STRING=$$(cut -d, -f 1 $< | tail -n +2 | sed -e 's=^=cheatsheet/=g' -e 's=$$=.md=g'); touch $$STRING

###############################################################################

# CSV to md
cheatsheet-pandoc.md: cheatsheet.csv $(MD)
	STRING=$$(grep "markdown_pandoc" $< | cut -d, -f 1 | tail -n +2 | sed -e 's=^=cheatsheet/=g' -e 's=$$=.md=g'); cat $$STRING > $@
cheatsheet-pandoc-extended.md: cheatsheet.csv $(MD)
	STRING=$$(grep "markdown_pandoc_extended" $< | cut -d, -f 1 | tail -n +2 | sed -e 's=^=cheatsheet/=g' -e 's=$$=.md=g'); cat $$STRING > $@
cheatsheet-php-extra.md: cheatsheet.csv $(MD)
	STRING=$$(grep "markdown_phpextra" $< | cut -d, -f 1 | tail -n +2 | sed -e 's=^=cheatsheet/=g' -e 's=$$=.md=g'); cat $$STRING > $@
cheatsheet-github.md: cheatsheet.csv $(MD)
	STRING=$$(grep "markdown_github" $< | cut -d, -f 1 | tail -n +2 | sed -e 's=^=cheatsheet/=g' -e 's=$$=.md=g'); cat $$STRING > $@
cheatsheet-mmd.md: cheatsheet.csv $(MD)
	STRING=$$(grep "markdown_mmd" $< | cut -d, -f 1 | tail -n +2 | sed -e 's=^=cheatsheet/=g' -e 's=$$=.md=g'); cat $$STRING > $@
cheatsheet-strict.md: cheatsheet.csv $(MD)
	STRING=$$(grep "markdown_strict" $< | cut -d, -f 1 | tail -n +2 | sed -e 's=^=cheatsheet/=g' -e 's=$$=.md=g'); cat $$STRING > $@

cheatsheet-master.md: cheatsheet.csv $(MD)
	STRING=$$(cut -d, -f 1 $< | tail -n +2 | sed -e 's=^=cheatsheet/=g' -e 's=$$=.md=g'); cat $$STRING > $@
