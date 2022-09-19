# DESTDIR, prefix, PREFIX 三个参数影响第三方的构建输出
# 如非必要，请勿改动
export DESTDIR ?= $(STAGING_DIR)
export prefix ?=
export PREFIX ?=

targets += nlohmann
#targets += cJSON
#targets += mosquitto
#targets += libevent
#targets += libev

targets += cpp-tbox/modules/base \
		   cpp-tbox/modules/event \
		   cpp-tbox/modules/eventx \
		   cpp-tbox/modules/util \
		   cpp-tbox/modules/log \
		   cpp-tbox/modules/network \
		   cpp-tbox/modules/terminal \
		   cpp-tbox/modules/main \

all test clean distclean:
	@for i in $(targets); do \
		[ ! -d $$i ] || $(MAKE) -C $$i $@ || exit $$? ; \
	done
