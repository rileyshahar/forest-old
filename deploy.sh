#!/bin/bash

find output/* -not -name ".git" -not -path "*/.git/*" | xargs rm -rf
./build.sh

cd output
git add .
git commit -m "deploy @ $(git rev-parse --short HEAD)"
git push
