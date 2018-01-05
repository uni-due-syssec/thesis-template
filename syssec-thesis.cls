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

\ProvidesClass{syssec-thesis}[2018/01/04 Uni-DUE SYSSEC thesis class]

\input{syssec-common.cls}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LaTeX parameters
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage[nomain, style=tree, toc, section=chapter, nogroupskip=true]{glossaries}


\def\toc@heading{
 	\chapter*{\contentsname}
 	\@mkboth{\textsc{\contentsname}}{\textsc{\contentsname}}
}

% page style

% titlesec chapter format

% headlines
%\clearscrheadings
%\setheadsepline{0pt}
%\renewcommand{\sectionmark}[1]{\markright{\thesection\enspace\textsc{#1}}}
%\lehead{\mbox{\headmark\hfil}}
%\rohead{\mbox{\hfil{\headmark}}}
%\rofoot{\mbox{\hfil{\thepage}}}
%\lefoot{\mbox{\hfil{\thepage}}}
%\renewcommand{\headfont}{\small}



%% tocloft toc manipulations
% specifically: smallcaps and dotted lines for sections
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cftchapfont}{\scshape}
