#!/usr/bin/env bash
cd $(dirname $0)
FUZZLIB=/usr/local/bin/fuzzlib
cat $FUZZLIB\
 ../sets/mathz_sets.sty\
 ../sets/mathz_sets.tex\
 ../topological_spaces/mathz_topological_spaces.sty\
 ../topological_spaces/mathz_topological_spaces.tex\
 ../groups/mathz_groups.sty\
 ../groups/mathz_groups.tex\
 ../real_numbers/mathz_real_numbers.sty\
 ../real_numbers/mathz_real_numbers.tex\
 mathz_vector_spaces.sty > mathz_vector_spaces.prelude
fuzz -p mathz_vector_spaces.prelude mathz_vector_spaces
