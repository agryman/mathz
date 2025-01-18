#!/bin/zsh
cd $(dirname $0)
FUZZLIB=/usr/local/lib/fuzzlib
cat $FUZZLIB\
 ../mathz-core/mathz-core.sty\
 ../mathz-core/mathz-core.tex\
 ../mathz-sets/mathz-sets.sty\
 ../mathz-sets/mathz-sets.tex\
 ../mathz-integers/mathz-integers.sty\
 ../mathz-integers/mathz-integers.tex\
 ../mathz-topological-spaces/mathz-topological-spaces.sty\
 ../mathz-topological-spaces/mathz-topological-spaces.tex\
 ../mathz-groups/mathz-groups.sty\
 ../mathz-groups/mathz-groups.tex\
 ../mathz-real-numbers/mathz-real-numbers.sty\
 ../mathz-real-numbers/mathz-real-numbers.tex\
 mathz-vector-spaces.sty > mathz-vector-spaces.prelude
fuzz -p mathz-vector-spaces.prelude mathz-vector-spaces
