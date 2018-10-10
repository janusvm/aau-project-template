# Top level Makefile
# --------------------------------------------------------------------------------------------------

TEMPLATES := $(shell find latex-template -mindepth 1 -maxdepth 1 -type d)
RMDS := $(wildcard resources/*.Rmd)
PDFS := $(RMDS:.Rmd=.pdf)
GIT_STATUS = $(shell (git status --porcelain | grep -q .) && echo dirty || echo clean)

# --------------------------------------------------------------------------------------------------

all: latex notes

release:
ifeq ($(GIT_STATUS), clean)
	$(MAKE) clean-build
	mkdir -p build
	for dir in $(TEMPLATES); do \
		$(MAKE) -C $$dir release; \
		(cd $$dir && zip -r - . -x Makefile) > build/`basename $$dir`-with-examples.zip; \
		$(MAKE) -C $$dir bare; \
		(cd $$dir && zip -r - . -x Makefile) > build/`basename $$dir`-bare.zip; \
	done
	git checkout .
else
	$(error working tree dirty, build aborted!)
endif

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
