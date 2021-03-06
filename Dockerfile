FROM mhart/alpine-node:12.16.0
# FROM mhart/alpine-node:10

MAINTAINER Alex Fux <alexander@soluto.com>

RUN apk --no-cache update
RUN apk --no-cache add git
RUN apk --no-cache add python py-pip py-setuptools ca-certificates groff less
RUN apk --no-cache add zip
RUN apk --no-cache add openjdk8-jre
RUN apk --no-cache add jq
RUN pip --no-cache-dir install awscli
RUN rm -rf /var/cache/apk/*
