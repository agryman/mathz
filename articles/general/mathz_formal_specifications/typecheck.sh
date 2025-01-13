#!/bin/zsh
cd $(dirname $0)
MATHPATH=../../math
FUZZLIB=/usr/local/lib/fuzzlib
cat $FUZZLIB\
 $MATHPATH/mathz_core/mathz_core.sty\
 $MATHPATH/mathz_core/mathz_core.tex\
 $MATHPATH/mathz_sets/mathz_sets.sty\
 $MATHPATH/mathz_sets/mathz_sets.tex\
 $MATHPATH/mathz_integers/mathz_integers.sty\
 $MATHPATH/mathz_integers/mathz_integers.tex\
 $MATHPATH/mathz_topological_spaces/mathz_topological_spaces.sty\
 $MATHPATH/mathz_topological_spaces/mathz_topological_spaces.tex\
 $MATHPATH/mathz_groups/mathz_groups.sty\
 $MATHPATH/mathz_groups/mathz_groups.tex\
 $MATHPATH/mathz_real_numbers/mathz_real_numbers.sty\
 $MATHPATH/mathz_real_numbers/mathz_real_numbers.tex\
 mathz_formal_specifications.sty > mathz_formal_specifications.prelude
fuzz -p mathz_formal_specifications.prelude mathz_formal_specifications
