apps += hello-world
apps += cpp-tbox-sample

all test clean distclean:
	@for i in $(apps); do \
		[ ! -d $$i ] || $(MAKE) -C $$i $@ || exit $$? ; \
	done
