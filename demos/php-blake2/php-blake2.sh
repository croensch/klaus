#!/bin/sh
set -e

yum install -y git php-devel gcc make

git clone https://github.com/strawbrary/php-blake2.git
cd php-blake2
phpize
./configure --enable-blake2
make && make install

echo "extension=blake2.so" > /etc/php.d/50-blake2.ini

cd ..
rm -rf php-blake2

yum remove -y git php-devel gcc make
yum clean all
