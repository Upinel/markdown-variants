#!/bin/bash
# uconv: Normalize Unicode to NFD
# sed
## 18. transliteration of unicode Greek
## 19. degree symbols
## 20. probably omicron means 0 in subscript
## 21. italic l
## 22. perp
## 23. times
## 24. \gg \ll
## 25. lower and upper scripts
## 26. remove emphasis enclosing dollar sign math
## 27. Emphasis/quote to Math
## 28-33. move 0-9.+/=- outside math into math, 6 times
## 34. merging consecutive dollar sign
## 35. compress repeated spaces
uconv -f utf-8 -t utf-8 -x nfd "$@" | sed\
	-e 's/α/ \$\\alpha\$ /g' -e 's/β/ \$\\beta\$ /g' -e 's/ψ/ \$\\psi\$ /g' -e 's/δ/ \$\\delta\$ /g' -e 's/ε/ \$\\epsilon\$ /g' -e 's/φ/ \$\\phi\$ /g' -e 's/γ/ \$\\gamma\$ /g' -e 's/η/ \$\\eta\$ /g' -e 's/ι/ \$\\iota\$ /g' -e 's/ξ/ \$\\xi\$ /g' -e 's/κ/ \$\\kappa\$ /g' -e 's/λ/ \$\\lambda\$ /g' -e 's/[μµ]/ \$\\mu\$ /g' -e 's/ν/ \$\\nu\$ /g' -e 's/π/ \$\\pi\$ /g' -e 's/ρ/ \$\\rho\$ /g' -e 's/σ/ \$\\sigma\$ /g' -e 's/τ/ \$\\tau\$ /g' -e 's/θ/ \$\\theta\$ /g' -e 's/ω/ \$\\omega\$ /g' -e 's/ς/ \$\\varsigma\$ /g' -e 's/χ/ \$\\chi\$ /g' -e 's/υ/ \$\\upsilon\$ /g' -e 's/ζ/ \$\\zeta\$ /g' -e 's/Ψ/ \$\\Psi\$ /g' -e 's/Δ/ \$\\Delta\$ /g' -e 's/Φ/ \$\\Phi\$ /g' -e 's/Γ/ \$\\Gamma\$ /g' -e 's/Ξ/ \$\\Xi\$ /g' -e 's/Λ/ \$\\Lambda\$ /g' -e 's/Π/ \$\\Pi\$ /g' -e 's/Σ/ \$\\Sigma\$ /g' -e 's/Θ/ \$\\Theta\$ /g' -e 's/Ω/ \$\\Omega\$ /g' -e 's/Υ/ \$\\Upsilon\$ /g'\
	-e 's/\([0-9.,]*\)[°º˚]/ \$\\SI{\1}{\\degree}\$ /g'\
	-e 's/ο/ \$_0\$ /g'\
	-e 's// \$l\$ /g'\
	-e 's/⊥/ \$\\perp\$ /g'\
	-e 's/×/ \$\\times\$ /g'\
	-e 's/»/ \$\\gg\$ /g' -e 's/«/ \$\\ll\$ /g'\
	-e 's/\([^ ]*\)~\([^ ~]\+\)~/ \$\1_{\2}\$ /g' -e 's/\([^ ]*\)\^\([^ ^]\+\)\^/ \$\1^{\2}\$ /g'\
	-e 's/\$[ ]*[*]\+/\$/g' -e 's/[*]\+[ ]*\$/\$/g'\
	-e 's/[*"]\+\([^ *"]\)\([[:upper:]]\)[*"]\+/\$\1\2\$/g' -e 's/[*"]\+\([^ *"]\)\([^ *"]\)[*"]\+/\$\1_\2\$/g' -e 's/[*"]\+\([^ *"]\)[*"]\+/\$\1\$/g'\
	-e 's/\([0-9.+/=-]\+\)[ ]\+\$\([^$]\+\)\$/\$\1\2\$/g' -e 's/\$\([^$]\+\)\$[ ]\+\([0-9.+/=-]\+\)/\$\1\2\$/g'\
	-e 's/\([0-9.+/=-]\+\)[ ]\+\$\([^$]\+\)\$/\$\1\2\$/g' -e 's/\$\([^$]\+\)\$[ ]\+\([0-9.+/=-]\+\)/\$\1\2\$/g'\
	-e 's/\([0-9.+/=-]\+\)[ ]\+\$\([^$]\+\)\$/\$\1\2\$/g' -e 's/\$\([^$]\+\)\$[ ]\+\([0-9.+/=-]\+\)/\$\1\2\$/g'\
	-e 's/\([0-9.+/=-]\+\)[ ]\+\$\([^$]\+\)\$/\$\1\2\$/g' -e 's/\$\([^$]\+\)\$[ ]\+\([0-9.+/=-]\+\)/\$\1\2\$/g'\
	-e 's/\([0-9.+/=-]\+\)[ ]\+\$\([^$]\+\)\$/\$\1\2\$/g' -e 's/\$\([^$]\+\)\$[ ]\+\([0-9.+/=-]\+\)/\$\1\2\$/g'\
	-e 's/\([0-9.+/=-]\+\)[ ]\+\$\([^$]\+\)\$/\$\1\2\$/g' -e 's/\$\([^$]\+\)\$[ ]\+\([0-9.+/=-]\+\)/\$\1\2\$/g'\
	-e 's/\$[ ]\+\$//g'\
	-e 's/\$[ ]\+/\$ /g' -e 's/[ ]\+\$/ \$/g'\
	> "$@.temp"

mv "$@.temp" "$@"
