all:
	cd src; \
    [ ! -f configure ] && sh autogen.sh; \
    [ ! -f Makefile ] && $(CONFIGURE_HELPER); \
    make && make install

test:

clean distclean:
	cd src; [ -f Makefile ] && make $@ || exit 0
