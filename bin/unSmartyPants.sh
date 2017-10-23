#!/usr/bin/env bash

# inverse SmartyPants
sed -i -e 's/[“”]/"/g' -e "s/[‘’]/'/g" -e 's/…/\.\.\./g' -e 's/–/--/g' -e 's/—/---/g' -e 's/ /\\ /g' "$@"
