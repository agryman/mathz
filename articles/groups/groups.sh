#!/usr/bin/env bash
cd $(dirname $0)
pwd
cat ../../shared/fuzzlib\
 ../sets/sets.sty\
 ../sets/sets.tex\
 groups.sty > groups.prelude
fuzz -p groups.prelude groups