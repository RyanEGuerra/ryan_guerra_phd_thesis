% Ricethesis_PDF.cls
% 06-Mar-2011
% Author: Gareth B Middleton (gbmidd@gmail.com)
% Generates a thesis formatted according to the guidelines set forth by the graduate committe of Rice University
% Works only with pdflatex or pdfetex

% Use the "book" style to get good page headings and numbering.  Letter paper is required for Rice theses.
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax
\LoadClass[pdftex, letterpaper]{book}

% A bunch of useful packages are included.  You can choose either eucal or amsmath.  I update this to use graphicx
% instead of graphics.  I commented out natbib usepackages to use the IEEE bibstyle

\usepackage{fancyhdr}
\usepackage[english]{babel}
\usepackage[usenames, dvipsnames]{color}
\usepackage[perpage]{footmisc}
\usepackage{setspace}
\usepackage{graphicx}
% Created a linked document: all references and labels tie together in the pdf, but in black (you can change this)
\usepackage[pdftex, 
			pdfpagelayout = useoutlines,
			bookmarks,
			bookmarksopen = true,
			bookmarksnumbered = true,
			breaklinks = true,
			linktocpage,
			backref,
			colorlinks = true,
			linkcolor = black,
			urlcolor  = black,
			citecolor = black,
			anchorcolor = green,
			hyperindex = true,
			hyperfigures]{hyperref}


% Margins and Borders

% Configure margins according to the Rice guidelines:
% Left: 1.5 in
% Top, right, bottom: 1 in
\setlength{\hoffset}{-0.25in}
\setlength{\oddsidemargin}{.75in}
\setlength{\marginparwidth}{.75in}	
\setlength{\marginparsep}{0in}
\setlength{\textwidth}{6in}

\setlength{\voffset}{-.25in}
\setlength{\topmargin}{0in}
\setlength{\headheight}{0.25in}
\setlength{\headsep}{0.25in}
\setlength{\textheight}{8.75in}
\setlength{\footskip}{0in}


% Define the page header style (the line across the top)
\pagestyle{fancy}
\fancyhf{}
\fancyhead[RO]{\bfseries\rightmark}
\fancyhead[L]{\bfseries\leftmark}
% Warning from E option, without twoside option, the E is ``useless''
%\fancyhead[LE]{\bfseries\leftmark} 
\fancyhead[R]{\thepage}
\renewcommand{\headrulewidth}{0.5pt}
\renewcommand{\footrulewidth}{0pt}
\fancypagestyle{plain}{
  \fancyhead{}
  \renewcommand{\headrulewidth}{0pt}
}

% DECLARATIONS

% These macros are used to declare arguments needed for the
% construction of the title page and other preamble.

% The year and term the degree will be officially conferred
\def\degreedate#1{\gdef\@degreedate{#1}}

% The full (unabbreviated) name of the degree
\def\degree#1{\gdef\@degree{#1}}

% The committee and its affiliations, up to five of them
\def\comchair#1{\gdef\@comchair{#1}}
\def\comchairaffil#1{\gdef\@comchairaffil{#1}}
\def\comtwo#1{\gdef\@comtwo{#1}}
\def\comtwoaffil#1{\gdef\@comtwoaffil{#1}}
\def\comthree#1{\gdef\@comthree{#1}}
\def\comthreeaffil#1{\gdef\@comthreeaffil{#1}}
\def\comfour#1{\gdef\@comfour{#1}}
\def\comfouraffil#1{\gdef\@comfouraffil{#1}}
\def\comfive#1{\gdef\@comfive{#1}}
\def\comfiveaffil#1{\gdef\@comfiveaffil{#1}}

% Insert PDF information
\pdfcatalog { /PageMode (/UseOutlines)
              /OpenAction (fitbh)  }

% Define title page layout according to Rice guidelines.  Auto-space everything.
\renewcommand{\maketitle}{%
	\thispagestyle{empty}{%
	% Parbox for the top title section.  Wrap 
	\flushleft
	\parbox[][3in][s]{6in}{%
		% Use the header on this page
		{\vspace{-.25in} \par}
		\centering
			{\large \textsc{Rice University} \par}
			\vspace*{\fill}
			{\large \bfseries {\@title} \par}
			\vspace*{\fill}
			{by \par}
			\vspace*{\fill}		
			{\large \bfseries {\@author} \par}
			\vspace*{\fill}
			{\large \textsc{A Thesis Submitted \\ in Partial Fulfillment of the \\ Requirements for the Degree} \par}
			\vspace*{\fill}
			{\large \bfseries {\@degree} \par}
	}

	\vspace{-.1in}
	
	% Flush signatures down the RHS
	\flushright
	\parbox[][5.4in][s]{3in}{%
		\vspace*{\fill}
		\textsc{Approved, Thesis Committee:}
		\vspace*{\fill}
				
		% Committee Chair
		\hrule
		\vspace*{0.1in}
		\@comchair, \emph{Chair} \par
		\@comchairaffil \par
		\vspace*{\fill}
				
		% Second Member
		\hrule
		\vspace*{0.1in}
		\@comtwo \par
		\@comtwoaffil \par
		\vspace*{\fill}
				
		% Third member
		\hrule
		\vspace*{0.1in}
		\@comthree \par
		\@comthreeaffil \par
		\vspace*{\fill}
				
		%If a fourth member is defined:
		\ifx \@comfour \undefined
		\else
			% Fourth member
			\hrule
			\vspace*{0.1in}
			\@comfour \par
			\@comfouraffil \par
			\vspace*{\fill}
				
			% Fifth member, if defined
			\ifx \@comfive \undefined
			\else
			\hrule
			\vspace*{0.1in}
			\@comfive \par
			\@comfiveaffil \par
			\vspace*{\fill}
			
			\fi
		\fi
	}

	% Houston and degree date
	\parbox[][.35in][s]{6in}{%
		\vspace*{\fill}
		{\centering
		\textsc{Houston, Texas} \par
		\textsc{\@degreedate} \par
		}
		\vspace*{\fill}
	}
}}

% DEDICATION

% The dedication environment makes sure the dedication gets its
% own page and is set out in verse format.  It's not clear if
% Rice permits a dedication, so use at your own risk.

\newenvironment{dedication}{%
  \newpage
  \thispagestyle{empty}
  \begin{center}
  \vspace*{1.5cm}
  {\LARGE }
  \end{center}
  \vspace{0.5cm}
  \begin{quote} \begin{center} \begin{em}}
{\end{em} \end{center} \end{quote}}


% ACKNOWLEDGEMENTS

% The acknowledgements environment puts a large, bold, centered 
% "Acknowledgements" label at the top of the page. The acknowledgements
% themselves appear in a quote environment, i.e. tabbed in at both sides, and
% on its own page.

\newenvironment{acknowledgements}{%
\newpage
\thispagestyle{empty}
\begin{center}
\vspace*{1.5cm}
{\large \textsc {Acknowledgements}}
\addcontentsline{toc}{chapter}{Acknowledgements}
\end{center}
\vspace{0.5cm}
\begin{quotation}}
{\end{quotation}}

%ABSTRACT

%The abstract environment puts a large, bold, centered "Abstract" label at
%the top of the page. The abstract itself appears in a quote environment,
%i.e. tabbed in at both sides, and on its own page.

\newenvironment{abstract} {%
  \newpage
  \thispagestyle{empty}
  \begin{center}
  \vspace*{0in}
  \onehalfspacing
  {\large \textsc {Abstract}} \par
  \vspace*{0.25in}
  \@title \par
  \vspace*{0.25in}
  by \par
  \vspace*{0.25in}
  \@author \par
  \end{center}
  \addcontentsline{toc}{chapter}{Abstract}
  \doublespacing
  \vspace{0.25in} 
  \begin{quotation}}
{\end{quotation}\thispagestyle{empty}}

%ROMANPAGES

% The romanpages environment set the page numbering to lowercase roman one
% for the contents and figures lists. It also resets
% page-numbering for the remainder of the dissertation (arabic, starting at 1).

\newenvironment{romanpages}
{\setcounter{page}{1}
  \renewcommand{\thepage}{\roman{page}}}
{\newpage\renewcommand{\thepage}{\arabic{page}}\setcounter{page}{1}}

% Chapter heading definitions

\def\thickhrulefill{\leavevmode \leaders \hrule height 1ex \hfill \kern \z@}
\def\@makechapterhead#1{%
  \vspace*{10\p@}%
  {\parindent \z@ \raggedleft \reset@font
            \scshape \@chapapp{} \thechapter
        \par\nobreak
        \interlinepenalty\@M
    \Large \bfseries #1\par\nobreak
    %\vspace*{1\p@}%
    \hrulefill
    \par\nobreak
    \vskip 100\p@
  }}
\def\@makeschapterhead#1{%
  \vspace*{10\p@}%
  {\parindent \z@ \raggedleft \reset@font
            \scshape \vphantom{\@chapapp{} \thechapter}
        \par\nobreak
        \interlinepenalty\@M
    \Large \bfseries #1\par\nobreak
    %\vspace*{1\p@}%
    \hrulefill
    \par\nobreak
    \vskip 100\p@
  }}
