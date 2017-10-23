#!/usr/bin/env bash

# find and replace LaTeX environments and macros with extra dollar signs
sed \
	-e 'H;1h;$!d;x;' \
	-e s/'\$\$\\begin{align}'/'\\begin{align}'/g \
	-e s/'\\end{align}\$\$'/'\\end{align}'/g \
	-e s/'\$\$\\begin{align\*}'/'\\begin{align\*}'/g \
	-e s/'\\end{align\*}\$\$'/'\\end{align\*}'/g \
	-e s/'\$\$\\begin{alignat}'/'\\begin{alignat}'/g \
	-e s/'\\end{alignat}\$\$'/'\\end{alignat}'/g \
	-e s/'\$\$\\begin{alignat\*}}'/'\\begin{alignat\*}'/g \
	-e s/'\\end{alignat\*}\$\$'/'\\end{alignat\*}'/g \
	-e s/'\$\$\\begin{eqnarray}'/'\\begin{eqnarray}'/g \
	-e s/'\\end{eqnarray}\$\$'/'\\end{eqnarray}'/g \
	-e s/'\$\$\\begin{eqnarray\*}'/'\\begin{eqnarray\*}'/g \
	-e s/'\\end{eqnarray\*}\$\$'/'\\end{eqnarray\*}'/g \
	-e s/'\$\$\\begin{equation}'/'\\begin{equation}'/g \
	-e s/'\\end{equation}\$\$'/'\\end{equation}'/g \
	-e s/'\$\$\\begin{equation\*}'/'\\begin{equation\*}'/g \
	-e s/'\\end{equation\*}\$\$'/'\\end{equation\*}'/g \
	-e s/'\$\$\\begin{gather}'/'\\begin{gather}'/g \
	-e s/'\\end{gather}\$\$'/'\\end{gather}'/g \
	-e s/'\$\$\\begin{gather\*}'/'\\begin{gather\*}'/g \
	-e s/'\\end{gather\*}\$\$'/'\\end{gather\*}'/g \
	-e s/'\$\$\\begin{multline}'/'\\begin{multline}'/g \
	-e s/'\\end{multline}\$\$'/'\\end{multline}'/g \
	-e s/'\$\$\\begin{multline\*}'/'\\begin{multline\*}'/g \
	-e s/'\\end{multline\*}\$\$'/'\\end{multline\*}'/g \
	-e 's/\$\$\\def\([^$]*\)\$\$/\\def\1/g' \
	-e 's/\$\$\\newcommand\([^$]*\)\$\$/\\newcommand\1/g' \
	-e 's/\$\$\\renewcommand\([^$]*\)\$\$/\\renewcommand\1/g' \
	-e 's/\$\$\\newenvironment\([^$]*\)\$\$/\\newenvironment\1/g' \
	-e 's/\$\$\\renewenvironment\([^$]*\)\$\$/\\renewenvironment\1/g' \
	-e 's/\$\$\\let\([^$]*\)\$\$/\\let\1/g' \
	"$@"