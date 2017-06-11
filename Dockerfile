FROM alpine

MAINTAINER Alex Fux <alexander@soluto.com>

RUN apk --no-cache update
RUN apk --no-cache add python py-pip py-setuptools ca-certificates groff less
RUN apk --no-cache add yarn
RUN apk --no-cache add zip
RUN apk --no-cache add openjdk-8-jre
RUN pip --no-cache-dir install awscli
RUN rm -rf /var/cache/apk/*
