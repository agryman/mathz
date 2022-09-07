#!/usr/bin/env bash
cd $(dirname $0)
pwd
cat ../../shared/fuzzlib\
 ../sets/mathz-sets.sty\
 ../sets/sets.tex\
 ../integers/mathz-integers.sty\
 ../integers/integers.tex\
 mathz-groups.sty > groups.prelude
fuzz -p groups.prelude groups
