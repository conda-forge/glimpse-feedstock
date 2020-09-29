#!/usr/bin/env bash

autoconf

./configure --prefix="${PREFIX}" --enable-strip

# Building with multiple cores fails but the build is fast so it doesn't matter
make LDFLAGS="${LDFLAGS}"

make LDFLAGS="${LDFLAGS}" check

make LDFLAGS="${LDFLAGS}" install
