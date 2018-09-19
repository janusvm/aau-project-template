# LaTeX template, Makefile (commands for GNU Make)
# --------------------------------------------------------------------------------------------------

MASTER = master
PREAMBLE = preamble.tex
INPUT := $(shell find incl/ fig/ -type f ! -name '*.aux')

# --------------------------------------------------------------------------------------------------

$(MASTER).pdf: $(MASTER).tex $(INPUT) $(PREAMBLE)
	latexmk -pdf -quiet -bibtex $(MASTER)

master: $(MASTER).pdf
clean:
	latexmk -bibtex -C

.PHONY: master clean
