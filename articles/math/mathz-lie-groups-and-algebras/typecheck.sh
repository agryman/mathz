#!/bin/zsh
cd $(dirname $0)
FUZZLIB=/usr/local/lib/fuzzlib
cat $FUZZLIB\
 ../mathz-core/mathz-core.sty\
 ../mathz-core/mathz-core.tex\
 mathz-lie-groups-and-algebras.sty > mathz-lie-groups-and-algebras.prelude
fuzz -p mathz-lie-groups-and-algebras.prelude mathz-lie-groups-and-algebras
