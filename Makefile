# Top level Makefile
# --------------------------------------------------------------------------------------------------

TEXDIRS := $(wildcard latex-template/*)

# --------------------------------------------------------------------------------------------------

all: latex

latex:
	for dir in $(TEXDIRS); do \
		$(MAKE) -C $$dir; \
	done

.PHONY: all latex
