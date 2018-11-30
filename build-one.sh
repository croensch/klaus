#!/usr/bin/env bash

mkdir -p tmp/$1

cat $1/minor.sh | docker run -i --entrypoint="/bin/sh" $1:latest > tmp/$1/minor-latest.txt
cat $1/patch.sh | docker run -i --entrypoint="/bin/sh" $1:latest > tmp/$1/patch-latest.txt

export DOCKER_IMAGE_ID=$(docker build -q $1)

cat $1/minor.sh | docker run -i --entrypoint="/bin/sh" $DOCKER_IMAGE_ID > tmp/$1/minor-$DOCKER_IMAGE_ID.txt
cat $1/patch.sh | docker run -i --entrypoint="/bin/sh" $DOCKER_IMAGE_ID > tmp/$1/patch-$DOCKER_IMAGE_ID.txt

diff -b --unchanged-line-format= --old-line-format="- %L" --new-line-format="+ %L" tmp/$1/minor-latest.txt tmp/$1/minor-$DOCKER_IMAGE_ID.txt > tmp/$1/minor.txt
diff -b --unchanged-line-format= --old-line-format="- %L" --new-line-format="+ %L" tmp/$1/patch-latest.txt tmp/$1/patch-$DOCKER_IMAGE_ID.txt > tmp/$1/patch.txt
