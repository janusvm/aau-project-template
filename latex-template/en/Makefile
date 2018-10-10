# LaTeX template, Makefile (commands for GNU Make)
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

bare: clean
	# Clean up master.tex
	sed -i -r -e '/^\\\def/s/\{.*\}/\{\}/' \
	          -e '/^\}|\\\include\{incl\/(app|main)|Janus/d' \
		  -e 's/\{$$/\{\}/' master.tex

	# Clean up abstract
	> ./incl/misc/abstract.tex

	# Clean up bibliography
	> ./incl/bib/bibliography.bib

	# Delete sample files
	rm -f ./fig/alg/bubblesort.tex
	rm -f ./fig/img/me.*
	rm -f ./fig/tab/my-table.tex
	rm -f ./fig/tikz/my-graph.tex
	rm -f ./incl/app/*
	rm -f ./incl/main/*
	rm -rf ./py

clean:
	rm -rf `find -type d -name auto`
	latexmk -bibtex -C

.PHONY: release bare clean
