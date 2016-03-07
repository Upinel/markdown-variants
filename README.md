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

- Header levels (except possibly the last header level): features in groups
- Last header level or a list: different syntaxes
- TaskPaper-styled tags to indicate in what favor of Markdown such syntax is supported
	- @markdown: supported by original markdown, hence understood to be supported by all variants of markdown
	- @gfm: GitHub-Favored Markdown
	- @mmd: MultiMarkdown 
	- @pandoc: pandoc-favored markdown
	- @phpextra: PHP Markdown Extra (inspired some syntax in pandoc and mmd)

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

- https://www.wikipedia.org
- <https://www.wikipedia.org>
- [Wikipedia.org](https://www.wikipedia.org)

### Reference Links

- [Search here][Google]
- A [link][] with attributes. @mmd

[Google]: https://www.google.com
[link]:  https://www.wikipedia.org/portal/wikipedia.org/assets/img/Wikipedia-logo-v2@2x.png "Title" class=external
         style="border: solid black 1px;"

### Cross Reference [userdefinedreference]

- Auto-reference: [Links][]
- User defined reference: [userdefinedreference][]

## Image Links

- ![Alt Text](https://www.wikipedia.org/portal/wikipedia.org/assets/img/Wikipedia-logo-v2@2x.png "Optional Title")

### Reference Images

- ![Alt Text][imageid]
- ![An Image with Attributes][wikipedia] @mmd

[imageid]: https://www.wikipedia.org/portal/wikipedia.org/assets/img/Wikipedia-logo-v2@2x.png "Optional Title"
[wikipedia]: https://www.wikipedia.org/portal/wikipedia.org/assets/img/Wikipedia-logo-v2@2x.png "Title of the Image" width=40px height=40px

### Image with Links by Nesting Image and Link ###

- [![Image Link](https://www.wikipedia.org/portal/wikipedia.org/assets/img/Wikipedia-logo-v2@2x.png)](https://www.wikipedia.org/)

### Block Level Images ###

- Block level: HTML `figure` element in MultiMarkdown @mmd

![***Block*** **Level** @mmd](https://www.wikipedia.org/portal/wikipedia.org/assets/img/Wikipedia-logo-v2@2x.png "Optional Title")

## Lists

### Ordered Lists ###

1. test
3. test
2. test

### Unordered Lists ###

- test
* test
+ test

### Nested Lists ###

* test
    * test
* test
    1. test
    2. test
        * test
	        1. test
	        2. test
    3. test
* test

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

- `testing`

### Fenced Code Blocks

#### Method 1

	test
	test
		test
		# test

#### Method 2

```latex
\nabla \times \mathbf{E} = - \frac{\partial \mathbf{B}}{\partial t}
```

#### Method 3 ####

~~~markdown
test
test
	test
	# test
~~~

## Horizontal Rules (Asterisk also works)

### Hyphen ###

#### Test1

-

#### Test2

--

#### Test3

---

#### Test4

----

#### Test5

-----

#### test6

------

### Asterisks ###

#### Test1

*

#### Test2

**

#### Test3

***

#### Test4

****

#### Test5

*****

#### test6

******

## Break ##

No break
like this

Soft break  
like this

Hard break

like this

## Tables

### Method 1

| 1 | 2 | 3 |
|:--- | :---: | ---:|
|**test** | _test_ | test|

### Method 1 @mmd

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

@mmd @phpextra

Physics
: The Fundamental of Science
: Describe the Nature
: Make Prediction

## Glossaries ##

A special kind of footnote [^glossaryfootnote]. @mmd

[^glossaryfootnote]: glossary: term (optional sort key)
    The actual definition belongs on a new line, and can continue on
    just as other footnotes.

See more at [Glossary---MultiMarkdown Documentation](http://fletcher.github.io/MultiMarkdown-5/glossary.html).

## Superscript & Subscript

@mmd

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

@mmd @phpextra

*[HTML]: HyperText Markup Language
*[W3C]:  World Wide Web Consortium

Testing abbreviations: HTML, W3C (mouseover it to see)

## Math ##

HTML Math assumes MathJax.

Notes: an extra `\` can be used to escape from MarkDown

For MultiMarkDown, add
```html
HTML header:    <script type="text/javascript"
    src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS_CHTML-full">
    </script>
```

For pandoc, add `--mathjax` in the command-line argument.

There are subtleties how math should be used in HTML+MathJax and LaTeX output from single markdown source. See more in [Testing LaTeX Environments Usage in MathJax From Markdown Convertion (including mmd and pandoc)](https://github.com/ickc/mathjax-latex-md-mmd-pandoc).

### Inline Math ###

- $1+1$
- \\( 1 + 1 \\)

### Block Math ###

- $$R R^T = I$$
- \\[A^T_S = B\\]

### Other Examples

- \\[x = {-b \pm \sqrt{b^2-4ac} \over 2a}\\]
- \\[
\begin{aligned}
\dot{x} & = \sigma(y-x) \\\
\dot{y} & = \rho x - y - xz \\\
\dot{z} & = -\beta z + xy
\end{aligned}
\\]
- \\[\left( \sum_{k=1}^n a_k b_k \right)^2 \leq \left( \sum_{k=1}^n a_k^2 \right) \left( \sum_{k=1}^n b_k^2 \right)\\]
- \\[\mathbf{V}_1 \times \mathbf{V}_2 =  \begin{vmatrix}
\mathbf{i} & \mathbf{j} & \mathbf{k} \\\
\frac{\partial X}{\partial u} &  \frac{\partial Y}{\partial u} & 0 \\\
\frac{\partial X}{\partial v} &  \frac{\partial Y}{\partial v} & 0
\end{vmatrix}\\]
- \\[P(E) = {n \choose k} p^k (1-p)^{n-k}\\]
- \\[\frac{1}{\Bigl(\sqrt{\phi \sqrt{5}}-\phi\Bigr) e^{\frac25 \pi}} =
1+\frac{e^{-2\pi}} {1+\frac{e^{-4\pi}} {1+\frac{e^{-6\pi}}
{1+\frac{e^{-8\pi}} {1+\ldots} } } }\\]
- \\[
\begin{aligned}
\nabla \times \vec{\mathbf{B}} -\, \frac1c\, \frac{\partial\vec{\mathbf{E}}}{\partial t} & = \frac{4\pi}{c}\vec{\mathbf{j}} \\\
\nabla \cdot \vec{\mathbf{E}} & = 4 \pi \rho \\\
\nabla \times \vec{\mathbf{E}}\, +\, \frac1c\, \frac{\partial\vec{\mathbf{B}}}{\partial t} & = \vec{\mathbf{0}} \\\
\nabla \cdot \vec{\mathbf{B}} & = 0 \end{aligned}
\\]
- \\[1 +  \frac{q^2}{(1-q)}+\frac{q^6}{(1-q)(1-q^2)}+\cdots =
\prod_{j=0}^{\infty}\frac{1}{(1-q^{5j+2})(1-q^{5j+3})},
\quad\quad \text{for $|q|<1$}.\\]

## Footnotes ##

- Footnotes [^This is a footnote] @mmd

### Reference ###

Footnotes[^1]

[^1]: This is another footnote

## Citations ##

- This is a statement that should be attributed to its source [p. 23][#Doe:2006]. @mmd

[Not cited][#notcited] @mmd

[#Doe:2006]: John Doe. *Some Big Fancy Book*.  Vanity Press, 2006.    
[#notcited]:  John Doe. *Another Big Fancy Book*.  Vanity Press, 2016.    

See citation styles in detail at [Citations---MultiMarkdown Documentation](http://fletcher.github.io/MultiMarkdown-5/citations.html).

## CriticMarkup ##

@mmd

- Deletions from the original text: This is {--is --}a test.
- Additions: This {++is ++}a test.
- Substitutions: This {~~isn't~>is~~} a test.
- Highlighting: This is a {==test==}.
- Comments: This is a test{>>What is it a test of?<<}.

See [CriticMarkup---MultiMarkdown Documentation](http://fletcher.github.io/MultiMarkdown-5/criticmarkup.html).

## RAW ##

### HTML ###

- <div>This is *not* markdown</div> (a good thing to check is if the *not* is italic or not)
- <div markdown=1>This *is* markdown</div> @mmd

See more at [](http://fletcher.github.io/MultiMarkdown-5/raw.html).

### LaTeX ###

<!-- \newcommand\rawlatex{} --> @mmd

Other Syntax
============

## Metadata ##

### MultiMarkdown Metadata Block @mmd

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

@mmd

[](http://fletcher.github.io/MultiMarkdown-5/transclusion.html).

## TOC ##

### MultiMarkdown @mmd

`{{TOC}}`, see beginning. It preprocess the headings and generate a ToC on its own, and doesn't give instruction for LaTeX to generate one. A hack is like this:

# Other Notes #

When multiple format outputs are targeted, note that in LaTeX:

- The Maximum nesting level of lists in LaTeX is 4. The quick hack is to mix itemize and enumerate alternatively to go beyond this.