#!/bin/sh

docker  ps  -a

docker  run  \
  --detach  \
  --env-file=./docker/env.list  \
  --hostname=localhost  \
  --interactive=true  \
  --name=node  \
  --publish=10081:80  \
  --restart=always  \
  --tty=true  \
  --volume=$(pwd)/data:/data  \
  --volume=$(pwd)/docker/enterpoint.sh:/docker/enterpoint.sh  \
  zanner/node:latest

docker  ps

# more options:
#
#  --cpus="2"  \
#  --memory="256m"  \
#  --memory-swap="512m"  \
#  --storage-opt size=2G  \
