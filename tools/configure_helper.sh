#!/bin/sh

CCFLAGS="-I$STAGING_INCLUDE -I$CONSTANT_INCLUDE"
CLDFLAGS="-L$STAGING_LIB -L$CONSTANT_LIB"

./configure \
    --libdir=/lib \
    --includedir=/include \
    --bindir=/bin \
    CC="${TOOLCHAIN_BIN_PREFIX}gcc" \
    CXX="${TOOLCHAIN_BIN_PREFIX}g++" \
    CFLAGS="$CCFLAGS" \
    CPPFLAGS="$CCFLAGS" \
    LDFLAGS="$CLDFLAGS" \
    BUILD_CC="$CC" \
    --host=${CONFIGURE_HOST} \
    $*
