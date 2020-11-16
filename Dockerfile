FROM lambci/lambda-base:build

RUN yum update -y

RUN yum install -y curl

ARG K6_VERSION

RUN curl -O -L https://github.com/loadimpact/k6/releases/download/${K6_VERSION}/k6-${K6_VERSION}-linux64.tar.gz && \
  tar -xvf k6-${K6_VERSION}-linux64.tar.gz

RUN cd k6-${K6_VERSION}-linux64 && \
  mkdir bin && \
  mv k6 ./bin && \
  zip -yr /tmp/k6-${K6_VERSION}.zip ./*
