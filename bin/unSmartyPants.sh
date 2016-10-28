#!/bin/bash

# inverse SmartyPants
sed -i -e 's/[“”]/"/g' -e "s/[‘’]/'/g" -e 's/…/\.\.\./g' -e 's/–/--/g' -e 's/—/---/g' -e 's/ /\\ /g' "$@"
