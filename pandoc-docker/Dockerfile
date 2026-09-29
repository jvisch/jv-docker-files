FROM alpine

RUN apk --no-cache upgrade

RUN apk add --no-cache make

# RUN apk add --no-cache texlive
# RUN apk add --no-cache texlive-xetex
# RUN apk add --no-cache texlive-latexextra
# RUN apk add --no-cache texmf-dist-langeuropean

RUN apk add --no-cache texlive-full

# RUN texhash

RUN apk add --no-cache pandoc
RUN apk add --no-cache plantuml

RUN apk add --no-cache py3-pip
RUN python3 -m pip config set global.break-system-packages true
RUN pip install pandocfilters
RUN pip install pandoc-plantuml-filter

WORKDIR /sources/