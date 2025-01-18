#!/bin/zsh
cd $(dirname $0)
FUZZLIB=/usr/local/lib/fuzzlib
cat $FUZZLIB\
 ../mathz-core/mathz-core.sty\
 ../mathz-core/mathz-core.tex\
 mathz-categories.sty > mathz-categories.prelude
fuzz -p mathz-categories.prelude mathz-categories
