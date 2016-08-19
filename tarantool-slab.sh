#!/bin/bash

echo "box.slab.info()" |  tarantoolctl connect $1 2>/dev/null |grep $2 |  awk -F':' '{print $2}' |sed -e"s/ //g"
