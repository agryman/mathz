#!/bin/zsh
cd $(dirname $0)
FUZZLIB=/usr/local/lib/fuzzlib
cat $FUZZLIB\
 ../mathz_core/mathz_core.sty\
 ../mathz_core/mathz_core.tex\
 mathz_sets.sty > mathz_sets.prelude
fuzz -p mathz_sets.prelude mathz_sets
