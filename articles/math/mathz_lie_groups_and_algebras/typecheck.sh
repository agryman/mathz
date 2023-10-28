#!/usr/bin/env bash
cd $(dirname $0)
FUZZLIB=/usr/local/bin/fuzzlib
cat $FUZZLIB\
 ../mathz_core/mathz_core.sty\
 ../mathz_core/mathz_core.tex\
 mathz_lie_groups_and_algebras.sty > mathz_lie_groups_and_algebras.prelude
fuzz -p mathz_lie_groups_and_algebras.prelude mathz_lie_groups_and_algebras
