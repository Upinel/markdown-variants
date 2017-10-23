#!/usr/bin/env bash

# find bare uris and enclose it by <>
sed \
	-e 's/ http\([^][:space:]]*\)/ \<http\1\>/g' \
	"$@"