#!/bin/sh

# ExpandStroke by 2*6 is OK, with 3*6 there seems to be no problem and looks
# similar to the books using T3 CM (e.g. Toroidally Confined Plasma by R.B.White)

for i in origin/lmroman*.otf ;  do
    fontforge adjust-lm-stroke.pe "${i#origin/}" 3 6 &
done

# \symscr{L} would have problem with 3*6, switch to 1*18 for math
fontforge adjust-lm-stroke.pe latinmodern-math.otf 1 18 &

wait
