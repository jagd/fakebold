#!/bin/sh

# ExpandStroke by 2*6 is OK, with 3*6 there seems to be no problem and looks
# similar to the books using T3 CM (e.g. Toroidally Confined Plasma by R.B.White)

trap "killall fontforge" SIGINT

fakebold() {
    for i in origin/* ;  do
        fontforge adjust-lm-stroke.pe "${i#origin/}" &
    done
}

rm origin > /dev/null

ln -s otf origin
fakebold

wait
rm origin

ln -s pfb origin
fakebold

wait
rm origin
