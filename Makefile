export TOP_DIR := $(PWD)

include config.mk
include tools/build_env.mk

#targets += third_party
targets += apps

.PHONY: all test clean distclean $(targets)

all: $(targets)

$(targets):
	$(MAKE) -C $@

test: $(targets)
	@for i in $(targets); do \
		[ ! -d $$i ] || $(MAKE) -C $$i $@ || exit $$? ; \
	done

clean:
	rm -rf $(OUTPUT_DIR)

distclean: clean
	rm -rf $(INSTALL_DIR) $(STAGING_DIR)
