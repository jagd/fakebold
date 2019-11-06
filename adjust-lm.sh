#!/bin/sh

# ExpandStroke by 2*6 is OK, with 3*6 there seems to be no problem and looks
# similar to the books using T3 CM (e.g. Toroidally Confined Plasma by R.B.White)

for i in origin/lmroman*.otf origin/latinmodern-math.otf ;  do
    fontforge adjust-lm-stroke.pe "${i#origin/}" &
done

wait
