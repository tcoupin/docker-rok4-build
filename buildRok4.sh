#!/bin/bash


if [[ ! -d /rok4 ]]
then
	echo "Please mount a volume at /rok4"
	echo "ex : docker run -v $(pwd)/rok4:/rok4 rok4-build"
	exit 0
fi
nbfile=$(ls | wc -l)
if [[ "$nbfile" == "0" ]]
then
	wget https://github.com/rok4/rok4/archive/master.zip
	unzip master.zip
	chmod -R 777 rok4-*
	cd rok4-*
	mv * ../
	cd ..
fi
chmod -R 777 /rok4
mkdir build
cd build
cmake .. -DBUILD_BE4=FALSE -DBUILD_DOC=FALSE -DCMAKE_INSTALL_PREFIX=/rok4
make -j $(grep -c ^processor /proc/cpuinfo)
make install
