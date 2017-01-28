DOCNAME=nime-paper-input.md
OUTNAME=rendered-output
REFSFILE=references.bib
ARGS=--bibliography $(REFSFILE)

nime:
	pandoc --template=nime.latex --self-contained --natbib --filter pandoc-fignos $(DOCNAME) -o $(OUTNAME).tex
	sed -i '.bak' 's/\citep{/\cite{/g' $(OUTNAME).tex
	pdflatex $(OUTNAME)
	bibtex $(OUTNAME)
	pdflatex $(OUTNAME)
	pdflatex $(OUTNAME)

all: pdf html word tex

pdf:
	pandoc --template=nime.latex $(ARGS) $(DOCNAME) -o $(OUTNAME).pdf

html:
	pandoc $(ARGS) $(DOCNAME) -o $(OUTNAME).html

word:
	pandoc $(ARGS) $(DOCNAME) -o $(OUTNAME).docx

.PHONY: clean
clean:
	rm -f $(OUTNAME).pdf $(OUTNAME).docx $(OUTNAME).tex $(OUTNAME).html