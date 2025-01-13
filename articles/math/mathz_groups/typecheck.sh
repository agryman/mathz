#!/bin/zsh
cd $(dirname $0)
FUZZLIB=/usr/local/lib/fuzzlib
cat $FUZZLIB\
 ../mathz_core/mathz_core.sty\
 ../mathz_core/mathz_core.tex\
 ../mathz_sets/mathz_sets.sty\
 ../mathz_sets/mathz_sets.tex\
 ../mathz_integers/mathz_integers.sty\
 ../mathz_integers/mathz_integers.tex\
 mathz_groups.sty > mathz_groups.prelude
fuzz -p mathz_groups.prelude mathz_groups
