#!/usr/bin/env bash
cd $(dirname $0)
FUZZLIB=/usr/local/bin/fuzzlib
cat $FUZZLIB\
 ../sets/mathz_sets.sty\
 ../sets/mathz_sets.tex\
 ../integers/mathz_integers.sty\
 ../integers/mathz_integers.tex\
 mathz_groups.sty > mathz_groups.prelude
fuzz -p mathz_groups.prelude mathz_groups
