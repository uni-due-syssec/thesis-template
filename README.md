# SYSSEC thesis-template
Clone the git and compile with `latexmk`. Heavily inspired by the mas-template. 

## TODO List
* Logo

## Mandatory things you need to install to use the template
* texlive
* latexmk
* biber

Install missing packages with tlmgr. The `needed_package.sh` script will print you the required packages.

```bash
$tlmgr install missingpackage.sty
```

If tlmgr can not find the right packages, you can download them manually. 

## How to use this template
You can use this template to write your thesis or to write a report. Just change the option in the `syssec-thesis.tex` preamble.
The `syssec-thesis.tex` should only be used to glue together your document. Your writings should be put in seperate tex files. Use the `\input{path/to/.tex}` command to assemble your document. This keeps your project structured and tidy.

Every `.tex` file contains small manuals on how to use it.

You are free to modify this template.

If you want to compile your files, just invoke `latexmk` which will do the work for you. To clean up, just use `latexmk -c`. This will leave only the PDF file in the folder. 

