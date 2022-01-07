PREFIX   = publications_geisserf
BIBFILES = publications_geisserf
LATEX    = pdflatex
BIBTEX   = biber

all: pdf clean

pdf:
	$(LATEX) $(PREFIX).tex
	$(foreach bibfile,$(BIBFILES),$(BIBTEX) $(bibfile);)
	$(LATEX) $(PREFIX).tex
	$(LATEX) $(PREFIX).tex

clean:
	rm -f *~ *.aux *.backup *.bak *.bbl *.bcf *.blg *.dvi *.loa *.lof *.log *.lot *.ps *.swp *.tar.gz *.toc *.xml *-blx.bib *.nav *.snm *.out *.vrb

veryclean: clean
	rm -f $(PREFIX).pdf
