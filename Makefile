DOCUMENT = writeup
INFILES = $(DOCUMENT).markdown
OUTFILE = $(DOCUMENT).pdf

AUTHOR = "Luke Orland"
TITLE = "600.475 Homework 2"
DATE = "2011 September 23"

FLAGS = \
	--xetex \
	--template=mytemplate.tex \
	-V author=$(AUTHOR) \
	-V title=$(TITLE) \
	-V date=$(DATE)

FLAGS_UNUSED = \
	--number-sections \
	--bibliography=$(BIBLIOGRAPHY) \
	--csl=ieee.csl

$(OUTFILE) : $(INFILES)
	markdown2pdf $(FLAGS) $(INFILES) -o $(OUTFILE)

clean :
	rm -f $(OUTFILE)

