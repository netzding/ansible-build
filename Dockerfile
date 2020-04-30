ARG ALPINE_TAG=latest
FROM alpine:${ALPINE_TAG}

RUN apk --no-cache add \
      curl \
      jq \
      git \
      make \
      rsync \
      openssh-client \
      python2 \
      py-pip \
      py3-netaddr \
      ansible \
      ansible-lint

RUN apk --no-cache add --virtual build-deps python-dev build-base wget && pip install pysphere && apk del build-deps
