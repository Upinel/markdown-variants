#!/usr/bin/env bash

# find and replace tex_math_double_backslash by tex_math_dollars
# note that the dollar sign delimiters are more strict that no spaces/newline between them and the math are allowed
sed \
	-e 'H;1h;$!d;x;' \
	-e s/'\\\\('[[:space:]]*/'$'/g \
	-e s/[[:space:]]*'\\\\)'/'$'/g \
	-e s/'\\\\\['[[:space:]]*/'$$'/g \
	-e s/[[:space:]]*'\\\\\]'/'$$'/g \
	"$@"