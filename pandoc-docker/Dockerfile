FROM ubuntu

# update system
RUN apt update 
RUN apt upgrade -y

# Set language
RUN apt -y install language-pack-nl
RUN locale-gen nl_NL.UTF-8
RUN update-locale nl_NL.UTF-8

ENV LANG=nl_NL.UTF-8  
ENV LANGUAGE=nl_NL  
ENV LC_ALL=nl_NL.UTF-8

# basic components
RUN apt install -y wget
RUN apt install -y make
RUN apt install -y git
RUN DEBIAN_FRONTEND=noninteractive apt install -y tzdata

# TexLive
RUN apt install -y texlive
RUN apt install -y texlive-xetex
RUN apt install -y texlive-lang-european

# python
RUN apt install -y python3-pip
RUN apt install -y python-is-python3

# Plantuml
RUN apt install -y plantuml

# ICA-docs (custom latex document classes)
RUN git clone https://bitbucket.aimsites.nl/scm/esdd/ica-docs.git /usr/share/texlive/texmf-dist/tex/latex/ica-docs
RUN texhash
# copy fonts
RUN cp -rfv /usr/share/texlive/texmf-dist/tex/latex/ica-docs/lettertypes/ /usr/share/fonts/

# install pandoc
WORKDIR /tmp/
ARG VERSION=3.6.3
RUN wget -O pandoc.deb https://github.com/jgm/pandoc/releases/download/${VERSION}/pandoc-${VERSION}-1-amd64.deb
RUN dpkg -i pandoc.deb

# Workaround for "error: externally-managed-environment"
# https://elliottback.medium.com/python-this-environment-is-externally-managed-error-and-docker-6062aac20a6e
RUN rm /usr/lib/python*/EXTERNALLY-MANAGED

# Python filters
RUN pip install pandocfilters

# Plantuml filter
RUN pip install pandoc-plantuml-filter

ENV LC_TIME=nl_nl

# Working dir
WORKDIR /sources/