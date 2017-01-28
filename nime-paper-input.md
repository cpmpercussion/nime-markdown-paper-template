---
title: 'A Very Well-Written NIME Paper'
author:
  - name: Author one
    affiliation: University
    address: University
    email: email1@domain.edu
  - name: Author two
    affiliation: University
    address: University
    email: email1@domain.edu
  - name: Author three
    affiliation : University
    address: University
    email: email1@domain.edu
abstract: |
  This Markdown template aims to replicate the official NIME template style without making any compromises in formatting, or referencing. Compiling this NIME template requires pandoc to be installed as well as a regular latex distribution. If you want to output to HTML or docx format as well as PDF, you will also need pandoc-citeproc. This template is a work in progress and works for me so far, but shouldn't be called complete! Some of the problems and future ideas are listed below.

documentclass: nime-alternate
bibliography: references.bib
keywords: NIME, Interfaces, Music, Expression
acmClass: H.5.5 [Information Interfaces and Presentation (e.g., HCI)] Sound and Music Computing --- Systems
...

# Introduction {#sec:introduction}

The starting text of my template NIME paper. You might put a lot more text
here, perhaps some referencing the origin of NIME [@Poupyrev:2001eu],
or compilations of papers [@NIMEReader2017]. 

This template is intended for use with Pandoc [@Pandoc:2013], a
universal document converter. While Pandoc can convert markdown to
Latex, a few details are required to produce an accurate NIME paper
format PDF.

The repository includes a special latex template for Pandoc to use,
 `nime.latex`, as well as the usual NIME latex template,
 `nime-alternate.cls`, and supporting files. A Makefile is also
 included so that creating a submission-ready PDF file is as simple as
 running `make`.
 
 Generally Pandoc is used with its own citation processor,
 `pandoc-citeproc`; however, this processor is much simpler than
 bibtex which is generally used for latex papers. The Makefile runs a
 few tricks to use bibtex instead of `pandoc-citeproc`, a strategy
 that is not often raised in discussions of academic markdown [@Healy:2014]
 
## How to use

### Get the dependencies:

- Mac: `brew cask install mactex && brew install pandoc pandoc-citeproc`
- Ubuntu/Debian: `apt-get install texlive pandoc pandoc-citeproc`

### Write the document in Markdown:

- See the Pandoc manual for more information:
  [http://pandoc.org/MANUAL.html](http://pandoc.org/MANUAL.html)

### Compile it

- Just run `make` in the project directory, the output will show up as
  `rendered-output.pdf`
- If things don't work out, you can always run `make` and then take
  the `rendered-output.tex` file and just work in Latex to fix problems!

## A few markdown hints {#sec:hints}

There's a few tricks to using Markdown with Pandoc for papers.

### Citations

You can cite using `[@citekey]` format. Pandoc turns these into
`citep` commands, then the makefile changes _these_ to `cite` commands
which show up as numerical citations. There's more complicated
protocols for author/date styles, but these aren't required for NIME.

### Figures

Use the normal Markdown syntax for images, including a label
afterwards:

`![Caption](figurepath){#label}`

This totally works as can be seen in Figure \ref{fig:testfigure}

![A test figure!](BlockDiagram1.pdf){#fig:testfigure}


# Problems with this repository {#sec:problems}

A couple of things in this repository may not work correctly! If all else
fails, look at the intermediary output file `rendered-output.tex` and
adjust things that don't look right! Extra details could also be added
to `nime.latex` to fix some of the following things:

- Tables may or may not work.
- Number of authors is always set to three.
- It would be nice to have a CSL file that outputs similar to
  `abbrvurl.bst` used in the NIME template.
  
For instance, do tables work? (They currently do not.)

<!--   Right     Left     Center     Default -->
<!-- -------     ------ ----------   ------- -->
<!--      12     12        12            12 -->
<!--     123     123       123          123 -->
<!--       1     1          1             1 -->

# Future Ideas {#sec:future-ideas}

- get tables to work?
- make a decent CSL file for processing citations with
  pandoc-citeproc? (IEEE.bst does not include DOIs and URLs and the
  hanging indent needs some work.
- any other suggestions or forks improving these ideas? 

# Conclusion {#sec:conclusion}

- It is possible to write academic papers for NIME in Markdown format!
- It is possible to get them to look _exactly_ the same as the Latex
  template!
- This is probably not for novices! Unless you're really into this
  stuff, it might be better just to use latex.
