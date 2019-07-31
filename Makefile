# Makefile for generating LaTeX templates from language files
# ------------------------------------------------------------------------------


# Directories
DATADIR    = languages
TMPLDIR    = template
BUILDDIR   = build
LANGS     := $(shell ls $(DATADIR))

# Template files
TMPLFILES := $(shell find $(TMPLDIR) -type f)
MUSTFILES := $(filter %.mustache,$(TMPLFILES))
TMPLFILES := $(filter-out $(MUSTFILES),$(TMPLFILES))

# Rules ------------------------------------------------------------------------
all: $(LANGS)

# Function for generating appropriate variables and rules for each language
define LANGRULES =
TEXTFILES := $$(patsubst $$(TMPLDIR)/%,$$(BUILDDIR)/$(1)/%,$$(TMPLFILES))
EPSFILES  := $$(shell find $$(DATADIR)/$(1) -name "*.eps")
PDFFILES  := $$(patsubst $$(DATADIR)/$(1)/%.eps,$$(BUILDDIR)/$(1)/%.pdf,$$(EPSFILES))

$(1): $$(TEXTFILES) $$(PDFFILES)

$$(TEXTFILES): $$(BUILDDIR)/$(1)/%: $$(DATADIR)/$(1)/%.yml $$(TMPLDIR)/%.mustache
	@echo "Generating $$@"
	@mkdir -p $$(@D)
	mustache $$^ > $$@

$$(PDFFILES): $$(BUILDDIR)/$(1)/%.pdf: $$(DATADIR)/$(1)/%.eps
	epstopdf $$< $$@

.PHONY: $(1)
endef

$(foreach LANG,$(LANGS),$(eval $(call LANGRULES,$(LANG))))

# Prepend delimiter settings to each template file via an intermediate file
%.mustache: %
	@cat <<EOF > $@
	{{=<< >>=}}
	`cat $<`
	EOF

clean:
	rm -rf $(BUILDDIR)
	rm -f $(MUSTFILES)

.PHONY: all clean
.ONESHELL:
