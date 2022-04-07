#!/bin/bash

set -e

HERE=$(dirname $(realpath $0))

cd "$HERE"

set -x

/root/lopper/lopper.py -f --enhanced -i lops-zephyr-secure.dts nrf5340_system.dts sdt.dts
