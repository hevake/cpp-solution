targets += libevent
targets += nlohmann
targets += cJSON
targets += mosquitto

all test clean distclean:
	@for i in $(targets); do \
		[ ! -d $$i ] || $(MAKE) -C $$i $@ || exit $$? ; \
	done
