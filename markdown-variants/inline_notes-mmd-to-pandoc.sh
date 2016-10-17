#!/bin/bash

# find and replace mmd style inline footnote to pandoc style inline footnote
sed \
	-e 's/\[\^/\^\[/g' \
	-e 's/\^\[\([^[:space:]]*\)\]/\[\^\1\]/g' \
	"$@"