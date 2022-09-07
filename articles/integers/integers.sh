#!/usr/bin/env bash
cd $(dirname $0)
pwd
cat ../../shared/fuzzlib\
 ../sets/mathz-sets.sty\
 ../sets/sets.tex\
 mathz-integers.sty > integers.prelude
fuzz -p integers.prelude integers
