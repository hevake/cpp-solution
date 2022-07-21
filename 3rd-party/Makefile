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

targets += cpp-tbox/base \
		   cpp-tbox/event \
		   cpp-tbox/eventx \
		   cpp-tbox/util \
		   cpp-tbox/log \
		   cpp-tbox/network \
		   cpp-tbox/terminal \
		   cpp-tbox/main \

all test clean distclean:
	@for i in $(targets); do \
		[ ! -d $$i ] || $(MAKE) -C $$i $@ || exit $$? ; \
	done
