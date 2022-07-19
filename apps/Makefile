apps += cpp_tbox/base
apps += cpp_tbox/event
apps += cpp_tbox/eventx
apps += cpp_tbox/util
apps += cpp_tbox/network
apps += cpp_tbox/terminal
apps += cpp_tbox/log
apps += cpp_tbox/main
apps += sample

all test clean distclean:
	@for i in $(apps); do \
		[ ! -d $$i ] || $(MAKE) -C $$i $@ || exit $$? ; \
	done
