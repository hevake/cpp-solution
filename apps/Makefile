apps += base event eventx
apps += network
apps += main

all test clean distclean:
	@for i in $(apps); do \
		[ ! -d $$i ] || $(MAKE) -C $$i $@ || exit $$? ; \
	done
