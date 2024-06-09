FUZZLIB = /usr/local/bin/fuzzlib
LATEXDIR = ~/Library/texmf/tex/latex/mathz
BUILDDIR = build

srcdirs = general/* math/* shared

#vpath %.sty $(srcdirs)
#vpath %.tex $(srcdirs)
#vpath %.defs $(BUILDDIR)

VPATH = general/mathz_formal_specifications

%.defs : %.sty %.tex
	cat $^ > $(BUILDIR)/$@

%.txt : %.sty
	touch $@

generaldirs := $(wildcard general/*/)
mathdirs := $(wildcard math/*/)

dirs := $(sort $(dir $(wildcard */mathz_*/)))

test:
	echo $(dirs)