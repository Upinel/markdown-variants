<script type="text/x-mathjax-config">
	MathJax.Hub.Config({
	    TeX: {
	        equationNumbers: {
	            autoNumber: "AMS"
	        },
	        extensions: ["AMScd.js"]
	    }
	});
	MathJax.Hub.Config({
	  tex2jax: {
	    inlineMath: [['$','$'], ['\\(','\\)']],
	    processEscapes: true
	  }
	});
</script>
<script type="text/javascript" src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS_CHTML-full"></script>

# Test MathJax Environments #

$$\begin{align}
\nabla \times \mathbf{E} = - \frac{\partial \mathbf{B}}{\partial t}
\end{align}$$

$$\begin{align*}
\nabla \times \mathbf{E} = - \frac{\partial \mathbf{B}}{\partial t}
\end{align*}$$

$$\begin{alignat}{2}
\nabla \times \mathbf{E} = - \frac{\partial \mathbf{B}}{\partial t}
\end{alignat}$$

$$\begin{alignat*}{2}
\nabla \times \mathbf{E} = - \frac{\partial \mathbf{B}}{\partial t}
\end{alignat*}$$

$$\begin{eqnarray}
\nabla \times \mathbf{E} = - \frac{\partial \mathbf{B}}{\partial t}
\end{eqnarray}$$

$$\begin{eqnarray*}
\nabla \times \mathbf{E} = - \frac{\partial \mathbf{B}}{\partial t}
\end{eqnarray*}$$

$$\begin{equation}
\nabla \times \mathbf{E} = - \frac{\partial \mathbf{B}}{\partial t}
\end{equation}$$

$$\begin{equation*}
\nabla \times \mathbf{E} = - \frac{\partial \mathbf{B}}{\partial t}
\end{equation*}$$

$$\begin{gather}
\nabla \times \mathbf{E} = - \frac{\partial \mathbf{B}}{\partial t}
\end{gather}$$

$$\begin{gather*}
\nabla \times \mathbf{E} = - \frac{\partial \mathbf{B}}{\partial t}
\end{gather*}$$

$$\begin{multline}
\nabla \times \mathbf{E} = - \frac{\partial \mathbf{B}}{\partial t}
\end{multline}$$

$$\begin{multline*}
\nabla \times \mathbf{E} = - \frac{\partial \mathbf{B}}{\partial t}
\end{multline*}$$

# Test TeX Macros

$$\def\sbar{\overline}$$

$$\sbar{a}$$

$$\newcommand{\dagg}[1]{#1^\dagger}$$

$$\dagg{a}$$

$$\renewcommand{\dagg}[1]{{}^\dagger#1}$$

$$\dagg{a}$$

$$\newenvironment{equationed}{:}{;}$$

$$\begin{equationed}
E=mc^2
\end{equationed}$$

$$\renewenvironment{equationed}{;}{:}$$

$$\begin{equationed}
E=mc^2
\end{equationed}$$

$$\let\trqs\sqrt$$

$$\trqs{2}$$

$$\newenvironment{multiple}{:}{;}
\newenvironment{line}{:}{;}
\newenvironment{macros}{:}{;}$$

$$\begin{multiple}
E=mc^2
\end{multiple}$$

$$\begin{line}
E=mc^2
\end{line}$$

$$\begin{macros}
E=mc^2
\end{macros}$$

$$\renewenvironment{multiple}{:}{;}
\renewenvironment{line}{:}{;}
\renewenvironment{macros}{:}{;}$$

$$\def\foo{\bar}
%testing$$