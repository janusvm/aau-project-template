# LaTeX skabelon, Makefile (kommandoer for GNU Make)
# --------------------------------------------------------------------------------------------------

MASTER = master
PREAMBLE = preamble.tex
INPUT := $(shell find incl/ fig/ py/ -type f ! -name '*.aux')

# --------------------------------------------------------------------------------------------------

$(MASTER).pdf: $(MASTER).tex $(INPUT) $(PREAMBLE)
	latexmk -pdf -quiet $(MASTER)

release: clean
	$(MAKE)
	latexmk -bibtex -c

clean:
	rm -rf `find -type d -name auto`
	latexmk -bibtex -C

.PHONY: release clean
