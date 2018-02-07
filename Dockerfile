# debian

FROM debian

WORKDIR syssec-build/

COPY . ./

# install the required packages

RUN apt-get update && apt-get --no-install-recommends install -y \
    texlive-base \
    texlive-latex-recommended \
    texlive-latex-extra \
    texlive-science \
    texlive-bibtex-extra \
    biber \
    latexmk \
    wget \
    xzdec

# install the packages

RUN tlmgr init-usertree && \
    tlmgr install \ 
    ccicons \
    tracklang
