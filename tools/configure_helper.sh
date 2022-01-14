#!/bin/sh

CCFLAGS="-I$STAGING_INCLUDE -I$CONSTANT_INCLUDE"
CLDFLAGS="-L$STAGING_LIB -L$CONSTANT_LIB"

./configure \
    --libdir=$STAGING_LIB \
    --includedir=$STAGING_INCLUDE \
    --bindir=$STAGING_FILES/bin \
    CC="${TOOLCHAIN_BIN_PREFIX}gcc" \
    CXX="${TOOLCHAIN_BIN_PREFIX}g++" \
    CFLAGS="$CCFLAGS" \
    CPPFLAGS="$CCFLAGS" \
    LDFLAGS="$CLDFLAGS" \
    BUILD_CC="$CC" \
    --host=arm-linux $*
