#!/usr/bin/env bash
cd $(dirname $0)
pwd
cat ../../shared/fuzzlib\
 ../sets/mathz-sets.sty\
 ../sets/sets.tex\
 mathz-topological-spaces.sty > topological-spaces.prelude
fuzz -p topological-spaces.prelude topological-spaces
