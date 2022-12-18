%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%         DOCUMENT CLASS for legal dissertations
% 
% Author:
%      Corinna Coupette, 2018
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% USAGE:
%
% \usepackage{phdlaw}
%
%    Commands for the options of the title page:
%       \author  % your name
%       \title   % the title of this thesis
%
%
%    Commands for the creation of the title page:
%       \maketitle % creates the title page
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{phdlaw}[2018/12/31]

\LoadClass[a4paper,10pt,twoside,openany]{book}

% PACKAGES
\RequirePackage{mathptmx} % Times New Roman
\RequirePackage[utf8]{inputenc}
%\RequirePackage[onehalfspacing]{setspace}
%\RequirePackage{german}
\RequirePackage{amsmath,amssymb,amsthm,amsfonts}
\RequirePackage{multirow}
\RequirePackage{imakeidx}
\RequirePackage{graphicx}
\RequirePackage[hidelinks,hyperfootnotes=false,linktocpage=true]{hyperref}
\RequirePackage[greek,ngerman]{babel}
\RequirePackage{csquotes}
\RequirePackage[backend=biber, language=ngerman, style=verbose, giveninits=true]{biblatex}
%\RequirePackage[total={113mm,183mm}, h=4.80cm, right=4.90cm, top=5.70cm, bottom=5.70cm]{geometry}
\RequirePackage{pgf,tikz}
\RequirePackage{mathrsfs}
\RequirePackage{float}
\RequirePackage[marginal, bottom]{footmisc}
\RequirePackage[nonumberlist,nogroupskip]{glossaries} % for glossary - might use toc option with section=section
\RequirePackage{pdfcomment} % for tooltips
\RequirePackage{listings}
\RequirePackage{verbatim}
\RequirePackage{appendix} %[toc,page]
\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage{pdflscape}
\RequirePackage{tocloft}
%\RequirePackage{titletoc}
\RequirePackage[nobottomtitles]{titlesec}
\RequirePackage{enumitem}

% RENEW COMMANDS

% SECTION NUMBERING
\renewcommand{\thesection}{\Alph{section}.}
\renewcommand{\thesubsection}{\Roman{subsection}.}
\renewcommand{\thesubsubsection}{\arabic{subsubsection}.}
\renewcommand{\theparagraph}{\alph{paragraph})}
\renewcommand{\thesubparagraph}{\alph{subparagraph}\alph{subparagraph})}

% APPENDIX NAMING
\renewcommand{\appendixtocname}{Appendix}
\renewcommand{\appendixpagename}{Appendix}

% FLOAT HANDLING
\renewcommand{\floatpagefraction}{1.0}
\renewcommand{\textfraction}{0.0}
\renewcommand{\topfraction}{1.0}

% HEADING COUNTING
\setcounter{secnumdepth}{5}
\setcounter{tocdepth}{4}

% FONTSIZES
\renewcommand\Large{\@setfontsize\Large{14pt}{16pt}}
\renewcommand\large{\@setfontsize\large{12pt}{14pt}}
\renewcommand\normalsize{\@setfontsize\normalsize{10pt}{12pt}}
\renewcommand\footnotesize{\@setfontsize\footnotesize{8.5pt}{10.5pt}}
\renewcommand*{\bibfont}{\footnotesize}

% APPENDIX CUSTOMIZATION
\renewcommand{\appendixpagename}{\Large\normalfont Appendix}

% LAYOUTING
\setlength{\parindent}{0.4cm} % indentation of paragraphs
\setlength{\parskip}{0pt} % distance between paragraphs
\setlength{\footnotemargin}{0.4cm} % indentation of footnotes
%\renewcommand\footnotelayout{\footnotesize\selectfont} % fontsize of footnotes

% SPACING OF HEADINGS
\titlespacing*{\chapter}{0pt}{36pt}{24pt}
\titlespacing*{\section}{0pt}{24pt}{12pt}
\titlespacing*{\subsection}{0pt}{12pt}{6pt}
\titlespacing*{\subsubsection}{0pt}{12pt}{6pt}
\titlespacing*{\paragraph}{0pt}{12pt}{6pt}

% FORMATTING OF HEADINGS
% \titleformat{command}[shape]{format}{label}{sep}{before-cod}[after-code]
\titleformat{\chapter}[display]
{\filcenter}
{\normalsize\chaptertitlename~\thechapter}
{12pt}
{\Large}

\titleformat{\section}[block]
  {\filcenter\large}
  {\thesection}{.5em}{}
  
\titleformat{\subsection}[block]
  {\normalsize\itshape}
  {\thesubsection}{.5em}{}

\titleformat{\subsubsection}[block]
{\normalsize\itshape}
{\thesubsubsection}{.5em}{}

\titleformat{\paragraph}[block]
{\normalsize\itshape}
{\theparagraph}{.5em}{}

% Formatting
%\advance\topmargin by -1.2cm
%\advance\textheight by 1cm
%\textheight647pt
%\advance\evensidemargin by -1.1cm
%\advance\oddsidemargin by -1.1cm
%\advance\textwidth by 2.2cm
%\parindent0pt
%\newif\ifdoublespaced\doublespacedtrue
%\newif\ifdoublespaced\doublespacedfalse
%\ifdoublespaced\renewcommand{\baselinestretch}{1.5}\else\fi
\renewcommand{\topfraction}{1.0}
\renewcommand{\bottomfraction}{1.0}
\renewcommand{\textfraction}{0.0}
%\setlength\textfloatsep{6mm plus 4pt minus 4pt}
\allowdisplaybreaks
\raggedbottom

% TOCLOFT CUSTOMIZATION
\renewcommand{\cftdotsep}{2}
\renewcommand{\cftchapdotsep}{2}
\renewcommand{\cftdot}{\normalfont .}
\renewcommand{\cftchappresnum}{Kapitel~}
\renewcommand{\cftchapaftersnum}{.}
% TOC
\setlength{\cftbeforetoctitleskip}{60pt}
\setlength{\cftaftertoctitleskip}{24pt}
\renewcommand{\cfttoctitlefont}{\hfill\Large}
\renewcommand{\cftaftertoctitle}{\hfill}
\renewcommand{\cftchappagefont}{\normalfont}
\renewcommand\cftchapafterpnum{\vskip12pt} % was: 12
\renewcommand\cftsecafterpnum{\vskip6pt} % \par\addvspace{6pt}
% LOF
\setlength{\cftbeforeloftitleskip}{60pt}
\setlength{\cftafterloftitleskip}{24pt}
\renewcommand{\cftloftitlefont}{\hfill\Large}
\renewcommand{\cftafterloftitle}{\hfill}
% LOT
\setlength{\cftbeforelottitleskip}{60pt}
\setlength{\cftafterlottitleskip}{24pt}
\renewcommand{\cftlottitlefont}{\hfill\Large}
\renewcommand{\cftafterlottitle}{\hfill}
% FONTS AND SPACING
\renewcommand{\cftchapfont}{\large}
\renewcommand{\cftsecfont}{\normalsize\itshape}
\renewcommand{\cftsubsecfont}{\normalsize}
\setlength{\cftbeforechapskip}{24pt} % was: 24
\setlength{\cftbeforesecskip}{12pt} % was: 12
\setlength{\cftchapnumwidth}{2em}
\newlength{\mylen}   % a "scratch" length
\settowidth{\mylen}{\cftchappresnum\cftchapaftersnum} % extra space
\addtolength{\cftchapnumwidth}{\mylen} % add the extra space
\setlength{\cftsecnumwidth}{2em}% Set length of number width in ToC for \subsection
\setlength{\cftsubsecnumwidth}{2em}
\setlength{\cftsubsubsecnumwidth}{2em}
\setlength{\cftparanumwidth}{2em}
\setlength{\cftsubparanumwidth}{2em}
\setlength{\cftchapindent}{0em}
\setlength{\cftsecindent}{0em}
\setlength{\cftsubsecindent}{2em}
\setlength{\cftsubsubsecindent}{4em}
\setlength{\cftparaindent}{6em}
\setlength{\cftfigindent}{0em}
\setlength{\cfttabindent}{0em}
\makeatother

% BIBLATEX Customization

\DeclareFieldFormat{pg}{\mkfirstpage[{\mkpageprefix[bookpagination]}]{#1}}

\DeclareCiteCommand{\claw} % this % after statements is necessary in order avoiding undesidered space
{\boolfalse{citetracker}%
	\boolfalse{pagetracker}%
	\usebibmacro{prenote}}
{\ifentrytype{article}{% ARTICLES
		\printnames{labelname}%
		%\emph{\printnames{labelname}}% Nachnamen der Autoren
		\emph{\setunit{\addcomma\addspace}}% Komma Leerzeichen
		%\emph{\printfield{journaltitle}}% Titel der Zeitschrift
		\printfield{journaltitle}%
		\setunit{\addspace}% Leerzeichen
		\iffieldundef{volume}{% falls kein Volume:
			\printfield{year}}{% nur Jahr, anderenfalls:
			\printfield{volume}% Volume, dann Leerzeichen und in Klammern Jahr
			\addspace%
			(\printfield{year})}%
		%\printfield{year}%
		\setunit{\addcomma\addspace}% , added
		\printfield{pages}% HIER [pg] als Option einfuegen, falls nur Startseite angegeben werden soll
	}{\ifentrytype{book}{% BOOKS
		    \printnames{labelname}%
			%\emph{\printnames{labelname}}%
			\emph{\setunit{\addcomma\addspace}}%
			%\emph{\printfield{title}}%
			\printfield{title}%
			\setunit{\addcomma\addspace}%
			\printfield{year}%
			\setunit{\addcomma\addspace}%
		}{\ifentrytype{collection}{% COLLECTIONS
				\printnames{labelname}%
				%\emph{\printnames{labelname}}%
				\addspace
				\printtext{(Hrsg.)\emph{,}}%
				\emph{\setunit{\addcomma\addspace}}%
				\printfield{title}%
				%\emph{\printfield{title}}%
				\setunit{\addcomma\addspace} % TODO CLEANUP
				\printfield{year}%
				\setunit{\addcomma\addspace}%
			}{\ifentrytype{incollection}{% INCOLLECTIONS
					\printnames{labelname},%
					%\emph{\printnames{labelname},}%
					\setunit{\addcomma\addspace}% TODO CLEANUP
					\printfield{labeltitle}, in:%
					\setunit{\addspace}%
					\printnames{editor}%
					\printtext{ (Hrsg.), }%
					\printfield{booktitle}%
					%\emph{\printfield{booktitle}} % ggf wieder kursiv, indem emph weg
					\addcomma\addspace\printfield{year}%
					\setunit{\addcomma\addspace}%
					\printfield{pages}%
					%\setunit{\addcomma\addspace}%
				}{\ifentrytype{thesis}{% THESIS
					    \printnames{labelname},%
						%\emph{\printnames{labelname},}%
						\setunit{\addcomma\addspace}
						\printfield{labeltitle},
						\setunit{\addcomma\addspace} 
						\printfield{year}%
						\setunit{\addcomma\addspace}%
					}{% ALLE ANDEREN 
						\GenericError{}{Nicht definiert!}{}{}}}
}}}}
{\multicitedelim}
{\usebibmacro{postnote}}
%TODO Reports
% TODO


\DeclareCiteCommand{\claws} %VERSION w only start pages this % after statements is necessary in order avoiding undesidered space
{\boolfalse{citetracker}%
	\boolfalse{pagetracker}%
	\usebibmacro{prenote}}
{\ifentrytype{article}{% ARTICLES
		\printnames{labelname}%
		%\emph{\printnames{labelname}}% Nachnamen der Autoren
		\emph{\setunit{\addcomma\addspace}}% Komma Leerzeichen
		\printfield{journaltitle}%
		%\emph{\printfield{journaltitle}}% Titel der Zeitschrift
		\setunit{\addspace}% Leerzeichen
		\iffieldundef{volume}{% falls kein Volume:
			\printfield{year}}{% nur Jahr, anderenfalls:
			\printfield{volume}% Volume, dann Leerzeichen und in Klammern Jahr
			\addspace%
			(\printfield{year})}%
		%\printfield{year}%
		\setunit{\addcomma\addspace}% , added
		\printfield[pg]{pages}% HIER [pg] als Option einfuegen, falls nur Startseite angegeben werden soll
	}{\ifentrytype{book}{% BOOKS
			\printnames{labelname}%
			%\emph{\printnames{labelname}}%
			\emph{\setunit{\addcomma\addspace}}%
			\printfield{title}%
			%\emph{\printfield{title}}%
			\setunit{\addcomma\addspace}%
			\printfield{year}%
			\setunit{\addcomma\addspace}%
		}{\ifentrytype{collection}{% COLLECTIONS
				\printnames{labelname}%
				%\emph{\printnames{labelname}}%
				\addspace
				\printtext{(Hrsg.)\emph{,}}%
				\emph{\setunit{\addcomma\addspace}}%
				\printfield{title}%
				%\emph{\printfield{title}}%
				\setunit{\addcomma\addspace} % TODO CLEANUP
				\printfield{year}%
				\setunit{\addcomma\addspace}%
			}{\ifentrytype{incollection}{% INCOLLECTIONS
					\printnames{labelname},%
					%\emph{\printnames{labelname},}%
					\setunit{\addcomma\addspace}% TODO CLEANUP
					\printfield{labeltitle}, in:%
					\setunit{\addspace}%
					\printnames{editor}%
					\printtext{ (Hrsg.), }%
					\printfield{booktitle}%
					%\emph{\printfield{booktitle}}% ggf wieder kursiv setzen mit emph weg
					\addcomma\addspace\printfield{year}%
					\setunit{\addcomma\addspace}%
					\printfield[pg]{pages}%
					%\setunit{\addcomma\addspace}%
				}{\ifentrytype{thesis}{% THESIS
					    \printnames{labelname},%
						%\emph{\printnames{labelname},}%
						\setunit{\addcomma\addspace}
						\printfield{labeltitle},
						\setunit{\addcomma\addspace} 
						\printfield{year}%
						\setunit{\addcomma\addspace}%
					}{% ALLE ANDEREN 
						\GenericError{}{Nicht definiert!}{}{}}}
}}}}
{\multicitedelim}
{\usebibmacro{postnote}}

\DeclareCiteCommand{\clawb} %VERSION w only start pages this % after statements is necessary in order avoiding undesidered space
{\boolfalse{citetracker}%
	\boolfalse{pagetracker}%
	\usebibmacro{prenote}}
{\ifentrytype{article}{% ARTICLES
		\printnames{labelname}%
		%\emph{\printnames{labelname}}% Nachnamen der Autoren
		\emph{\setunit{\addcomma\addspace}}% Komma Leerzeichen
		\printfield{journaltitle}%
		%\emph{\printfield{journaltitle}}% Titel der Zeitschrift
		\setunit{\addspace}% Leerzeichen
		\iffieldundef{volume}{% falls kein Volume:
			\printfield{year}}{% nur Jahr, anderenfalls:
			\printfield{volume}% Volume, dann Leerzeichen und in Klammern Jahr
			\addspace%
			(\printfield{year})}%
		%\printfield{year}%
		%\setunit{\addcomma\addspace}% , added
		%\printfield[pg]{pages}% HIER [pg] als Option einfuegen, falls nur Startseite angegeben werden soll
	}{\ifentrytype{book}{% BOOKS
			\emph{\printnames{labelname}}%
			\emph{\setunit{\addcomma\addspace}}%
			\emph{\printfield{title}}%
			\setunit{\addcomma\addspace}%
			\printfield{year}%
			\setunit{\addcomma\addspace}%
		}{\ifentrytype{collection}{% COLLECTIONS
				\emph{\printnames{labelname}}%
				\addspace
				\printtext{(Hrsg.)\emph{,}}%
				\emph{\setunit{\addcomma\addspace}}%
				\emph{\printfield{title}}%
				\setunit{\addcomma\addspace} % TODO CLEANUP
				\printfield{year}%
				\setunit{\addcomma\addspace}%
			}{\ifentrytype{incollection}{% INCOLLECTIONS
					\emph{\printnames{labelname},}%
					\setunit{\addcomma\addspace}% TODO CLEANUP
					\printfield{labeltitle}, in:%
					\setunit{\addspace}%
					\printnames{editor}%
					\printtext{ (Hrsg.), }%
					\emph{\printfield{booktitle}}
					\addcomma\addspace\printfield{year}%
					\setunit{\addcomma\addspace}%
					\printfield[pg]{pages}%
					%\setunit{\addcomma\addspace}%
				}{\ifentrytype{thesis}{% THESIS
						\emph{\printnames{labelname},}%
						\setunit{\addcomma\addspace}
						\printfield{labeltitle},
						\setunit{\addcomma\addspace} 
						\printfield{year}%
						\setunit{\addcomma\addspace}%
					}{% ALLE ANDEREN 
						\GenericError{}{Nicht definiert!}{}{}}}
}}}}
{\multicitedelim}
{\usebibmacro{postnote}}

% CHANGE ABBREVIATION FOR SAME AUTHOR
\renewcommand{\bibnamedash}{--:\hspace*{0.15cm}}
\setlength{\bibhang}{0.4cm}
\DefineBibliographyStrings{german}{%
	andothers = {\emph{u\adddot a\adddot}},
}
\renewcommand{\mkbibnamelast}[1]{\mkbibemph{#1}}
\renewcommand{\mkbibnamefirst}[1]{\mkbibemph{#1}}
\renewcommand*{\labelnamepunct}{\addcolon\space}

\renewcommand{\multinamedelim}{\emph{,}\addspace}
\renewcommand{\finalnamedelim}{\addspace\emph{und}\addspace}
\AtBeginBibliography{%
	\renewcommand{\multinamedelim}{/}%
	\renewcommand{\finalnamedelim}{\multinamedelim}}
\DeclareNameAlias{sortname}{family-given}% family given in bibliography

% TIKZ
\usetikzlibrary{arrows}
\definecolor{aqaqaq}{rgb}{0.6274509803921569,0.6274509803921569,0.6274509803921569}
\definecolor{uuuuuu}{rgb}{0.26666666666666666,0.26666666666666666,0.26666666666666666}
\definecolor{cqcqcq}{rgb}{0.7529411764705882,0.7529411764705882,0.7529411764705882}
\definecolor{mygreen}{rgb}{0,0.6,0}
\definecolor{mygray}{rgb}{0.5,0.5,0.5}
\definecolor{mymauve}{rgb}{0.58,0,0.82}