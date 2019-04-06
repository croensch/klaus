#!/bin/sh
set -e

yum install -y git php-devel gcc make

git clone --recursive https://github.com/charlesportwoodii/php-argon2-ext.git
cd php-argon2-ext

cd ext/argon2
CFLAGS="-fPIC" make -j1 OPTTARGET=i686
make test

rm libargon2.so.1
cd ../..

phpize
./configure --with-argon2
make && make install

echo "extension=argon2.so" > /etc/php.d/50-argon2.ini

cd ..
rm -rf php-argon2

yum remove -y git php-devel gcc make
yum clean all
