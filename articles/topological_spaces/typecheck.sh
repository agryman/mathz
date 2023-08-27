#!/usr/bin/env bash
cd $(dirname $0)
FUZZLIB=/usr/local/bin/fuzzlib
cat $FUZZLIB\
 ../sets/mathz_sets.sty\
 ../sets/mathz_sets.tex\
 mathz_topological_spaces.sty > mathz_topological_spaces.prelude
fuzz -p mathz_topological_spaces.prelude mathz_topological_spaces
