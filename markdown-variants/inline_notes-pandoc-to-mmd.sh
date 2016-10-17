#!/bin/bash

# find and replace pandoc style inline footnote to mmd style inline footnote
sed 's/\^\[/\[\^/g' "$@"