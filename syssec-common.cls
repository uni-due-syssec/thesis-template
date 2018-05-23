%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% translations
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newif\ifgerman\germantrue

\DeclareOption{english}{
	\germanfalse
}

%% Set defaults for English language
\newcommand{\@supervisor}{}
\newcommand{\@reviewerA}{}
\newcommand{\@reviewerB}{}
\newcommand{\@fieldofdissertation}{}
\newcommand{\@degree}{}
\newcommand{\@location}{}
\newcommand{\@degreecourse}{}
\newcommand{\@authoraddress}{}
\newcommand{\@semester}{}
\newcommand{\@matrikelnumber}{}

\newcommand{\@stringTitle}{}
\newcommand{\@stringAuthor}{}
\newcommand{\@stringMatrikelnumber}{}
\newcommand{\@stringDegree}{}
\newcommand{\@stringDegreeCourse}{}
\newcommand{\@stringSupervisor}{}
\newcommand{\@stringReviewerA}{}
\newcommand{\@stringReviewerB}{}
\newcommand{\@stringHandoverdate}{}
\newcommand{\@stringSemester}{}


%% German
\ifgerman
	\renewcommand{\@supervisor}{<Betreuername per \textbackslash supervisor setzen>}
	\renewcommand{\@reviewerA}{<Gutachtername 1 per \textbackslash reviewerA setzen>}
	\renewcommand{\@reviewerB}{<Gutachtername 2 per \textbackslash reviewerB setzen>}
	\renewcommand{\@fieldofdissertation}{<Dissertationsgebiet per \textbackslash fieldofdissertation setzen>}
	\renewcommand{\@degree}{<Angestrebten Grad per \textbackslash degree setzen>}
	\renewcommand{\@location}{<Ort der Arbeit per \textbackslash location setzen>}
	\renewcommand{\@degreecourse}{<Studiengang per \textbackslash degreecourse setzen>}

	\renewcommand{\@stringTitle}{Titel}
	\renewcommand{\@stringAuthor}{von:}
	\renewcommand{\@stringMatrikelnumber}{Matrikelnummer:}
	\renewcommand{\@stringDegree}{Angestrebter akademischer Grad}
	\renewcommand{\@stringDegreeCourse}{Studiengang}
	\renewcommand{\@stringSupervisor}{Betreuer}
	\renewcommand{\@stringReviewerA}{Erstgutachter}
	\renewcommand{\@stringReviewerB}{Zweitgutachter}
	\renewcommand{\@stringHandoverdate}{Abgabe}
	\renewcommand{\@stringSemester}{Studiensemester}
\else
	\renewcommand{\@supervisor}{<Set supervisor name with \textbackslash supervisor>}
	\renewcommand{\@reviewerA}{<Set name of 1st supervisor with \textbackslash reviewerA>}
	\renewcommand{\@reviewerB}{<Set name of 2nd supervisor with \textbackslash reviewerB>}
	\renewcommand{\@fieldofdissertation}{<Set field of dissertation with \textbackslash fieldofdissertation>}
	\renewcommand{\@degree}{<Set intended degree with \textbackslash degree>}
	\renewcommand{\@location}{<Set location of thesis with \textbackslash location>}
	\renewcommand{\@degreecourse}{<Set course with \textbackslash degreecourse>}

	\renewcommand{\@stringTitle}{Title}
	\renewcommand{\@stringAuthor}{by:}
	\renewcommand{\@stringMatrikelnumber}{Matriculation number:}
	\renewcommand{\@stringDegree}{Desired degree}
	\renewcommand{\@stringDegreeCourse}{Course of study}
	\renewcommand{\@stringSupervisor}{Supervisor}
	\renewcommand{\@stringReviewerA}{First reviewer}
	\renewcommand{\@stringReviewerB}{Second reviewer}
	\renewcommand{\@stringHandoverdate}{Date of submission}
	\renewcommand{\@stringSemester}{Semester}
\fi


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% commands
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\supervisor}[1]{\renewcommand\@supervisor{#1}}

\newcommand{\reviewerA}[1]{\renewcommand\@reviewerA{#1}}

\newcommand{\reviewerB}[1]{\renewcommand\@reviewerB{#1}}

\newcommand{\fieldofdissertation}[1]{\renewcommand\@fieldofdissertation{#1}}

\newcommand{\degree}[1]{\renewcommand\@degree{#1}}

\newcommand{\location}[1]{\renewcommand\@location{#1}}

\newcommand{\dateofthesis}[1]{\renewcommand\@dateofthesis{#1}}

\newcommand{\degreecourse}[1]{\renewcommand\@degreecourse{#1}}

\newcommand{\authoraddress}[1]{\renewcommand\@authoraddress{#1}}

\newcommand{\semester}[1]{\renewcommand\@semester{#1}}

\newcommand{\matrikelnumber}[1]{\renewcommand\@matrikelnumber{#1}}

\newcommand{\@handoverdate}{\today}
\newcommand{\handoverdate}[1]{\renewcommand\@handoverdate{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% internal commands defaults declaration
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand\listofillustrations{%
	\begingroup
		\let\clearpage\relax
		\let\cleardoublepage\relax
		\phantomsection
		\addcontentsline{toc}{chapter}{Figures}%
		\ifgerman
			\chapter*{Abbildungen}%
		\else
			\chapter*{Figures}
		\fi

		\@starttoc{lof}%
		\bigskip
		\phantomsection
		\addcontentsline{toc}{chapter}{Tables}%
		\ifgerman
			\chapter*{Tabellen}%
		\else
			\chapter*{Tables}
		\fi
		\@starttoc{lot}
    \endgroup}

\newcommand{\@titlelogos}{
	\includegraphics[height=2cm]{graphics/uni-due-logo-cmyk.eps}
	\hfill
	% \includegraphics[height=2cm]{graphics/bug-sec.png}
}

\newcommand{\affidavit}{
    \thispagestyle{empty}
    Ich versichere an Eides statt durch meine Unterschrift, dass ich die vorstehende Arbeit selbst\"andig und ohne fremde Hilfe angefertigt und alle Stellen, die ich w\"ortlich oder ann\"ahernd  w\"ortlich  aus  Ver\"offentlichungen  entnommen  habe,  als  solche  kenntlich  gemacht  habe,  mich  auch  keiner  anderen  als  der  angegebenen  Literatur  oder  sonstiger Hilfsmittel bedient habe. Die Arbeit hat in dieser oder \"ahnlicher Form noch keiner anderen Pr\"ufungsbeh\"orde vorgelegen.

    \vspace{1.5cm}

    \noindent\makebox[2.5in]{\hrulefill}\\
    \small \@author, \@location, den \@handoverdate

	\newpage
}

\newcommand{\@supervisorreviewer}{
	\begin{tabular}{lp{8cm}}%\hline
		\small \@location, \@dateofthesis & ~\newline\newline\newline~ \\ %\hline
		\small \@stringSupervisor: & \small \@supervisor \\ %\hline
		%\small \@stringReviewerA: &  \small \@reviewerA \\
		%\small \@stringReviewerB: & \small \@reviewerB \\
		\small \@stringDegreeCourse: & \small \@degreecourse \\ %\hline
        \small \@stringSemester: & \small \@semester \\
	\end{tabular}
}

\newcommand{\@arbeitstyp}{<Art der Arbeit (Option f\"ur \textbackslash documentclass setzen)>}

\DeclareOption{bachelorproject}{
	\renewcommand{\@supervisorreviewer}{
		\begin{tabular}{lp{8cm}}%\hline
			\small \@stringSupervisor: & \small \@supervisor \\ %\hline
			%\small \@stringReviewerA: &  \small \@reviewerA \\
			%\small \@stringReviewerB: & \small \@reviewerB \\
			\small \@stringDegreeCourse: & \small \@degreecourse \\ %\hline
			\small \@stringSemester: & \small \@semester \\
		\end{tabular}
	}

	\ifgerman
		\renewcommand{\@arbeitstyp}{Bachelorprojekt}
	\else
		\renewcommand{\@arbeitstyp}{Bachelor Project}
	\fi
	\renewcommand{\thesection}{\arabic{section}}
}
\DeclareOption{bachelorthesis}{
	\renewcommand{\@supervisorreviewer}{
		\begin{tabular}{lp{8cm}}%\hline
			\small \@stringReviewerA: &  \small \@reviewerA \\
			\small \@stringReviewerB: & \small \@reviewerB \\
			\small \@stringDegreeCourse: & \small \@degreecourse \\ %\hline
			\small \@stringSemester: & \small \@semester \\
		\end{tabular}
	}

	\ifgerman
		\renewcommand{\@arbeitstyp}{Bachelorarbeit}
	\else
		\renewcommand{\@arbeitstyp}{Bachelor Thesis}
	\fi
	\renewcommand{\thesection}{\arabic{section}}
}
\DeclareOption{masterproject}{
	\renewcommand{\@supervisorreviewer}{
		\begin{tabular}{lp{8cm}}%\hline
			\small \@stringSupervisor: & \small \@supervisor \\ %\hline
			% \small \@stringReviewerA: &  \small \@reviewerA \\
			% \small \@stringReviewerB: & \small \@reviewerB \\
			\small \@stringDegreeCourse: & \small \@degreecourse \\ %\hline
			\small \@stringSemester: & \small \@semester \\
		\end{tabular}
	}

	\ifgerman
		\renewcommand{\@arbeitstyp}{Masterprojekt}
	\else
		\renewcommand{\@arbeitstyp}{Master Project}
	\fi
	\renewcommand{\thesection}{\arabic{section}}
}
\DeclareOption{masterthesis}{
	\renewcommand{\@supervisorreviewer}{
		\begin{tabular}{lp{8cm}}%\hline
			\small \@stringReviewerA: &  \small \@reviewerA \\
			\small \@stringReviewerB: & \small \@reviewerB \\
			\small \@stringDegreeCourse: & \small \@degreecourse \\ %\hline
			\small \@stringSemester: & \small \@semester \\
		\end{tabular}
	}

	\ifgerman
		\renewcommand{\@arbeitstyp}{Masterarbeit}
	\else
		\renewcommand{\@arbeitstyp}{Master Thesis}
	\fi
}

\DeclareOption{seminarpaper}{
	\renewcommand{\@supervisorreviewer}{
		\begin{tabular}{lp{8cm}}%\hline
			\small \@stringSupervisor: & \small \@supervisor \\ %\hline
			% \small \@stringReviewerA: &  \small \@reviewerA \\
			% \small \@stringReviewerB: & \small \@reviewerB \\
			\small \@stringDegreeCourse: & \small \@degreecourse \\ %\hline
			\small \@stringSemester: & \small \@semester \\
		\end{tabular}
	}

	\ifgerman
		\renewcommand{\@arbeitstyp}{Seminararbeit}
	\else
		\renewcommand{\@arbeitstyp}{Seminar Paper}
	\fi
	\renewcommand{\thesection}{\arabic{section}}

}
\DeclareOption{report}{
	\renewcommand{\@supervisorreviewer}{
		\begin{tabular}{lp{8cm}}%\hline
			\small \@stringSupervisor: & \small \@supervisor \\ %\hline
			% \small \@stringReviewer: &  \small \@reviewerA \\
			% \small & \small \@reviewerB \\
			\small \@stringDegreeCourse: & \small \@degreecourse \\ %\hline
			\small \@stringSemester: & \small \@semester \\
		\end{tabular}
	}

	\ifgerman
		\renewcommand{\@arbeitstyp}{Projektbericht}
	\else
		\renewcommand{\@arbeitstyp}{Project Report}
	\fi
	\renewcommand{\thesection}{\arabic{section}}
}

\ProcessOptions\relax


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% load packages
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\RequirePackage{appendix}
\RequirePackage{hyperxmp}
\RequirePackage[utf8]{inputenc}
\RequirePackage{fancyhdr}
\RequirePackage[hyphens]{url}
\RequirePackage[defernumbers=true, style=alphabetic, citestyle=alphabetic, giveninits=true, backend=biber, doi=true, url=true, block=ragged, maxnames=6]{biblatex} %
\RequirePackage{csquotes} % context sensitive quotations; especially for use with biblatex and biber
\RequirePackage[usenames,dvipsnames,svgnames,table]{xcolor}
\RequirePackage{listings} % ?
\RequirePackage[scale=3]{ccicons} % creative commons icons
\RequirePackage{import} % for subimport and relative directory \includegraphics
\RequirePackage{caption} % figure caption control
\RequirePackage{subcaption} % sub figure replacement
\RequirePackage{multirow} % tables spanning multiple rows
\RequirePackage{longtable} %required for tabu with longtabu
\RequirePackage{tabu} %supersedes tabularx, provides tables spanning multiple pages
\RequirePackage{tikz}
\usetikzlibrary{arrows}
\RequirePackage{enumitem} % inline lists, etc.

\RequirePackage[colorlinks, unicode=true]{hyperref}
\hypersetup{pdfencoding=auto, colorlinks=true, linktocpage=true, breaklinks=true, bookmarksnumbered, bookmarksopen=true,bookmarksopenlevel=1, pdfhighlight=/O, urlcolor=webbrown, linkcolor=linkblue, citecolor=webgreen}
\RequirePackage{textcomp} % extra symbols; used for euro and copyright symbol
\RequirePackage[load-configurations={abbreviations,binary}]{siunitx}
\RequirePackage{siunitx}
\sisetup{load-configurations = abbreviations,binary-units}
\RequirePackage{xspace} % ?
\RequirePackage{algorithmic}
\RequirePackage{algorithm}
\RequirePackage[24hr,iso]{datetime}
\RequirePackage{booktabs} % \toprule and other table stuff
\RequirePackage[titles]{tocloft} % toc style
\RequirePackage{titlesec}
\RequirePackage{textcase} % for \MakeTextUppercase
\RequirePackage{mathtools}

\RequirePackage{metalogo}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% settings
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% colors
\definecolor{Maroon}{cmyk}{0, 0.87, 0.68, 0.32}
\definecolor{RoyalBlue}{cmyk}{1, 0.50, 0, 0}
\definecolor{Black}{cmyk}{0, 0, 0, 0}
\definecolor{grey}{RGB}{153, 153, 153}
\definecolor{orange}{RGB}{230, 159, 0}
\definecolor{skyblue}{RGB}{86, 180, 233}
\definecolor{bluishgreen}{RGB}{0, 158, 115}
\definecolor{yellow}{RGB}{240, 228, 66}
\definecolor{blue}{RGB}{0, 114, 178}
\definecolor{vermillion}{RGB}{213, 94, 0}
\definecolor{reddishpurple}{RGB}{204, 121, 167}
\definecolor{halfgray}{gray}{0.55} % chapter numbers will be semi transparent .5 .55 .6 .0
\definecolor{webgreen}{rgb}{0,.5,0}
\definecolor{webbrown}{rgb}{.6,0,0}
\definecolor{linkblue}{RGB}{22,50,80}

\captionsetup{format=hang,font=small}
\setlength{\extrarowheight}{3pt} % increase table row height
\newcommand{\tableheadline}[1]{\spacedlowsmallcaps{#1}}
\setlength{\belowcaptionskip}{-10pt} % Less space below captions


%%% text
\linespread{1.05}
\setlist[description]{labelindent=\parindent}
\hfuzz=1.36pt


%%% toc
\setcounter{tocdepth}{2}
\setcounter{secnumdepth}{3}


%% set pdf parameters (title, ...)
\AtBeginDocument{
  \hypersetup{
    pdftitle = {\@title},
    pdfauthor = {\@author}
  }
}


%% settings imported and adapted from classicthesis

\clubpenalty = 10000 % Disable single lines at the start of a paragraph
\widowpenalty = 10000 % Disable single lines at the end of a paragraph 
\displaywidowpenalty = 10000 % formulas


% sections
\titleformat{\section}{\relax}{\bfseries\textsc{\LARGE\thesection}}{1em}{\bfseries\LARGE\scshape}

% subsections
\titleformat{\subsection}{\relax}{\large\thesubsection}{1em}{\large\itshape}

% subsubsections
\titleformat{\subsubsection}{\relax}{\normalsize\thesubsubsection}{1em}{\normalsize\itshape}

% paragraphs
\titleformat{\paragraph}[hang]{\normalfont\normalsize}{\theparagraph}{0pt}{\scshape}

% descriptionlabels
\renewcommand{\descriptionlabel}[1]{\hspace*{\labelsep}\textsc{#1}}   % spacedlowsmallcaps textit textsc
% spacing
\titlespacing*{\section}{0pt}{1\baselineskip}{1.2\baselineskip}
\titlespacing*{\section}{0pt}{1.25\baselineskip}{1\baselineskip}
\titlespacing*{\subsection}{0pt}{1.25\baselineskip}{1\baselineskip}
\titlespacing*{\paragraph}{0pt}{1\baselineskip}{1\baselineskip}


%% default settings for the listings Package
\definecolor{lstgreen}{rgb}{0,0.6,0}
\lstset{
  basicstyle=\small\ttfamily,
  commentstyle=\color{lstgreen},
  keywordstyle=\color{blue},
  emphstyle=\bfseries\color{DarkGray},
  stringstyle=\color{RedViolet},
  numbers=left,
  numberstyle=\small,
  %columns=fullflexible,
  showstringspaces=false,
  captionpos=b,
  %xleftmargin=\parindent,
  %framexleftmargin=\parindent,
  %xleftmargin=2cm,
  %linewidth=\textwidth,
  %xleftmargin=\,
  %xleftmargin=\listingnumberwidth,
  %xleftmargin=1.5em,
  xleftmargin=\parindent,
  %xrightmargin=5pt,
  aboveskip=\bigskipamount,
  %belowskip=\bigskipamount,
  frame=single,
  %fancyvrb=true,
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% title page
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\renewcommand*{\maketitle}{%
	\thispagestyle{empty}

	\begin{titlepage}


	\@titlelogos

	\begin{center}

	\vskip 1.5cm

	\linespread{1.6}\selectfont

	{\Huge\bfseries\textsc{\@arbeitstyp}}\\[1.5cm]

	{\@stringTitle\\[2mm]
	\huge\bfseries\textsc{\centering\@title}}\\Vorgelegt der Fakultät für Wirtschaftswissenschaften\\der Universität Duisburg-Essen (Campus Essen)\\[2cm]
	\linespread{1.05}\selectfont % reset linespread back to the document's default

	{\@stringAuthor\\
	\bfseries \@author}\\\@authoraddress\\\@stringMatrikelnumber~{\bfseries \@matrikelnumber}\\[3cm]

	%\scalebox{1.1} {
		\@supervisorreviewer
	%}
	\end{center}
	\end{titlepage}
}

