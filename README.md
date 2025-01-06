# About the server
This is an Open Source server based on Heroserv, recognized OTServ in Brazil in the years of 2010.

It's a modified map, with custom weapons and spells, you can edit anything you want.

# How to compile on linux:
```sh
git clone https://github.com/s3kk/Heromassa.git
cd /Heromassa
./install-libs.sh
cd src
./autogen.sh
./configure --enable-mysql --enable-root-permission --enable-server-diag
./build.sh
```

# (OLD) Video tutorial of "How to compile":
	* MSVC2010(Windows) - https://www.youtube.com/watch?v=ZxtvakQqTXs
	* Linux - https://www.youtube.com/watch?v=FWWQ1aAugJ0