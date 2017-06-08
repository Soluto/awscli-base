FROM alpine

MAINTAINER Alex Fux <alexander@soluto.com>

RUN apk --no-cache update
RUN apk --no-cache add python py-pip py-setuptools ca-certificates groff less yarn zip
RUN pip --no-cache-dir install awscli
RUN rm -rf /var/cache/apk/*
