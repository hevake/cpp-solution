apps += base event eventx util
apps += network
apps += terminal
apps += log
apps += main
apps += sample

all test clean distclean:
	@for i in $(apps); do \
		[ ! -d $$i ] || $(MAKE) -C $$i $@ || exit $$? ; \
	done
