#!/usr/bin/env bash
cd $(dirname $0)
pwd
cat ../../shared/fuzzlib\
 ../core/mathz_core.sty\
 ../core/mathz_core.tex\
 mathz_lie_groups_and_algebras.sty > mathz_lie_groups_and_algebras.prelude
fuzz -p mathz_lie_groups_and_algebras.prelude mathz_lie_groups_and_algebras
