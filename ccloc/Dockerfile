FROM golang

RUN go install golang.org/x/tools/cmd/goimports@latest

WORKDIR /ccloc/
COPY ./ccloc/ /ccloc/
RUN make install

