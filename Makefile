export TOP_DIR := $(PWD)

include config.mk
include tools/build_env.mk

targets += third_party
targets += apps

.PHONY: all test clean distclean prepare $(appy_y)

all: $(targets)
	./tools/make_install.sh

prepare:
	mkdir -p $(STAGING_DIR) $(INSTALL_DIR)
	cd $(STAGING_DIR) && mkdir -p include lib bin
	cd $(INSTALL_DIR) && mkdir -p include lib bin
	$(PLATFORM_DIR)/tools/pre_build.sh

$(targets): prepare
	$(MAKE) -C $@

test: $(targets)
	@for i in $(targets); do \
		[ ! -d $$i ] || $(MAKE) -C $$i $@ || exit $$? ; \
	done

clean:
	@for i in $(targets); do \
		[ ! -d $$i ] || $(MAKE) -C $$i $@ || exit $$? ; \
	done
	rm -rf $(STAGING_DIR)

distclean: clean
	@for i in $(targets); do \
		[ ! -d $$i ] || $(MAKE) -C $$i $@ || exit $$? ; \
	done
	rm -rf $(INSTALL_DIR); 
