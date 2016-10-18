#!/bin/bash

# find smart quotes and unsmart them
sed -i \
    -e 's/α/\\alpha /g' \
    -e 's/β/\\beta /g' \
    -e 's/ψ/\\psi /g' \
    -e 's/δ/\\delta /g' \
    -e 's/ε/\\epsilon /g' \
    -e 's/φ/\\phi /g' \
    -e 's/γ/\\gamma /g' \
    -e 's/η/\\eta /g' \
    -e 's/ι/\\iota /g' \
    -e 's/ξ/\\xi /g' \
    -e 's/κ/\\kappa /g' \
    -e 's/λ/\\lambda /g' \
    -e 's/μ/\\mu /g' \
    -e 's/ν/\\nu /g' \
    -e 's/π/\\pi /g' \
    -e 's/ρ/\\rho /g' \
    -e 's/σ/\\sigma /g' \
    -e 's/τ/\\tau /g' \
    -e 's/θ/\\theta /g' \
    -e 's/ω/\\omega /g' \
    -e 's/ς/\\varsigma /g' \
    -e 's/χ/\\chi /g' \
    -e 's/υ/\\upsilon /g' \
    -e 's/ζ/\\zeta /g' \
    -e 's/Ψ/\\Psi /g' \
    -e 's/Δ/\\Delta /g' \
    -e 's/Φ/\\Phi /g' \
    -e 's/Γ/\\Gamma /g' \
    -e 's/Ξ/\\Xi /g' \
    -e 's/Λ/\\Lambda /g' \
    -e 's/Π/\\Pi /g' \
    -e 's/Σ/\\Sigma /g' \
    -e 's/Θ/\\Theta /g' \
    -e 's/Ω/\\Omega /g' \
    -e 's/Υ/\\Upsilon /g' \
"$@"
