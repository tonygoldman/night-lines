#!/bin/bash

sudo rm -rf bundle
mkdir bundle
dpkg-deb --build resources/bundle bundle/night-lines.deb
