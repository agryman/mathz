#!/usr/bin/env bash
cd $(dirname $0)
pwd
cat ../../shared/fuzzlib\
 mathz-sets.sty > sets.prelude
fuzz -p sets.prelude sets