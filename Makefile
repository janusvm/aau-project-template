# Top level Makefile
# --------------------------------------------------------------------------------------------------

TEMPLATES := $(shell find latex-template -mindepth 1 -maxdepth 1 -type d)
RMDS := $(wildcard resources/*.Rmd)
PDFS := $(RMDS:.Rmd=.pdf)


# --------------------------------------------------------------------------------------------------

all: latex notes

latex:
	for dir in $(TEMPLATES); do \
		$(MAKE) -C $$dir; \
	done

notes: $(PDFS)

%.pdf: %.Rmd
	cd resources; \
	Rscript --slave --vanilla -e "rmarkdown::render('$(<F)')"

clean:
	rm -f $(PDFS); \
	for dir in $(TEMPLATES); do \
		$(MAKE) -C $$dir clean; \
	done

.PHONY: all latex notes clean
