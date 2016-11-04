#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
printf "%s\n" "" "# markdown-variants PATH" "export PATH=\"$DIR/bin:\$PATH\"" >> $HOME/.bash_profile
