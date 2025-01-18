#!/bin/zsh
cd $(dirname $0)
FUZZLIB=/usr/local/lib/fuzzlib
cat $FUZZLIB\
 ../mathz-core/mathz-core.sty\
 ../mathz-core/mathz-core.tex\
 ../mathz-sets/mathz-sets.sty\
 ../mathz-sets/mathz-sets.tex\
 mathz-integers.sty > mathz-integers.prelude
fuzz -p mathz-integers.prelude mathz-integers
