#!/usr/bin/env bash
cd $(dirname $0)
pwd
cat ../../shared/fuzzlib\
 ../sets/sets.sty\
 ../sets/sets.tex\
 ../groups/groups.sty\
 ../groups/groups.tex\
 integers.sty > integers.prelude
fuzz -p integers.prelude integers