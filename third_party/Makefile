# DESTDIR, prefix, PREFIX 三个参数影响第三方的构建输出
# 如非必要，请勿改动
export DESTDIR ?= $(STAGING_DIR)
export prefix ?=
export PREFIX ?=

targets += nlohmann
#targets += mosquitto
#targets += libevent
#targets += libev
#targets += cJSON

all test clean distclean:
	@for i in $(targets); do \
		[ ! -d $$i ] || $(MAKE) -C $$i $@ || exit $$? ; \
	done
