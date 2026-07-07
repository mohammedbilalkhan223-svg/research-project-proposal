# ==============================================================================
#  Makefile for LaTeX proposal
#  Requires: latexmk, biber, pdflatex (TeX Live / MiKTeX)
# ==============================================================================

MAIN    := main
LATEXMK := latexmk
FLAGS   := -pdf -bibtex -interaction=nonstopmode -halt-on-error

.PHONY: all clean distclean watch

## Build the PDF (default)
all: $(MAIN).pdf

$(MAIN).pdf: $(MAIN).tex references.bib
	$(LATEXMK) $(FLAGS) $(MAIN)

## Continuous rebuild on file change (requires latexmk -pvc)
watch:
	$(LATEXMK) $(FLAGS) -pvc $(MAIN)

## Remove build artifacts but keep the PDF
clean:
	$(LATEXMK) -c $(MAIN)

## Remove everything including the PDF
distclean:
	$(LATEXMK) -C $(MAIN)
