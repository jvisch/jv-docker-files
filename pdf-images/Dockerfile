FROM alpine

RUN apk update && apk upgrade
RUN apk update && apk add poppler-utils py3-img2pdf

COPY ./convert.sh /

WORKDIR /sources/