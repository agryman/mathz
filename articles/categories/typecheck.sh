#!/usr/bin/env bash
cd $(dirname $0)
FUZZLIB=/usr/local/bin/fuzzlib
cat $FUZZLIB\
 ../core/mathz_core.sty\
 ../core/mathz_core.tex\
 mathz_categories.sty > mathz_categories.prelude
fuzz -p mathz_categories.prelude mathz_categories
