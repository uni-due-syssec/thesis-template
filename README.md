# SYSSEC thesis-template

Clone the git and compile with `latexmk`. Heavily inspired by the mas-template.
If you run into any issues with this template, open a new issue on github or
gitlab. Thanks.


## How to use this template

You can use this template to write your thesis or to write a report. 
Just change the option in the `syssec-thesis.tex` preamble.
The `syssec-thesis.tex` should only be used to glue together your document. 
Your writings should be put in seperate tex files and then use the 
`\input{path/to/.tex}` latex command to include the various files. 
This keeps your project structured and tidy.

You are free to modify this template, as much as you like.

If you want to compile your files, just invoke `latexmk` which will do the work for you. 
To clean up, just use `latexmk -c`. This will leave only the PDF file in the folder. 


## Installation

### Docker

We recommend you to use the provided Dockerfile to ease your use of this template.

0. [install Docker](https://docs.docker.com/install/)

1. Build the setup container with  
`$ docker build -t uni-due-syssec/tex-builder -f Dockerfile .` (The dot is part of the command!)  
This needs only to be done once.
    

2. Invoke `latexmk` in the docker container with   
`$ docker run --rm -v $(pwd):/document/:z uni-due-syssec/tex-builder /bin/sh -c 'latexmk' `

We also provide you with the `compile.sh` script, which automatically compiles your document for you.

Invoke the script with `$ sh compile.sh`.

### Debian Package Dependencies

If you are on a Debian based system, install these packages from the repositories:

```sh
apt install -y \
    texlive-base \
    texlive-latex-recommended \
    texlive-latex-extra \
    texlive-science \
    texlive-bibtex-extra \
    latexmk \
    biber \
```

You will also need the `ccicons` and `tracklang` package. 
Both can be found in the tlmgr repositories.

The `needed_package.sh` script will print a list of all required TeX packages.

<!--
whats up with this?

```sh
tlmgr install missingpackage.sty
```

If tlmgr can not find the right packages, you can download them manually. 
-->
