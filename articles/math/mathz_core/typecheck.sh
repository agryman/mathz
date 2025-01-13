#!/bin/zsh
cd $(dirname $0)
FUZZLIB=/usr/local/lib/fuzzlib
cat $FUZZLIB\
  mathz_core.sty > mathz_core.prelude
fuzz -p mathz_core.prelude mathz_core
