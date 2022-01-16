#!/usr/bin/env bash
cd $(dirname $0)
pwd
cat ../../shared/fuzzlib\
 ../sets/sets.sty\
 ../sets/sets.tex\
 ../topological-spaces/topological-spaces.sty\
 ../topological-spaces/topological-spaces.tex\
 ../groups/groups.sty\
 ../groups/groups.tex\
 ../real-numbers/real-numbers.sty\
 ../real-numbers/real-numbers.tex\
 complex-numbers.sty > complex-numbers.prelude
fuzz -p complex-numbers.prelude complex-numbers