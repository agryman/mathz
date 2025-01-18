FUZZLIB = /usr/local/bin/fuzzlib
LATEXDIR = ~/Library/texmf/tex/latex/mathz
MATHDIR = ../../math

.PHONY : typecheck clean

defs = \
	$(MATHDIR)/mathz-core/mathz-core.sty \
	$(MATHDIR)/mathz-core/mathz-core.tex \
	$(MATHDIR)/mathz-sets/mathz-sets.sty \
	$(MATHDIR)/mathz-sets/mathz-sets.tex \
	$(MATHDIR)/mathz-integers/mathz-integers.sty \
	$(MATHDIR)/mathz-integers/mathz-integers.tex \
	$(MATHDIR)/mathz-topological-spaces/mathz-topological-spaces.sty \
	$(MATHDIR)/mathz-topological-spaces/mathz-topological-spaces.tex \
	$(MATHDIR)/mathz-groups/mathz-groups.sty \
	$(MATHDIR)/mathz-groups/mathz-groups.tex \
	$(MATHDIR)/mathz-real-numbers/mathz-real-numbers.sty \
	$(MATHDIR)/mathz-real-numbers/mathz-real-numbers.tex

typecheck : mathz-formal-specifications.prelude mathz-formal-specifications.tex
	fuzz -p mathz-formal-specifications.prelude mathz-formal-specifications

#mathz-formal-specifications.fuzz : mathz-formal-specifications.prelude mathz-formal-specifications.tex
#	fuzz -l -p mathz-formal-specifications.prelude mathz-formal-specifications > $@

%.fuzz : %.prelude %.tex
	fuzz -l -p $*.prelude $* > $@

mathz-formal-specifications.prelude : $(defs) mathz-formal-specifications.sty
	cat $(FUZZLIB) $(defs) mathz-formal-specifications.sty > $@

#mathz-formal-specifications.defs : mathz-formal-specifications.sty mathz-formal-specifications.tex
#	cat mathz-formal-specifications.sty mathz-formal-specifications.tex > $@

%.defs : %.sty %.tex
	cat $^ > $@

clean :
	-rm -f *.defs *.prelude *.fuzz

install :
	cp *.sty $(LATEXDIR)
