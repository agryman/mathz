#!/usr/bin/env bash
cd $(dirname $0)
pwd
cat ../../shared/fuzzlib\
 ../sets/mathz-sets.sty\
 ../sets/sets.tex\
 ../topological-spaces/mathz-topological-spaces.sty\
 ../topological-spaces/topological-spaces.tex\
 ../groups/mathz-groups.sty\
 ../groups/groups.tex\
 mathz-real-numbers.sty > real-numbers.prelude
fuzz -p real-numbers.prelude real-numbers
