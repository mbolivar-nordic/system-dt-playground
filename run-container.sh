#!/bin/bash

HERE=$(dirname $(realpath "$0"))

docker run -it \
       -v $HERE:/root/system-dt-playground \
       -w /root/system-dt-playground \
       lopper
