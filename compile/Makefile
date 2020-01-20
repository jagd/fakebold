.PHONY: build

build: .unzip-src .unzip-mt1
	cp fonts/source/public/lm/* mt1
	- for i in perl mpost gawk t1asm; do ln -s /usr/bin/$$i mt1/$$i.exe ; done
	- mkdir mt1/pfb
	export BOP_UTI=`pwd`; cd mt1 ; for font in lmr10 ; do wine cmd /c mkfont1 $$font pfb ; done

.unzip-src: lm2004mt1.zip
	unzip $<
	cp mt1/extra/* mt1
	touch $@

.unzip-mt1: metatype1-ver056.zip
	unzip $<
	touch $@

lm2004mt1.zip:
	wget http://tug.ctan.org/fonts/lm/lm2004mt1.zip

metatype1-ver056.zip:
	wget http://www.tug.org/texlive//devsrc/Master/texmf-dist/source/metapost/metatype1/metatype1-ver056.zip
