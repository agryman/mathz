#!/usr/bin/env bash
cd $(dirname $0)
pwd
cat ../../shared/fuzzlib\
 mathz-project.sty > mathz-project.prelude
fuzz -p mathz-project.prelude mathz-project
