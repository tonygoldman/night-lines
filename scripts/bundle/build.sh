#!/bin/bash

mkdir bundle
dpkg-deb --build resources/bundle night-lines.deb
