all:
	cd src; \
    [ ! -f configure ] && sh autogen.sh; \
    [ ! -f Makefile ] && $(CONFIGURE_HELPER); \
    make && make install

test:

clean:
	cd src; [ -f Makefile ] && make $@ || exit 0

distclean:
	cd src; [ -f Makefile ] && make $@ || exit 0
	cd src; [ -f configure ] && rm -f configure || exit 0
