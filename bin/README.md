These are some scripts to convert between variants of syntax of markdown.

See descriptions in the comment of each scripts.

# Markdown-Mathjax

The `markdown-mathjax.sh` script is used to deal with the differences between how MultiMarkdown and pandoc handles Math, and also force pandoc to leave, *e.g.*, `\newcommand` alone for MathJax. The following alternative syntax are defined to work within markdown (and good for HTML output), and the preprocessor with transform it in a correct LaTeX code (basically removing the extra `$` sign defined) for LaTeX output.

Environments like `align` or `equation` that are supposed to not be within `$$...$$`, should be used with an extra pair of `$$`, like this:

```latex
$$\begin{equation}
...
\end{equation}$$
```

LaTeX macros like `\def`, `\newcommand` should have an extra pair of `$$` as well, like this:

```latex
$$\newcommand...
...$$
```

It can spans multiline, but cannot contain `$` within (due to the limitation of the preprocessor, which is just `sed`, that "non-greedy" is not available).
