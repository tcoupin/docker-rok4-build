#!/bin/bash

if [[ ! -d /rok4 ]]
then
	echo "Please mount a volume at /rok4"
	echo "ex : docker run -v ./rok4:/rok4 rok4-build"
	exit 0
fi
wget http://www.rok4.org/data/src/rok4-src.zip
unzip rok4-src.zip
cd rok*
mkdir build
cd build
cmake .. -DBUILD_BE4=FALSE -DBUILD_DOC=FALSE -DCMAKE_INSTALL_PREFIX=/rok4
make
make install

