#!/bin/sh
set -e

wget -q 'https://files.pythonhosted.org/packages/35/cb/6d564f8a3f25d9516298dce151670d01e43a4b3b769c1c15f40453179cd5/inotify-0.2.10.tar.gz'
tar xf inotify-0.2.10.tar.gz

SRC="inotify-0.2.10"
cd "$SRC"

python3 setup.py --command-packages=stdeb.command bdist_deb
mv -v -t ".." deb_dist/*.deb
