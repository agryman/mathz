#!/usr/bin/env bash
cd $(dirname $0)
pwd
cat ../../shared/fuzzlib\
 ../sets/sets.sty\
 ../sets/sets.tex\
 ../groups/groups.sty\
 ../groups/groups.tex\
 ../topological-spaces/topological-spaces.sty\
 ../topological-spaces/topological-spaces.tex\
 ../real-numbers/real-numbers.sty\
 ../real-numbers/real-numbers.tex\
 manifolds.sty > manifolds.prelude
fuzz -p manifolds.prelude manifolds