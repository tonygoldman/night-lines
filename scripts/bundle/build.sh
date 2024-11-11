#!/bin/bash
set -e 

sudo rm -rf bundle
mkdir -p bundle/build
cp -r resources/bundle/* bundle/build/

# The jetson is based on arm64 architecture so we must set up an emulated environment to build the docker
docker run --rm --privileged multiarch/qemu-user-static --reset -p yes

docker build --platform=arm64 -f docker/dockerfiles/night_lines.dockerfile -t night_lines:latest .
mkdir -p bundle/build/tmp && docker save -o bundle/build/tmp/night_lines_docker.tar.gz night_lines:latest
dpkg-deb --build bundle/build bundle/night-lines.deb
sudo rm -rf bundle/build
