# based on https://hub.docker.com/r/aergus/latex/dockerfile

FROM debian:testing 

ARG USERNAME=latex 
ARG USERHOME=/home/latex 
ARG USERID=1000 
ARG USERGECOS=LaTEX 

RUN adduser \
  --home "$USERHOME" \
  --uid $USERID \
  --gecos "$USERGECOS" \
  --disabled-password \
  "$USERNAME"

ARG WGET=wget 
ARG GIT=git 
ARG MAKE=make 
ARG PANDOC=pandoc 
ARG PYGMENTS=python-pygments 

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update && \
    apt-get install -y --no-install-recommends --auto-remove \
    # install full texlive. Slimming down would be nice but seems a bit of a
    # hassle
    texlive-full \
    # let's use a slim variant?
    texlive-base \
    texlive-latex-recommended \
    texlive-latex-extra \
    texlive-science \
    texlive-bibtex-extra \
    biber \
    latexmk \
    wget \
    ca-certificates \
    xzdec \
    xz-utils \
    gpg \
    # some auxiliary tools
    "$WGET" \ 
    "$GIT" \ 
    "$MAKE" \ 
    # markup format conversion tool 
    #"$PANDOC" \ 
    # Required for syntax highlighting using minted. 
    "$PYGMENTS" && \ 
    # Removing documentation packages *after* installing them is kind of hacky, 
    # but it only adds some overhead while building the image. 
    apt-get -q --purge remove -y .\*-doc$ && \ 
    # Remove more unnecessary stuff 
    apt-get clean -y && \
    rm -rf /var/lib/apt/lists/*

# ARG FILENAME=syssec-thesis.tex

# in case we don't install texlive-full, we need to install some more package,
# which we can do with tlmgr. Somehow this doesn't work though.
#
## initializes tlmgr
#RUN tlmgr init-usertree
#
## install the packages
#RUN tlmgr --usermode install \ 
#    ccicons \
#    tracklang

USER "$USERNAME"

VOLUME ["/document"]
WORKDIR "/document"

# CMD latexmk $FILENAME
