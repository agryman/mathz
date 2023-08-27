#!/usr/bin/env bash
cd $(dirname $0)
FUZZLIB=/usr/local/bin/fuzzlib
cat $FUZZLIB\
 ../core/mathz_core.sty\
 ../core/mathz_core.tex\
 mathz_sets.sty > mathz_sets.prelude
fuzz -p mathz_sets.prelude mathz_sets
