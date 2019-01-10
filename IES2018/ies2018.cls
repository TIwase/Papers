%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LaTeX template for IES2018
%
% Author: Yasumasa TAMURA (tamura@c.titech.ac.jp)
% Copyright: IES 2018
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ies2018}[2018/08/23 IES2018 LaTeX class]
\LoadClass[a4paper,twocolumn]{article}

\RequirePackage[T1]{fontenc}
\RequirePackage[english]{babel}
\RequirePackage[utf8]{inputenc}
\RequirePackage{url}
\RequirePackage{titlesec}
\RequirePackage{newtxtext,newtxmath}

% Geometry
\RequirePackage[top=27truemm, bottom=15truemm, left=15truemm, right=15truemm, includefoot]{geometry}

% Margins
\setlength{\columnsep}{10mm}%
\parindent=1.5em%
\renewcommand{\baselinestretch}{1.1}%
\def\dopics{\par\vskip\parskip\centerline{\box\graph}}
\def\dopic{\par\vskip\parskip\centerline{\box\graph}\vskip\parskip\par}%
\raggedbottom%

% List
\RequirePackage{enumitem}
\setlist[itemize]{itemsep=0em}
\setlist[enumerate]{itemsep=0em}
\setlist[description]{itemsep=0.5em}

% Header & Footer
\RequirePackage{fancyhdr}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\lhead{The 22nd Asia Pacific Symposium on Intelligent and Evolutionary Systems (IES2018)}
\chead{\empty}
\rhead{\fontsize{12}{0}\selectfont}
\lfoot{\fontsize{8}{0}\selectfont}
\cfoot{\empty}
\rfoot{\fontsize{9}{0}\selectfont Copyright \copyright\ IES 2018}
\pagestyle{empty}

% References
\renewenvironment{thebibliography}[1]
{\section*{\refname\@mkboth{\refname}{\refname}}%
  \list{\@biblabel{\@arabic\c@enumiv}}%
       {\settowidth\labelwidth{\@biblabel{#1}}%
        \leftmargin\labelwidth
        \advance\leftmargin\labelsep
 \setlength\itemsep{-0zh}%
 \setlength\baselineskip{10pt}%
        \@openbib@code
        \usecounter{enumiv}%
        \let\p@enumiv\@empty
        \renewcommand\theenumiv{\@arabic\c@enumiv}}%
  \sloppy
  \clubpenalty4000
  \@clubpenalty\clubpenalty
  \widowpenalty4000%
  \sfcode`\.\@m}
 {\def\@noitemerr
   {\@latex@warning{Empty `thebibliography' environment}}%
  \endlist}

% Labels
\renewcommand{\labelenumi}{(\arabic{enumi})}
\renewcommand{\labelenumii}{(\alph{enumii})}
\renewcommand{\labelitemi}{・}
\renewcommand{\labelitemii}{\bf --}
\renewcommand{\labelitemiii}{*}
\renewcommand{\topfraction}{1.0}
\renewcommand{\textfraction}{0.0}
\renewcommand{\bottomfraction}{1.0}

\renewcommand{\thesection}{\arabic{section}}
\renewcommand{\thesubsection}{\thesection.\arabic{subsection}}
\renewcommand{\thesubsubsection}{\thesubsection.\arabic{subsubsection}}

\titleformat{\section}{\normalfont\fontsize{14}{5}\centering\bf}{\thesection.}{0.3em}{}
\titleformat{\subsection}{\normalfont\fontsize{12}{5}\bf}{\thesubsection}{0.3em}{}

\def\fnum@figure{Fig. \thefigure}
\def\fnum@table{Table. \thetable}

% Title & Abstract
\urlstyle{tt}
\renewcommand\maketitle{%
  \par%
  \begingroup%
    \def\thefootnote{\fnsymbol{footnote}}%
    \def\@makefnmark{\hbox to 0pt{$^{\@thefnmark}$\hss}}%
    \newpage%
    \global\@topnum\z@%
    \@maketitle
    \thispagestyle{fancy}%
    \@thanks%
  \endgroup%
  \setcounter{footnote}{0}%
  \let\maketitle=\relax%
  \let\@maketitle=\relax%
  \gdef\@title{}%
  \gdef\@lab{}%
  \gdef\@abstract{}%
  \gdef\@author{}%
  \gdef\@affiliation{}%
  \gdef\@email{}%
  \gdef\@keywords{}%
}%

\renewcommand\@maketitle{%
  \twocolumn[
  \newpage%
  \null%
  \vskip 1em%
  \begin{center}%
    {\fontsize{20pt}{20pt}\selectfont \bf \@title\par}%
    \vspace*{0.5em}%
    {\fontsize{12pt}{20pt}\selectfont \@author \par}%
    \vspace*{1em}%
    {\fontsize{10pt}{12pt}\selectfont \@affiliation \par}%
    \vspace*{0.5em}
    {\fontsize{10pt}{0pt}\selectfont \@email \par}%
  \end{center}
  \begin{center}
    \begin{minipage}{14cm}
      \fontsize{10pt}{11pt}\selectfont
      {{\bf Abstract:} \@abstract \par}
      \vskip 0.8em%
      {{\bf Keywords:} \@keywords \par}
    \end{minipage}
  \end{center}
  \vskip 2.0em%
  ]
}%
\def\title#1{\long\gdef\@title{#1}}%
\def\abstract#1{\long\gdef\@abstract{#1}}%
\def\author#1{\long\gdef\@author{#1}}%
\def\affiliation#1{\long\gdef\@affiliation{#1}}%
\def\email#1{\long\gdef\@email{\url{#1}}}%
\def\keywords#1{\long\gdef\@keywords{#1}}%

\renewcommand\and{\hspace{1.5em}}
