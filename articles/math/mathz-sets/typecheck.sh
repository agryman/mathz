#!/bin/zsh
cd $(dirname $0)
FUZZLIB=/usr/local/lib/fuzzlib
cat $FUZZLIB\
 ../mathz-core/mathz-core.sty\
 ../mathz-core/mathz-core.tex\
 mathz-sets.sty > mathz-sets.prelude
fuzz -p mathz-sets.prelude mathz-sets
