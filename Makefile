PANDOC = pandoc
DOCUMENT = writeup
INFILES = $(DOCUMENT).markdown
OUTFILE = $(DOCUMENT).pdf

AUTHOR = "Author Name"
TITLE = "title"
DATE = "year month day"

FLAGS = \
	--template=mytemplate.tex \
	--variable fontsize=10pt \
	--number-sections

FLAGS_UNUSED = \
	--data-dir=$(HOME)/.pandoc/pandoc-templates \
	--variable author=$(AUTHOR) \
	--variable title=$(TITLE) \
	--variable date=$(DATE) \
	--bibliography=$(BIBLIOGRAPHY) \
	--csl=ieee.csl

$(OUTFILE) : $(INFILES)
	$(PANDOC) $(FLAGS) $(INFILES) -o $(OUTFILE)

clean :
	rm -f $(OUTFILE)

