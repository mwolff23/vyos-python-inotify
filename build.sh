#!/bin/sh
set -e

SRC=python-inotify

git clone -b "debian/0.2.10-1" https://salsa.debian.org/python-team/packages/python-inotify.git "$SRC"
cd "$SRC"

sudo mk-build-deps --install --tool "apt-get --yes --no-install-recommends"
exec dpkg-buildpackage -b -us -uc -tc
