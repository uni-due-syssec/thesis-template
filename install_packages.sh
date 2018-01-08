#! /bin/bash
# installs missing packages from the .cls files with tlmgr

cat *.cls | sed -n 's~^[^%]*\\RequirePackage[^{]*{\([^}]*\)}.*$~\1.sty~p' | cut -d '.' -f 1 | while read file; do tlmgr install $file; done
