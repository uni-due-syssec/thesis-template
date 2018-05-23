%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}[2015/01/01]


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% load base class
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\LoadClass[twosided = false, openright,titlepage,numbers=noenddot,cleardoublepage=empty,BCOR=5mm,a4paper,fontsize=12pt, DIV=calc]{scrreprt}

\ProvidesClass{classes/syssec-report}[2017/12/29 Uni-DUE SYSSEC report class]

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

% start section on a new page
% \newcommand{\sectionbreak}{\clearpage}

%
\lfoot[\@stringTitle]{\@title}
\pagestyle{fancy}
\renewcommand{\footrulewidth}{0.4pt}
\fancyhead[LE,RO]{ \nouppercase \rightmark}
\fancyhead[LO,RE]{\nouppercase \leftmark}
\fancyfoot[C]{\thepage}
\rfoot[\thepage]{\thepage}
\cfoot[]{}
\setlength{\headsep}{1cm}

\fancypagestyle{plain}{
	\renewcommand{\headrulewidth}{0pt}
	\renewcommand{\footrulewidth}{0.4pt}
	\fancyhead[LE,RO]{\nouppercase}
	\fancyhead[LO,RE]{\nouppercase}
	\fancyfoot[C]{\thepage}
	\rfoot[\thepage]{\thepage}
	\cfoot[]{}
    \lfoot[\@stringTitle]{\@title}
	\setlength{\headsep}{1cm}
}
