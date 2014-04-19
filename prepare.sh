#!/bin/sh

# install build requires
apt-get install patch scons flex bison make vim unzip
apt-get install libexpat-dev libgettextpo0 libcurl4-openssl-dev
apt-get install python-dev autoconf automake build-essential libtool
apt-get install libevent-dev libxml2-dev libxslt-dev
apt-get install uml-utilities python-lxml redis-server
apt-get install python-pip

# get git-repo (requires git >= 1.7.2)
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo

pip install --upgrade setuptools
pip install gevent geventhttpclient==1.0a thrift
pip install netifaces fabric argparse
pip install stevedore xmltodict python-keystoneclient
pip install kazoo pyinotify

