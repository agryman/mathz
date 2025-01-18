#!/bin/zsh
cd $(dirname $0)
FUZZLIB=/usr/local/lib/fuzzlib
MATHZLIB=..
cat $FUZZLIB\
 $MATHZLIB/mathz-core/mathz-core.sty\
 $MATHZLIB/mathz-core/mathz-core.tex\
 $MATHZLIB/mathz-sets/mathz-sets.sty\
 $MATHZLIB/mathz-sets/mathz-sets.tex\
 $MATHZLIB/mathz-integers/mathz-integers.sty\
 $MATHZLIB/mathz-integers/mathz-integers.tex\
 $MATHZLIB/mathz-topological-spaces/mathz-topological-spaces.sty\
 $MATHZLIB/mathz-topological-spaces/mathz-topological-spaces.tex\
 $MATHZLIB/mathz-groups/mathz-groups.sty\
 $MATHZLIB/mathz-groups/mathz-groups.tex\
 $MATHZLIB/mathz-real-numbers/mathz-real-numbers.sty\
 $MATHZLIB/mathz-real-numbers/mathz-real-numbers.tex\
 mathz-rings.sty > mathz-rings.prelude
fuzz -p mathz-rings.prelude mathz-rings
