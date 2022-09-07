#!/usr/bin/env bash
cd $(dirname $0)
pwd
cat ../../shared/fuzzlib\
 ../sets/mathz-sets.sty\
 ../sets/sets.tex\
 ../groups/mathz-groups.sty\
 ../groups/groups.tex\
 ../topological-spaces/mathz-topological-spaces.sty\
 ../topological-spaces/topological-spaces.tex\
 ../real-numbers/mathz-real-numbers.sty\
 ../real-numbers/real-numbers.tex\
 mathz-manifolds.sty > manifolds.prelude
fuzz -p manifolds.prelude manifolds
