ARG ALPINE_TAG=latest
FROM alpine:${ALPINE_TAG}

RUN apk --no-cache add \
      curl \
      jq \
      git \
      make \
      rsync \
      openssh-client \
      ansible \
      ansible-lint \

