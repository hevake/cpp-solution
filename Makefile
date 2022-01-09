export TOP_DIR := $(PWD)
export APPS_DIR := $(PWD)/apps

include config.mk

export PLATFORM_DIR := $(TOP_DIR)/platforms/$(PLATFORM)
export STAGING_DIR := $(PLATFORM_DIR)/staging_files
export INSTALL_DIR := $(PLATFORM_DIR)/install_files

include $(PLATFORM_DIR)/build_tools/env.mk

targets += third_party
targets += apps

.PHONY: all test clean distclean $(appy_y)

all:
	$(PLATFORM_DIR)/build_tools/pre_build.sh
	rm -rf $(STAGING_DIR) $(INSTALL_DIR)
	mkdir -p $(STAGING_DIR) $(INSTALL_DIR)
	cd $(STAGING_DIR) && mkdir -p include lib bin;
	cd $(INSTALL_DIR) && mkdir -p include lib bin;
	@for t in $(targets); do \
		[ ! -d $$t ] || $(MAKE) -C $$t $@ || exit $$? ;\
	done
	./tools/make_install.sh

test clean:
	@for i in $(subdir_y); do \
		[ ! -d $$i ] || $(MAKE) -C $$i $@ || exit $$? ; \
	done

$(subdir_y):
	$(MAKE) -C $@

distclean:
	@for i in $(subdir_y); do \
		[ ! -d $$i ] || $(MAKE) -C $$i $@ || exit $$? ; \
	done
