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

### Header *Containing* ***Styling*** and a [Link](Https://www.wikipedia.org/) ###

### Header Containing Attributes {#identifier .class .class key=value key=value} @pandoc @phpextra

### Header Unnumbered {-} @pandoc

### Header Unnumbered 2 {.Unnumbered} @Pandoc ###

### Auto Cross Reference

- [Header][] @mmd @pandoc
- [Header] @pandoc
- [Link to Header](#header) @pandoc
- [Link to Header][Header] @pandoc

### User defined reference [userdefinedreference]

- [userdefinedreference][] @mmd @pandoc(extension:mmd_header_identifiers)
- [Link to "Header Containing Attributes"](#identifier) @pandoc
- [another-link] @pandoc

[another-link]: #identifier

### Deeper Levels of Headers ###

#### Header4

##### Header5 ########################

###### Header6 ######

Emphasis
--------

- *italic* or _italic_ @markdown
- **bold** or __bold__ @markdown
- ***bold italic*** or ___bold italic___ @markdown
- ~~strikethrough~~ @pandoc
- _Underline_
- ==Highlight==

## Links

- https://www.wikipedia.org @pandoc(extension:autolink_bare_uris)
- <https://www.wikipedia.org>
- [Wikipedia.org](https://www.wikipedia.org)
- [Wikipedia.org](https://www.wikipedia.org "a title") @pandoc
- [email GitHub](support@github.com)
- [Mail to GitHub](mailto:support@github.com)

### Reference Links

- [Search here][Google]
- A [link][] with attributes. @mmd
- [Another link to the link above][link]. @mmd
- A [link1][] with attributes. @pandoc
- [Another link][link2]. @pandoc
- [link3]. @pandoc

[Google]: https://www.google.com
[link]:  https://www.wikipedia.org/portal/wikipedia.org/assets/img/Wikipedia-logo-v2@2x.png "Title" class=external
         style="border: solid black 1px;"

- [link1]: /foo/bar.html  "My title, optional"
- [link2]: http://fsf.org (The free software foundation)
- [link3]: /bar#special  'A title in single quotes'

## Image Links

- ![Alt Text](https://www.wikipedia.org/portal/wikipedia.org/assets/img/Wikipedia-logo-v2@2x.png "Optional Title")

### Reference Images

- ![Alt Text][imageid]
- ![An Image with Attributes][wikipedia] @mmd @pandoc(extension:mmd_link_attributes)
- ![An Image with Attributes](foo.jpg){#id .class width=30 height=20px} @pandoc @phpextra(partial)
- a reference ![image][ref] with attributes. @pandoc @phpextra(partial)


[imageid]: https://www.wikipedia.org/portal/wikipedia.org/assets/img/Wikipedia-logo-v2@2x.png "Optional Title"
[wikipedia]: https://www.wikipedia.org/portal/wikipedia.org/assets/img/Wikipedia-logo-v2@2x.png "Title of the Image" width=40px height=40px
[ref]: foo.jpg "optional title" {#id .class key=val key2="val 2"}

### Image with Links by Nesting Image and Link ###

- [![Image Link](https://www.wikipedia.org/portal/wikipedia.org/assets/img/Wikipedia-logo-v2@2x.png)](https://www.wikipedia.org/)

### Block Level Images ###

- Block level: HTML `figure` element in MultiMarkdown @mmd @pandoc

![***Block*** **Level**](https://www.wikipedia.org/portal/wikipedia.org/assets/img/Wikipedia-logo-v2@2x.png "Optional Title")

![***Not*** Block **Level**](https://www.wikipedia.org/portal/wikipedia.org/assets/img/Wikipedia-logo-v2@2x.png "Optional Title")\

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

### Fancy Lists ###

@pandoc

#. one
#. two
 9)  Ninth
10)  Tenth
11)  Eleventh
       i. subone
      ii. subtwo
     iii. subthree
(2) Two
(5) Three
1.  Four
*   Five

### Cutoff a List ###

-   item one
-   item two

<!-- end of list -->

    { my code block }

1.  one
2.  two
3.  three

<!-- -->

1.  uno
2.  dos
3.  tres

### List Item in a Block ###

@pandoc

  * First paragraph.

    Continued.

  * Second paragraph. With a code block, which must be indented
    eight spaces:

        { code }

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

### Blockquotes Quoting Codes ###

>     \newcommand...

## Code

- `testing`
- `\[\ket{a}\]`{.latex} @pandoc

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

~~~ {#mycode .markdown .numberLines startFrom="100"}
test
test
	test
	# test
~~~

## Line Blocks ##

@pandoc

| The limerick packs laughs anatomical
| In space that is quite economical.
|    But the good ones I've seen
|    So seldom are clean
| And the clean ones so seldom are comical

| 200 Main St.
| Berkeley, CA 94718

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

### Method 2

| Right | Left | Default | Center |
|------:|:-----|---------|:------:|
|   12  |  12  |    12   |    12  |
|  123  |  123 |   123   |   123  |
|    1  |    1 |     1   |     1  |

  : Demonstration of pipe table syntax. @pandoc

[Table Caption @mmd]
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

### Method 3 ###

@pandoc

  Right     Left     Center     Default
-------     ------ ----------   -------
     12     12        12            12
    123     123       123          123
      1     1          1             1

Table:  Demonstration of simple table syntax.

### Method 4 ###

@pandoc

-------------------------------------------------------------
 Centered   Default           Right Left
  Header    Aligned         Aligned Aligned
----------- ------- --------------- -------------------------
   First    row                12.0 Example of a row that
                                    spans multiple lines.

  Second    row                 5.0 Here's another one. Note
                                    the blank line between
                                    rows.
-------------------------------------------------------------

Table: Here's the caption. It, too, may span
multiple lines.

### Method 5 ###

@pandoc

: Sample grid table.

+---------------+---------------+--------------------+
| Fruit         | Price         | Advantages         |
+===============+===============+====================+
| Bananas       | $1.34         | - built-in wrapper |
|               |               | - bright color     |
+---------------+---------------+--------------------+
| Oranges       | $2.10         | - cures scurvy     |
|               |               | - tasty            |
+---------------+---------------+--------------------+  


## Definition Lists

### Method 1 ###

@mmd @phpextra @pandoc

Physics
: The Fundamental of Science
: Describe the Nature
: Make Prediction

### Method 2

@pandoc

Term 1

:   Definition 1

Term 2 with *inline markup*

:   Definition 2

        { some code, part of Definition 2 }

    Third paragraph of definition 2.

## Numbered Example Lists ##

@pandoc

(@)  My first example will be numbered (1).
(@)  My second example will be numbered (2).

Explanation of examples.

(@)  My third example will be numbered (3).

(@good)  This is a good example.

As (@good) illustrates, ...

## Glossaries ##

A special kind of footnote [^glossaryfootnote]. @mmd

[^glossaryfootnote]: glossary: term (optional sort key)
    The actual definition belongs on a new line, and can continue on
    just as other footnotes.

See more at [Glossary---MultiMarkdown Documentation](http://fletcher.github.io/MultiMarkdown-5/glossary.html).

## Superscript & Subscript

@pandoc @mmd

- x^2
- d~o
- x^a+b^
- x~y,z~
- P~a\ cat~

## Smarty Pants ##

@markdown? @pandoc(--smart)

- "Example 1"
- 'Example 2'
- ``Example 3''
- en--dash
- em---dash
- ellipsis...

## Abbreviations (PHP Markdown Extra) ##

@mmd @phpextra @pandoc(partial-with-extension:abbreviations)

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
- \\(1 + 1\\)

### Block Math ###

- $$R R^T = I$$
- \\[A^T_S = B\\]

### Other Examples

- $$x = {-b \pm \sqrt{b^2-4ac} \over 2a}$$
- $$
\begin{aligned}
\dot{x} & = \sigma(y-x) \\\
\dot{y} & = \rho x - y - xz \\\
\dot{z} & = -\beta z + xy
\end{aligned}
$$
- $$\left( \sum_{k=1}^n a_k b_k \right)^2 \leq \left( \sum_{k=1}^n a_k^2 \right) \left( \sum_{k=1}^n b_k^2 \right)$$
- $$\mathbf{V}_1 \times \mathbf{V}_2 =  \begin{vmatrix}
\mathbf{i} & \mathbf{j} & \mathbf{k} \\\
\frac{\partial X}{\partial u} &  \frac{\partial Y}{\partial u} & 0 \\\
\frac{\partial X}{\partial v} &  \frac{\partial Y}{\partial v} & 0
\end{vmatrix}$$
- $$P(E) = {n \choose k} p^k (1-p)^{n-k}$$
- $$\frac{1}{\Bigl(\sqrt{\phi \sqrt{5}}-\phi\Bigr) e^{\frac25 \pi}} =
1+\frac{e^{-2\pi}} {1+\frac{e^{-4\pi}} {1+\frac{e^{-6\pi}}
{1+\frac{e^{-8\pi}} {1+\ldots} } } }$$
- $$
\begin{aligned}
\nabla \times \vec{\mathbf{B}} -\, \frac1c\, \frac{\partial\vec{\mathbf{E}}}{\partial t} & = \frac{4\pi}{c}\vec{\mathbf{j}} \\\
\nabla \cdot \vec{\mathbf{E}} & = 4 \pi \rho \\\
\nabla \times \vec{\mathbf{E}}\, +\, \frac1c\, \frac{\partial\vec{\mathbf{B}}}{\partial t} & = \vec{\mathbf{0}} \\\
\nabla \cdot \vec{\mathbf{B}} & = 0 \end{aligned}
$$
- $$1 +  \frac{q^2}{(1-q)}+\frac{q^6}{(1-q)(1-q^2)}+\cdots =
\prod_{j=0}^{\infty}\frac{1}{(1-q^{5j+2})(1-q^{5j+3})},
\quad\quad \text{for $|q|<1$}.$$

## Footnotes ##

- Footnotes [^This is a footnote] @mmd
- Footnotes ^[This is a footnote] @pandoc

### Reference ###

- Footnotes[^1]
- Long Footnotes [^longnote] @pandoc

[^1]: This is another footnote
[^longnote]: Here's one with multiple blocks.

    Subsequent paragraphs are indented to show that they
belong to the previous footnote.

        { some.code }

    The whole paragraph can be indented, or just the first
    line.  In this way, multi-paragraph footnotes work like
    multi-paragraph list items.

This paragraph won't be part of the note, because it
isn't indented.

## Citations ##

### MultiMarkdown ###

- This is a statement that should be attributed to its source [p. 23][#Doe:2006]. @mmd

[Not cited][#notcited] @mmd

[#Doe:2006]: John Doe. *Some Big Fancy Book*.  Vanity Press, 2006.    
[#notcited]:  John Doe. *Another Big Fancy Book*.  Vanity Press, 2016.    

See more at [Citations---MultiMarkdown Documentation](http://fletcher.github.io/MultiMarkdown-5/citations.html).

### Pandoc ###

Very powerful but complicated. See more at [Citations---Pandoc Documentation](http://pandoc.org/README.html#citations).

## CriticMarkup ##

@mmd

- Deletions from the original text: This is {--is --}a test.
- Additions: This {++is ++}a test.
- Substitutions: This {~~isn't~>is~~} a test.
- Highlighting: This is a {==test==}.
- Comments: This is a test{>>What is it a test of?<<}.

See more at [CriticMarkup---MultiMarkdown Documentation](http://fletcher.github.io/MultiMarkdown-5/criticmarkup.html).

## Small Caps ##

<span style="font-variant:small-caps;">Small caps</span> @pandoc @markdown @mmd(html)

## RAW ##

### HTML ###

- <div>This is *not* markdown</div> (a good thing to check is if the *not* is italic or not)
- <div markdown=1>This *is* markdown</div> @mmd @pandoc(non-default-extension:markdown_attribute)

See more at [Raw---MultiMarkdown Documentation](http://fletcher.github.io/MultiMarkdown-5/raw.html).

### LaTeX ###

<!-- \newcommand\rawlatex{} --> @mmd
\newcommand\rawlatex{} @pandoc(parsed)
\begin{...} @pandoc

Other Syntax
============

## Metadata ##

### MultiMarkdown Metadata Block @mmd @pandoc(extension:mmd_title_block)

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

### Pandoc Title Block @pandoc

```
% title
% author(s) (separated by semicolons)
% date
```

### YAML Metadata Block @mmd(partial) @pandoc @gfm

```yaml
---
title:    A Sample MultiMarkdown Document  
author:   Fletcher T. Penney  
date:     February 9, 2011  
tags: [nothing, nothingness]
abstract: |
  This is the abstract.

  It consists of two paragraphs.
---
```

## File Transclusion ##

@mmd

See more at [File Transclusion---MultiMarkdown Documentation](http://fletcher.github.io/MultiMarkdown-5/transclusion.html).

## TOC ##

### MultiMarkdown @mmd

`{{TOC}}`, see beginning. It preprocess the headings and generate a ToC on its own, and doesn't give instruction for LaTeX to generate one. A hack is like this:

# Other Notes #

## Markdown ##

Backslash escapes: \*testing\*

## LaTeX ##

- The Maximum nesting level of lists in LaTeX is 4. The quick hack is to mix itemize and enumerate alternatively to go beyond this.