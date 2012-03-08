PANDOC = pandoc
DOCUMENT = writeup
INFILES = $(DOCUMENT).markdown
OUTFILE = $(DOCUMENT).pdf

AUTHOR = "Luke Orland"
TITLE = "title"
DATE = "year month day"

FLAGS = \
	--template=mytemplate.tex \
	--variable fontsize=10pt \
	--data-dir=$(HOME)/.pandoc/pandoc-templates

FLAGS_UNUSED = \
	--variable author=$(AUTHOR) \
	--variable title=$(TITLE) \
	--variable date=$(DATE) \
	--number-sections \
	--bibliography=$(BIBLIOGRAPHY) \
	--csl=ieee.csl

$(OUTFILE) : $(INFILES)
	$(PANDOC) $(FLAGS) $(INFILES) -o $(OUTFILE)

clean :
	rm -f $(OUTFILE)

