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
 real-numbers.sty > real-numbers.prelude
fuzz -p real-numbers.prelude real-numbers