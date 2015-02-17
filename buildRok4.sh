#!/bin/bash

VERSION="0.19.0"

if [[ ! -d /rok4 ]]
then
	echo "Please mount a volume at /rok4"
	echo "ex : docker run -v $(pwd)/rok4:/rok4 rok4-build"
	exit 0
fi
wget https://github.com/rok4/rok4/archive/${VERSION}.zip
unzip rok4-${VERSION}.zip
chmod -R 777 rok4-${VERSION}
cd rok4-${VERSION}
mkdir build
cd build
cmake .. -DBUILD_BE4=FALSE -DBUILD_DOC=FALSE -DCMAKE_INSTALL_PREFIX=/rok4
make
make install

