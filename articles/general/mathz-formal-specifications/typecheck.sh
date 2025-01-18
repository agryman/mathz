#!/bin/zsh
cd $(dirname $0)
MATHPATH=../../math
FUZZLIB=/usr/local/lib/fuzzlib
cat $FUZZLIB\
 $MATHPATH/mathz-core/mathz-core.sty\
 $MATHPATH/mathz-core/mathz-core.tex\
 $MATHPATH/mathz-sets/mathz-sets.sty\
 $MATHPATH/mathz-sets/mathz-sets.tex\
 $MATHPATH/mathz-integers/mathz-integers.sty\
 $MATHPATH/mathz-integers/mathz-integers.tex\
 $MATHPATH/mathz-topological-spaces/mathz-topological-spaces.sty\
 $MATHPATH/mathz-topological-spaces/mathz-topological-spaces.tex\
 $MATHPATH/mathz-groups/mathz-groups.sty\
 $MATHPATH/mathz-groups/mathz-groups.tex\
 $MATHPATH/mathz-real-numbers/mathz-real-numbers.sty\
 $MATHPATH/mathz-real-numbers/mathz-real-numbers.tex\
 mathz-formal-specifications.sty > mathz-formal-specifications.prelude
fuzz -p mathz-formal-specifications.prelude mathz-formal-specifications
