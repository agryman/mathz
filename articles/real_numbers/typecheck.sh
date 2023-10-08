#!/usr/bin/env bash
cd $(dirname $0)
FUZZLIB=/usr/local/bin/fuzzlib
cat $FUZZLIB\
 ../core/mathz_core.sty\
 ../core/mathz_core.tex\
 ../sets/mathz_sets.sty\
 ../sets/mathz_sets.tex\
 ../integers/mathz_integers.sty\
 ../integers/mathz_integers.tex\
 ../topological_spaces/mathz_topological_spaces.sty\
 ../topological_spaces/mathz_topological_spaces.tex\
 ../groups/mathz_groups.sty\
 ../groups/mathz_groups.tex\
 mathz_real_numbers.sty > mathz_real_numbers.prelude
fuzz -p mathz_real_numbers.prelude mathz_real_numbers
