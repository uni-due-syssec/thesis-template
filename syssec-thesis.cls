%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}[2015/01/01]


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% load base class
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\LoadClass[openright,titlepage,numbers=noenddot,cleardoublepage=empty,BCOR=5mm,a4paper,fontsize=12pt,twoside, DIV=calc]{scrreprt}

\ProvidesClass{classes/syssec-thesis}[2018/01/04 Uni-DUE SYSSEC thesis class]

\input{syssec-common.cls}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LaTeX parameters
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage[acronyms, nomain, style=tree, toc, section=chapter, nogroupskip=true]{glossaries}
\RequirePackage{etoolbox}
\preto\chapter\glsresetall


\def\toc@heading{
 	\chapter*{\contentsname}
 	\@mkboth{\textsc{\contentsname}}{\textsc{\contentsname}}
}
