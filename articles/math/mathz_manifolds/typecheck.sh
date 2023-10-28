#!/usr/bin/env bash
cd $(dirname $0)
FUZZLIB=/usr/local/bin/fuzzlib
cat $FUZZLIB\
 ../mathz_core/mathz_core.sty\
 ../mathz_core/mathz_core.tex\
 ../mathz_sets/mathz_sets.sty\
 ../mathz_sets/mathz_sets.tex\
 ../mathz_integers/mathz_integers.sty\
 ../mathz_integers/mathz_integers.tex\
 ../mathz_groups/mathz_groups.sty\
 ../mathz_groups/mathz_groups.tex\
 ../mathz_topological_spaces/mathz_topological_spaces.sty\
 ../mathz_topological_spaces/mathz_topological_spaces.tex\
 ../mathz_real_numbers/mathz_real_numbers.sty\
 ../mathz_real_numbers/mathz_real_numbers.tex\
 mathz_manifolds.sty > mathz_manifolds.prelude
fuzz -p mathz_manifolds.prelude mathz_manifolds
