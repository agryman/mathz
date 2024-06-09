FUZZLIB = /usr/local/bin/fuzzlib
LATEXDIR = ~/Library/texmf/tex/latex/mathz
MATHDIR = ../../math

.PHONY : typecheck clean

defs = \
	$(MATHDIR)/mathz_core/mathz_core.sty \
	$(MATHDIR)/mathz_core/mathz_core.tex \
	$(MATHDIR)/mathz_sets/mathz_sets.sty \
	$(MATHDIR)/mathz_sets/mathz_sets.tex \
	$(MATHDIR)/mathz_integers/mathz_integers.sty \
	$(MATHDIR)/mathz_integers/mathz_integers.tex \
	$(MATHDIR)/mathz_topological_spaces/mathz_topological_spaces.sty \
	$(MATHDIR)/mathz_topological_spaces/mathz_topological_spaces.tex \
	$(MATHDIR)/mathz_groups/mathz_groups.sty \
	$(MATHDIR)/mathz_groups/mathz_groups.tex \
	$(MATHDIR)/mathz_real_numbers/mathz_real_numbers.sty \
	$(MATHDIR)/mathz_real_numbers/mathz_real_numbers.tex

typecheck : mathz_formal_specifications.prelude mathz_formal_specifications.tex
	fuzz -p mathz_formal_specifications.prelude mathz_formal_specifications

#mathz_formal_specifications.fuzz : mathz_formal_specifications.prelude mathz_formal_specifications.tex
#	fuzz -l -p mathz_formal_specifications.prelude mathz_formal_specifications > $@

%.fuzz : %.prelude %.tex
	fuzz -l -p $*.prelude $* > $@

mathz_formal_specifications.prelude : $(defs) mathz_formal_specifications.sty
	cat $(FUZZLIB) $(defs) mathz_formal_specifications.sty > $@

#mathz_formal_specifications.defs : mathz_formal_specifications.sty mathz_formal_specifications.tex
#	cat mathz_formal_specifications.sty mathz_formal_specifications.tex > $@

%.defs : %.sty %.tex
	cat $^ > $@

clean :
	-rm -f *.defs *.prelude *.fuzz

install :
	cp *.sty $(LATEXDIR)
