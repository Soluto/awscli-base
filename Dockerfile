FROM alpine
RUN apk --no-cache update
RUN apk --no-cache add python py-pip py-setuptools ca-certificates groff less
RUN pip --no-cache-dir install awscli
RUN rm -rf /var/cache/apk/*
