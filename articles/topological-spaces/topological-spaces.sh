#!/usr/bin/env bash
cd $(dirname $0)
pwd
cat ../../shared/fuzzlib\
 ../sets/sets.sty\
 ../sets/sets.tex\
 topological-spaces.sty > topological-spaces.prelude
fuzz -p topological-spaces.prelude topological-spaces