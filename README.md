---
HTML Header:	<script type="text/x-mathjax-config">MathJax.Ajax.config.path.Contrib="https://cdn.mathjax.org/mathjax/contrib",MathJax.Hub.Register.StartupHook("TeX Jax Ready",function(){MathJax.Hub.Insert(MathJax.InputJax.TeX.Definitions.macros,{cancel:["Extension","cancel"],bcancel:["Extension","cancel"],xcancel:["Extension","cancel"],cancelto:["Extension","cancel"]})}),MathJax.Hub.Config({TeX:{equationNumbers:{autoNumber:"AMS"},extensions:["[Contrib]/physics/physics.js","[Contrib]/siunitx/siunitx.js"]}});</script><script type="text/javascript" src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS_CHTML-full"></script>
CSS:	https://ickc.github.io/multimarkdown-latex-css/combined-css/multimarkdown-latex.css
HTML Header Level:	1
LaTeX Header Level:	2
LaTeX Input:	mmd-article-header
LaTeX input:	mmd-natbib-plain
LaTeX Input:	mmd-load-physics-related
LaTeX Input:	mmd-load-tables-related
LaTeX Input:	mmd-load-pdfpages
LaTeX Input:	mmd-load-headings
thmd:	chapter
LaTeX Input:	mmd-load-amsthm
Title:	Kolen's MarkDown Notes  
Subtitle:	Inlcuding MarkDown, MultiMarkdown, and LaTeX Math Syntax  
Keywords:	MarkDown, MultiMarkDown, LaTeX  
Revision:	0.1
Language:	English
Author:	Kolen Cheung
Email:	khcheung@berkeley.edu
Affiliation:	University of California, Berkeley
Copyright:	2016 Kolen Cheung  
 	All Rights Reserved.
LaTeX Mode:	memoir
LaTeX Input:	mmd-article-begin-doc
tocd:	5
secd:	5
LaTeX Input:	mmd-load-toc-setcounter
LaTeX Input:	mmd-load-toc
LaTeX Footer:	mmd-memoir-footer
---
<!-- \begin{comment} -->
{{TOC}}
<!-- \end{comment} -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.1.0/styles/default.min.css"><script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.1.0/highlight.min.js"></script><script>hljs.initHighlightingOnLoad();</script>

# Introduction #

[Examples][] shows explicit examples for different syntaxes. [Others][] show the syntaxes that can't be shown explicitly.

## Organization ##

- Header levels (except the last one): features in groups
- Last header levels: different syntaxes
- TaskPaper-styled tags to indicate in what favor of Markdown such syntax is supported

# Examples #

## Header ##

See [Emphasis][] and [Others][] to see alternative Setext-style header styles

### Header3 ###

#### Header4

##### Header5 ########################

###### Header6 ######

Emphasis
--------

- *italic* or _italic_ @markdown
- **bold** or __bold__ @markdown
- ***bold italic*** or ___bold italic___ @markdown
- ~~strikethrough~~ 
- _Underline_
- ==Highlight==

## Links

### Direct Links

<http://google.com>

### In Line Links

[Google](http://google.com)

### Reference Links

[Search][Google]
[Google]: http://google.com

### Cross Reference

#### MultiMarkDown [userdefinedreference] ####

- Auto-reference: [Cross Reference][]
- User defined reference: [userdefinedreference][]

#### MacDown Cross Reference
Use ToC to find the link ID
[Link to Math](#toc_47)

### Link Attribute ###

#### MultiMarkdown ####

A [link][] with attributes.

[link]:  https://www.wikipedia.org/portal/wikipedia.org/assets/img/Wikipedia-logo-v2@2x.png "Title" class=external
         style="border: solid black 1px;"

## Image Links

### Direct Image Link

![Alt Text](https://www.wikipedia.org/portal/wikipedia.org/assets/img/Wikipedia-logo-v2@2x.png "Optional Title")

### Reference Images

![Alt Text][id]

[id]: https://www.wikipedia.org/portal/wikipedia.org/assets/img/Wikipedia-logo-v2@2x.png "Optional Title"

### Block Level or Not ###

![***Block*** **Level**](https://www.wikipedia.org/portal/wikipedia.org/assets/img/Wikipedia-logo-v2@2x.png "Optional Title")

Not a block level: ![Alt Text](https://www.wikipedia.org/portal/wikipedia.org/assets/img/Wikipedia-logo-v2@2x.png "Optional Title")

Block level: HTML `figure` element in MultiMarkdown

### Image Links by Nesting Image and Link ###

[![Image Link](https://www.wikipedia.org/portal/wikipedia.org/assets/img/Wikipedia-logo-v2@2x.png)](https://www.wikipedia.org/)

### MultiMarkdown Only ###

![Wiki logo][wikipedia]

[wikipedia]: https://www.wikipedia.org/portal/wikipedia.org/assets/img/Wikipedia-logo-v2@2x.png "Title of the Image" width=40px height=40px

## Lists

### Ordered Lists
1. test
3. test
2. test

### Unordered Lists
- test
* test
- test

### Nested Lists
*   test
    * test
*   test
    1.  test
    3.  test
        * test
	        1. test
	        1. test
    2. test
*   test

## Blockquotes

> #### Test
> 
> test
> 
> > test

> > test
> 
> * test

> * test

## Code

`testing`

### Fenced Code Blocks

#### Method 1

	test
	test
		test
		# test

#### Method 2

``` Optional language ID here
test
test
	test
	# test
```

#### Method 3 (MacDown Only)
~~~ Optional language ID here
test
test
	test
	# test
~~~

## Horizontal Rules (Asterisk also works)

Test1

-

Test2

--

Test3

---

Test4

----

Test5

-----

test6

------

## Break
No break
like this

Soft break  
like this

Hard break

like this

## Tables

### MarkDown

| 1 | 2 | 3 |
|:--- | :---: | ---:|
|**test** | _test_ | test|

### MultiMarkDown

[Table Caption]
|            |        Grouping           ||
| Left align | Right align | Center align |
|:-----------|------------:|:------------:|
| This       |        This |     This     |
| column     |      column |    column    |
| will       |        will |     will     |
| be         |          be |      be      |
| left       |       right |    center    |
| aligned    |     aligned |   aligned    |  
| And a big grouping is like this	||| 


## Definition Lists

### PHP Markdown Extra ###

Works in MultiMarkdown

Physics
: The Fundamental of Science
: Describe the Nature
: Make Prediction

## Glossaries ##

### MultiMarkdown ###

A special kind of footnote [^glossaryfootnote].

[^glossaryfootnote]: glossary: term (optional sort key)
    The actual definition belongs on a new line, and can continue on
    just as other footnotes.

See [Glossary---MultiMarkdown Documentation](http://fletcher.github.io/MultiMarkdown-5/glossary.html).

## Superscript & Subscript

### MultiMarkdown ###


- x^2
- d~o
- x^a+b^
- x~y,z~

## Smarty Pants ##

- "Example 1"
- 'Example 2'
- ``Example 3''
- en--dash
- em---dash
- ellipsis...

## Abbreviations (PHP Markdown Extra) ##

Works in MultiMarkdown

*[HTML]: HyperText Markup Language
*[W3C]:  World Wide Web Consortium

Testing abbreviations: HTML, W3C (mouseover it to see)

## Math (by MathJax) ##

Use an extra `\` to escape from MarkDown
For MultiMarkDown, add
```
HTML header:    <script type="text/javascript"
    src="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML">
    </script>
```


### Inline Math
testing \\( 1 + 1 \\) testing

### Block Math
\\[
    A^T_S = B
\\]

### Other Examples

\\[
x = {-b \pm \sqrt{b^2-4ac} \over 2a}
\\]

\\[
\begin{aligned}
\dot{x} & = \sigma(y-x) \\\
\dot{y} & = \rho x - y - xz \\\
\dot{z} & = -\beta z + xy
\end{aligned}
\\]

\\[
\left( \sum_{k=1}^n a_k b_k \right)^2 \leq \left( \sum_{k=1}^n a_k^2 \right) \left( \sum_{k=1}^n b_k^2 \right)
\\]

\\[
\mathbf{V}_1 \times \mathbf{V}_2 =  \begin{vmatrix}
\mathbf{i} & \mathbf{j} & \mathbf{k} \\\
\frac{\partial X}{\partial u} &  \frac{\partial Y}{\partial u} & 0 \\\
\frac{\partial X}{\partial v} &  \frac{\partial Y}{\partial v} & 0
\end{vmatrix}
\\]

\\[
P(E) = {n \choose k} p^k (1-p)^{n-k}
\\]

\\[
\frac{1}{\Bigl(\sqrt{\phi \sqrt{5}}-\phi\Bigr) e^{\frac25 \pi}} =
1+\frac{e^{-2\pi}} {1+\frac{e^{-4\pi}} {1+\frac{e^{-6\pi}}
{1+\frac{e^{-8\pi}} {1+\ldots} } } }
\\]

\\[
\begin{aligned}
\nabla \times \vec{\mathbf{B}} -\, \frac1c\, \frac{\partial\vec{\mathbf{E}}}{\partial t} & = \frac{4\pi}{c}\vec{\mathbf{j}} \\\
\nabla \cdot \vec{\mathbf{E}} & = 4 \pi \rho \\\
\nabla \times \vec{\mathbf{E}}\, +\, \frac1c\, \frac{\partial\vec{\mathbf{B}}}{\partial t} & = \vec{\mathbf{0}} \\\
\nabla \cdot \vec{\mathbf{B}} & = 0 \end{aligned}
\\]

\\[
1 +  \frac{q^2}{(1-q)}+\frac{q^6}{(1-q)(1-q^2)}+\cdots =
\prod_{j=0}^{\infty}\frac{1}{(1-q^{5j+2})(1-q^{5j+3})},
\quad\quad \text{for $|q|<1$}.
\\]

\\[αβδγε\\]
## Incompatibility
- Superscript and
	- LaTeX
	- Footnotes
- Quote and Smartypants

## MultiMarkDown & LaTeX Specific

- Add to `mmd-article-header.tex`:
	- `\usepackage{amssymb}` for `\mathbb`
	- `\usepackage{graphicx}`
- `<!--  This is raw \LaTeX \[ {e}^{i\pi }+1=0 \] -->` to include RAW LaTeX command (doesn't work for `\usepackage` though since it has to be in the preamble
- The Maximum nesting level of LaTeX is 4. The quick solution is to mix itemize and enumerate alternatively to go beyond this


## Footnotes ##

### Reference ###


Footnotes[^1]    



[^1]: This is a footnote

### Inline ###

#### MultiMarkdown ####

Footnotes [^This is another footnote]

## Citations ##

### MultiMarkDown ###

And following is the description of the reference to be used in the bibliography.

This is a statement that should be attributed to its source [p. 23][#Doe:2006].

[#Doe:2006]: John Doe. *Some Big Fancy Book*.  Vanity Press, 2006.    

[Not cited][#notcited]

[#notcited]:  John Doe. *Another Big Fancy Book*.  Vanity Press, 2016.    

See citation styles in detail at [Citations---MultiMarkdown Documentation](http://fletcher.github.io/MultiMarkdown-5/citations.html).

## CriticMarkup ##

MultiMarkdown Only

- Deletions from the original text: This is {--is --}a test.
- Additions: This {++is ++}a test.
- Substitutions: This {~~isn't~>is~~} a test.
- Highlighting: This is a {==test==}.
- Comments: This is a test{>>What is it a test of?<<}.

See [CriticMarkup---MultiMarkdown Documentation](http://fletcher.github.io/MultiMarkdown-5/criticmarkup.html).

## RAW ##

### HTML ###

#### MultiMarkdown ####

<div>This is *not* MultiMarkdown</div>

<div markdown=1>This *is* MultiMarkdown</div>

See more at [](http://fletcher.github.io/MultiMarkdown-5/raw.html).

### LaTeX ###

#### MultiMarkdown ####

<!-- \newcommand\rawlatex{} -->

Others
======

## Metadata ##

### MultiMarkdown ###

```md
Title:    A Sample MultiMarkdown Document  
Author:   Fletcher T. Penney  
Date:     February 9, 2011  
Comment:  This is a comment intended to demonstrate  
          metadata that spans multiple lines, yet  
          is treated as a single value.  
CSS:      http://example.com/standard.css
```

See more at [Metadata---MultiMarkdown Documentation](http://fletcher.github.io/MultiMarkdown-5/metadata.html).

## File Transclusion ##

### MultiMarkdown ###


[](http://fletcher.github.io/MultiMarkdown-5/transclusion.html).

## TOC ##

### MultiMarkdown ###

`{{TOC}}`, see beginning. It preprocess the headings and generate a ToC on its own, and doesn't give instruction for LaTeX to generate one. A hack is like this: