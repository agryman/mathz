#!/bin/zsh
cd $(dirname $0)
FUZZLIB=/usr/local/lib/fuzzlib
cat $FUZZLIB\
  mathz-core.sty > mathz-core.prelude
fuzz -p mathz-core.prelude mathz-core
