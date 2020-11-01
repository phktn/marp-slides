#!/usr/bin/env bash

cd $(dirname $0)/../

find -name "*.md" | xargs sed -i -e 's/\/\.assets\//https:\/\/marp.mizo0203.com\/.assets\//g'
