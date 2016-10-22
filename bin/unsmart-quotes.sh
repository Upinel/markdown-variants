#!/bin/bash

# find smart quotes and unsmart them
sed -i -e 's/[“”]/"/g' -e "s/[‘’]/'/g" "$@"
