# Top level Makefile
# --------------------------------------------------------------------------------------------------

TEMPLATES := $(shell find latex-template -mindepth 1 -maxdepth 1 -type d)
RMDS := $(wildcard resources/*.Rmd)
PDFS := $(RMDS:.Rmd=.pdf)


# --------------------------------------------------------------------------------------------------

all: latex notes

release: clean-build
	mkdir -p build
	for dir in $(TEMPLATES); do \
		$(MAKE) -C $$dir release; \
		echo build/`basename $$dir`.zip; \
		(cd $$dir && zip -r - . -x Makefile) > build/`basename $$dir`.zip; \
	done

latex:
	for dir in $(TEMPLATES); do \
		$(MAKE) -C $$dir; \
	done

notes: $(PDFS)

%.pdf: %.Rmd
	cd resources
	Rscript --slave --vanilla -e "rmarkdown::render('$(<F)')"

clean-build:
	rm -f build/*

clean: clean-build
	rm -f $(PDFS)
	for dir in $(TEMPLATES); do \
		$(MAKE) -C $$dir clean; \
	done

.PHONY: all release latex notes clean-build clean
