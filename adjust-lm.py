#!/usr/bin/env python3

def process():
    import os
    import re
    import fontforge as ff
    originDir = "origin"
    for filename in filter(
        lambda s: re.match("""lmroman.*\.otf""", s, flags=re.I),
        os.listdir(originDir)
    ):
        ff.open(originDir + '/' + filename)
        ff.activeFont().selection.all()
        ff.activeFont().changeWeight(12)
        ff.activeFont().removeOverlap()
        ff.activeFont().autoHint()
        ff.activeFont().generate(filename)
        ff.activeFont().close()
    # TODO: Add lower script to LM-Math
    filename = "latinmodern-math.otf"
    ff.open(originDir + '/' + filename)
    ff.activeFont().selection.all()
    ff.activeFont().changeWeight(12)
    ff.activeFont().removeOverlap()
    ff.activeFont().autoHint()
    ff.activeFont().generate(filename)
    ff.activeFont().close()

if __name__ == "__main__":
    print("Shell script is preferred, since this job can easily be parallized")
    # process()
