#!/bin/sh

scriptroot=`pwd`
cd build-root
repo init -u git@github.com:Juniper/contrail-vnc
repo sync
python third_party/fetch_packages.py
(cd third_party/thrift-*; touch configure.ac README ChangeLog; autoreconf --force --install)
scons .
cd ${scriptroot}

