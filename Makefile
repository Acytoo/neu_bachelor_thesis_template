LATEXMKOPTS = -xelatex -file-line-error -halt-on-error -interaction=nonstopmode
# Basename of thesis
THESISMAIN = main

PACKAGE=csethesis
THESISCONTENTS=$(THESISMAIN).tex data/*.tex $(FIGURES)
# NOTE: update this to reflect your local file types.
FIGURES=$(wildcard figures/*.pdf)

BIBFILE=ref/*.bib

CLSFILES= $(PACKAGE).cls

ifdef SystemRoot
	RM = del /Q
	OPEN = start
else
	RM = rm -f
	OPEN = xdg-open
endif

.PHONY: all clean view cleanall FORCE_MAKE

all: $(THESISMAIN).pdf

view: all
	$(OPEN) main.pdf

$(THESISMAIN).pdf: $(CLSFILES)  FORCE_MAKE
	latexmk $(LATEXMKOPTS) $(THESISMAIN)

clean:
	latexmk -c $(THESISMAIN)
	-@$(RM) *~
	-@$(RM) data/*aux
	-@$(RM) data/*~

cleanall: clean
	-@$(RM)  $(THESISMAIN).pdf
