FROM alpine

RUN  apk update && apk upgrade
RUN apk add ghc

# For newlines in ghci 
ENV TERM=dumb

WORKDIR /sources/
