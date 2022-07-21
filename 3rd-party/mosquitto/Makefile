all:
	$(MAKE_PATCH)
	cd src; make; make install

test:

clean:
	cd src; [ -f Makefile ] && make $@ || exit 0

distclean:
	cd src; [ -f Makefile ] && make $@ || exit 0
	cd src; [ -f configure ] && rm -f configure || exit 0
