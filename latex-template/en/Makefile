# LaTeX template, Makefile (commands for GNU Make)
# --------------------------------------------------------------------------------------------------

MASTER = master
PREAMBLE = preamble.tex
INPUT := $(shell find incl/ fig/ py/ -type f ! -name '*.aux')

# --------------------------------------------------------------------------------------------------

$(MASTER).pdf: $(MASTER).tex $(INPUT) $(PREAMBLE)
	latexmk -pdf -quiet $(MASTER)

master: $(MASTER).pdf
clean:
	latexmk -bibtex -C

.PHONY: master clean
