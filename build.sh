#!/bin/sh

export K6_VERSION=v0.29.0

docker build --build-arg K6_VERSION -t k6-lambda-layer .
docker run --rm k6-lambda-layer cat /tmp/k6-${K6_VERSION}.zip > ./layer.zip
