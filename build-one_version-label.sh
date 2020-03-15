#!/usr/bin/env bash
VERSION=$2
LABEL=$3
TAG=$VERSION-$LABEL

mkdir -p tmp/$1/$TAG

cat $1/minor.sh | docker run -i --entrypoint="/bin/sh" $1:$TAG > tmp/$1/$TAG/minor.txt
cat $1/patch.sh | docker run -i --entrypoint="/bin/sh" $1:$TAG > tmp/$1/$TAG/patch.txt

export DOCKER_IMAGE_ID=$(docker build -q $1/$VERSION/$LABEL)

cat $1/minor.sh | docker run -i --entrypoint="/bin/sh" $DOCKER_IMAGE_ID > tmp/$1/$TAG/minor-$DOCKER_IMAGE_ID.txt
cat $1/patch.sh | docker run -i --entrypoint="/bin/sh" $DOCKER_IMAGE_ID > tmp/$1/$TAG/patch-$DOCKER_IMAGE_ID.txt

diff -b --unchanged-line-format= --old-line-format="- %L" --new-line-format="+ %L" tmp/$1/$TAG/minor.txt tmp/$1/$TAG/minor-$DOCKER_IMAGE_ID.txt > tmp/$1/minor.txt
diff -b --unchanged-line-format= --old-line-format="- %L" --new-line-format="+ %L" tmp/$1/$TAG/patch.txt tmp/$1/$TAG/patch-$DOCKER_IMAGE_ID.txt > tmp/$1/patch.txt
