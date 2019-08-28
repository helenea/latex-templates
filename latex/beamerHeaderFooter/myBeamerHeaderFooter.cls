\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{myBeamerHeaderFooter}
\LoadClass{beamer}

%%% Language
\usepackage[T1]{fontenc}
\usepackage[utf8]{inputenc}
\usepackage[english]{babel}

%%% Colors
\usepackage{xcolor}
\definecolor{bleuPasteur}{RGB}{0,90,154}
\definecolor{myGrey}{rgb}{0.9,0.9,0.9}

\definecolor{myBlue}{RGB}{73,134,231}
\definecolor{myDarkBlue}{RGB}{31,98,205}
\definecolor{myLightBlue}{RGB}{216,231,255}

\definecolor{myDarkRed}{RGB}{231,21,21}
\definecolor{myLightRed}{RGB}{255,216,216}

\definecolor{myDarkGreen}{RGB}{0,155,55}
\definecolor{myLightGreen}{RGB}{216,255,230}

%%% Page layout
\usepackage{multicol}
\usepackage{graphicx}
\usepackage{tikz}
\usepackage{etoolbox}
\usepackage[absolute]{textpos}
\usepackage{setspace}
\usepackage{xmpmulti}

%%% Font style
\renewcommand{\familydefault}{lmss}
\usepackage{quoting}
\usepackage{xparse}
\newcommand{\refs}[3]{
	{\tiny \textit{#1 et al. #2#3}}\hspace{-0.25cm}
}
\newcommand{\head}[1]{
	{\color{myDarkBlue}\textbf{#1}}
}

%%% Math
\usepackage{mathtools}
\usepackage{physics}
\everymath{\displaystyle}
\usepackage{gensymb}
\usepackage{xfrac}

%%% Tables
\usepackage{float}
\usepackage{multirow}
\usepackage{makecell}
\setcellgapes[t]{3pt}
\renewcommand{\theadfont}{\bfseries}
\renewcommand{\theadgape}{}
\usepackage{diagbox}
\usepackage{colortbl}

%%% Theme
\usetheme{Darmstadt}
\useoutertheme[subsection=false]{miniframes}
\useoutertheme{smoothbars}
\setbeamertemplate{navigation symbols}{}

%% Color theme
% Palette
\setbeamercolor{palette primary}{fg=myDarkBlue, bg=myGrey}
\setbeamercolor{palette secondary}{fg=white, bg=myDarkBlue}
\setbeamercolor{palette tertiary}{fg=white, bg=myBlue}
%\setbeamercolor{palette quaternary}{fg=white, bg=orange}

\setbeamercolor{title}{fg=white, bg=myDarkBlue}
\setbeamercolor{item}{fg=myDarkBlue}
\setbeamertemplate{itemize items}[triangle]
\setbeamertemplate{enumerate items}[default]
\setbeamercolor{section in toc}{fg=myDarkBlue}

% Block
\setbeamercolor{block title}{bg=myDarkBlue}
\setbeamercolor{block body}{bg=myLightBlue}
\setbeamercolor{block title alerted}{bg=myDarkRed}
\setbeamercolor{block body alerted}{bg=myLightRed}
\AtBeginEnvironment{alertblock}{\setbeamercolor{item}{fg=myDarkRed}}
\setbeamercolor{block title example}{bg=myDarkGreen}
\setbeamercolor{block body example}{bg=myLightGreen}
\AtBeginEnvironment{exampleblock}{\setbeamercolor{item}{fg=myDarkGreen}}

%% Footer
\setbeamertemplate{footline}{
	\leavevmode%
	\hbox{%
		\begin{beamercolorbox}[wd=.3\paperwidth,ht=2.25ex,dp=1ex,center]{title in head/foot}
			\insertshortauthor
	  	\end{beamercolorbox}%
	  	\begin{beamercolorbox}[wd=.4\paperwidth,ht=2.25ex,dp=1ex,center]{frametitle}
	    	\insertshorttitle
		\end{beamercolorbox}%
		\begin{beamercolorbox}[wd=.3\paperwidth,ht=2.25ex,dp=1ex,center]{title in head/foot}
			\insertdate
			\hspace{.5cm}
			\insertframenumber / \inserttotalframenumber
	  \end{beamercolorbox}%
  }%
  \vskip0pt%
}

%% Section page
\setbeamertemplate{section page}{
	\begin{center}
		{\LARGE \color{myDarkBlue}\bfseries\insertsection} \\
%		\vspace{1cm}
%		{\normalsize \tableofcontents[sectionstyle = hide/hide, hideothersubsections]}
	\end{center}
}

%% Backup
\newcommand{\backupbegin}{
	\newcounter{framenumberappendix}
	\setcounter{framenumberappendix}{\value{framenumber}}
	\setbeamertemplate{footline}{
		\leavevmode%
		\hbox{%
			\begin{beamercolorbox}[wd=.3\paperwidth,ht=2.25ex,dp=1ex,center]{title in head/foot}
				\insertshortauthor
		  	\end{beamercolorbox}%
		  	\begin{beamercolorbox}[wd=.4\paperwidth,ht=2.25ex,dp=1ex,center]{frametitle}
		    	\insertshorttitle
			\end{beamercolorbox}%
			\begin{beamercolorbox}[wd=.3\paperwidth,ht=2.25ex,dp=1ex,center]{title in head/foot}
				\insertdate
		  \end{beamercolorbox}%
		}%
		\vskip0pt%
	}
}

\newcommand{\backupend}{
	\addtocounter{framenumberappendix}{-\value{framenumber}}
	\addtocounter{framenumber}{\value{framenumberappendix}}
%	\setbeamertemplate{footline}{
%		\vspace{-1cm}\small{\insertframenumber/\inserttotalframenumber}
%	}
}