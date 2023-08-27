#!/usr/bin/env bash
cd $(dirname $0)
FUZZLIB=/usr/local/bin/fuzzlib
cat $FUZZLIB\
 ../sets/mathz_sets.sty\
 ../sets/mathz_sets.tex\
 ../groups/mathz_groups.sty\
 ../groups/mathz_groups.tex\
 ../topological_spaces/mathz_topological_spaces.sty\
 ../topological_spaces/mathz_topological_spaces.tex\
 ../real_numbers/mathz_real_numbers.sty\
 ../real_numbers/mathz_real_numbers.tex\
 mathz_manifolds.sty > mathz_manifolds.prelude
fuzz -p mathz_manifolds.prelude mathz_manifolds
