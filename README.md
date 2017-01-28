# Markdown Template for NIME Papers

This Markdown template aims to replicate the official NIME template
style without making any compromises in formatting, or referencing.
Compiling this NIME template requires pandoc to be installed as well
as a regular latex distribution. If you want to output to HTML or docx
format as well as PDF, you will also need pandoc-citeproc. This
template is a work in progress and works for me so far, but shouldn't
be called complete! Some of the problems and future ideas are listed
below.
 
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


## Problems with this repository {#sec:problems}

A couple of things in this repository may not work correctly! If all else
fails, look at the intermediary output file `rendered-output.tex` and
adjust things that don't look right! Extra details could also be added
to `nime.latex` to fix some of the following things:

- Tables may or may not work.
- Number of authors is always set to three.
- It would be nice to have a CSL file that outputs similar to
  `abbrvurl.bst` used in the NIME template.
  
## Future Ideas {#sec:future-ideas}

- get tables to work?
- make a decent CSL file for processing citations with
  pandoc-citeproc? (IEEE.bst does not include DOIs and URLs and the
  hanging indent needs some work.
- any other suggestions or forks improving these ideas? 

## Conclusion {#sec:conclusion}

- It is possible to write academic papers for NIME in Markdown format!
- It is possible to get them to look _exactly_ the same as the Latex
  template!
- This is probably not for novices! Unless you're really into this
  stuff, it might be better just to use latex.
