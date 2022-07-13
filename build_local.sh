#!/bin/bash

declare -a StringArray=("amz" "deb" "ubuntu" "alpine")
for dist in ${StringArray[@]}; do
    docker build . -t local/test:${dist} -f ${dist}/Dockerfile
done
