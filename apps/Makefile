apps += base event eventx util
apps += network
apps += main
apps += app_demo

all test clean distclean:
	@for i in $(apps); do \
		[ ! -d $$i ] || $(MAKE) -C $$i $@ || exit $$? ; \
	done
