FROM ubuntu

# update system
RUN apt update 
RUN apt upgrade -y

# basic components
RUN apt install -y wget
RUN apt install -y make
RUN apt install -y git
RUN DEBIAN_FRONTEND=noninteractive apt install -y tzdata

# TexLive
RUN apt install -y texlive
RUN apt install -y texlive-xetex
RUN apt install -y texlive-lang-european

# ICA-docs (custom latex document classes)
RUN git clone https://bitbucket.aimsites.nl/scm/esdd/ica-docs.git /usr/share/texlive/texmf-dist/tex/latex/ica-docs
RUN texhash
# copy fonts
RUN cp -rfv /usr/share/texlive/texmf-dist/tex/latex/ica-docs/lettertypes/ /usr/share/fonts/

# install pandoc
WORKDIR /tmp/
ARG VERSION=2.17.1.1
RUN wget -O pandoc.deb https://github.com/jgm/pandoc/releases/download/${VERSION}/pandoc-${VERSION}-1-amd64.deb
RUN dpkg -i pandoc.deb

# Python filters
RUN apt install -y python3-pip
RUN apt install -y python-is-python3
RUN pip install pandocfilters

# Plantuml
RUN apt install -y plantuml
RUN pip install pandoc-plantuml-filter

# Working dir
WORKDIR /sources/