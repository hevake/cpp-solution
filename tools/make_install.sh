#!/bin/sh

mkdir -p \
    $INSTALL_DIR/bin \
    $INSTALL_DIR/sbin \
    $INSTALL_DIR/lib \
    $INSTALL_DIR/etc \
    ;

[ ! -d $STAGING_DIR/bin ]   || cp -r $STAGING_DIR/bin/* $INSTALL_DIR/bin/
[ ! -d $STAGING_DIR/sbin ]  || cp -r $STAGING_DIR/sbin/* $INSTALL_DIR/sbin/
[ ! -d $STAGING_DIR/lib ]   || cp -r $STAGING_DIR/lib/lib*.so* $INSTALL_DIR/lib/
[ ! -d $STAGING_DIR/etc ]   || cp -r $STAGING_DIR/etc/* $INSTALL_DIR/etc/
