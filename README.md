1. About the server
	* This server is based on the famous Heroserv, which reached 210 players online. If you think that it's not that much, you are wrong! Anyway, this is an awesome server.
	* It's a modified map, with custom weapons and spells, you can edit anything you want.

2. How to compile on Windows
	* MSVC tutorial -- https://www.youtube.com/watch?v=ZxtvakQqTXs

3. How to compile on linux:
	* apt-get install autoconf build-essential pkg-config automake libboost-all-dev libgmp3-dev libxml2-dev liblua5.1-0-dev libmysqlclient-dev libssl-dev libsqlite3-dev
	* cd /3777updates-master
	* chmod -R 777 src
	* cd src
	* ./autogen.sh
	* ./configure --enable-mysql --enable-root-permission --enable-server-diag
	* ./build.sh
	* https://www.youtube.com/watch?v=FWWQ1aAugJ0 -- TUTORIAL
