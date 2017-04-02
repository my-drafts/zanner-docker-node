#!/bin/sh

docker rm -f node 2>/dev/null 
docker rmi -f zanner/node 2>/dev/null

docker images && docker ps -a

