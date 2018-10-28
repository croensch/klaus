#!/usr/bin/env bash

mkdir -p tmp

cat $1/minor.sh | docker run -i --entrypoint="/bin/sh" $1:latest > tmp/minor-latest.txt
cat $1/patch.sh | docker run -i --entrypoint="/bin/sh" $1:latest > tmp/patch-latest.txt

DOCKER_IMAGE_ID=$(docker build -q $1)

cat $1/minor.sh | docker run -i --entrypoint="/bin/sh" $DOCKER_IMAGE_ID > tmp/minor-$DOCKER_IMAGE_ID.txt
cat $1/patch.sh | docker run -i --entrypoint="/bin/sh" $DOCKER_IMAGE_ID > tmp/patch-$DOCKER_IMAGE_ID.txt

diff -b --unchanged-line-format= --old-line-format="- %L" --new-line-format="+ %L" tmp/minor-latest.txt tmp/minor-$DOCKER_IMAGE_ID.txt > tmp/minor.txt
diff -b --unchanged-line-format= --old-line-format="- %L" --new-line-format="+ %L" tmp/patch-latest.txt tmp/patch-$DOCKER_IMAGE_ID.txt > tmp/patch.txt
