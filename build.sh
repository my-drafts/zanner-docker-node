#!/bin/sh

docker  build  \
  --compress  \
  --tag="zanner/node:latest"  \
  .

docker images
