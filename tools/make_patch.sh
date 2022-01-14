#!/bin/sh

cd src;

[ -f .patched ] && exit

for p in `ls ../patches/*.patch`; do
    patch -p1 < $p
done

touch .patched
