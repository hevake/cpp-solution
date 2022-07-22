export TOP_DIR := $(PWD)

include config.mk
include tools/build_env.mk

targets += 3rd-party
targets += apps

.PHONY: all test clean distclean prepare $(targets)

all: prepare $(targets)
	./tools/make_install.sh

prepare:
	$(PLATFORM_DIR)/tools/prepare.sh

$(targets):
	$(MAKE) -C $@

test: $(targets)
	@for i in $(targets); do \
		[ ! -d $$i ] || $(MAKE) -C $$i $@ || exit $$? ; \
	done

clean:
	rm -rf $(OUTPUT_DIR)
	make -C 3rd-party clean

distclean: clean
	rm -rf $(INSTALL_DIR) $(STAGING_DIR)
	make -C 3rd-party distclean
