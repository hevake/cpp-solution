MODULE_BUILD_DIR=${BUILD_DIR}/mosquitto

all:
	$(MAKE_PATCH); \
	mkdir -p ${MODULE_BUILD_DIR}; \
	cp -a src/* ${MODULE_BUILD_DIR}; \
	cd ${MODULE_BUILD_DIR}; \
	make install_lib

test:

clean:
	[ -d ${MODULE_BUILD_DIR} ] && cd ${MODULE_BUILD_DIR} && \
	[ -f Makefile ] && make $@ || exit 0

distclean:
	rm -rf ${MODULE_BUILD_DIR}
