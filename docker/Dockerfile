FROM alpine:3 AS build

WORKDIR /build

RUN apk update && \
  apk upgrade && \
  apk add --no-cache sbcl
