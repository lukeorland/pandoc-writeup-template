PANDOC = pandoc
DOCUMENT = writeup
INFILES = $(DOCUMENT).markdown
OUTFILE = $(DOCUMENT).pdf

AUTHOR = "Luke Orland"
TITLE = "600.475 Homework 2"
DATE = "2011 September 23"

FLAGS = \
	--template=mytemplate.tex \

FLAGS_UNUSED = \
	-V author=$(AUTHOR) \
	-V title=$(TITLE) \
	-V date=$(DATE) \
	--number-sections \
	--bibliography=$(BIBLIOGRAPHY) \
	--csl=ieee.csl

$(OUTFILE) : $(INFILES)
	$(PANDOC) $(FLAGS) $(INFILES) -o $(OUTFILE)

clean :
	rm -f $(OUTFILE)

