#!/usr/bin/env bash
cd $(dirname $0)
FUZZLIB=/usr/local/bin/fuzzlib
cat $FUZZLIB\
 ../sets/mathz_sets.sty\
 ../sets/mathz_sets.tex\
 mathz_integers.sty > mathz_integers.prelude
fuzz -p mathz_integers.prelude mathz_integers
