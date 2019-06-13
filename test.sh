#!/usr/bin/env bash

cd bin
tar -xvzf tt.tar.gz
cd ..

docker run --rm \
  -v "$PWD":/var/task \
  lambci/lambda:nodejs10.x test.handler
