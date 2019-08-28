\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{myBeamerMinimal}
\LoadClass{beamer}



%%% Language
\usepackage[T1]{fontenc}
\usepackage[utf8]{inputenc}
\usepackage[english]{babel}



%%% Colors
\usepackage{xcolor}
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
	{\color{myBlue}\textbf{#1}}
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
\setbeamertemplate{headline}{}
\setbeamertemplate{footline}[frame number]
\setbeamertemplate{navigation symbols}{}


%% Logo
%\newcommand{\addlogo}{
%	\hfill	
%	\includegraphics[height=.4cm]{figures/logos/iconOM.png}
%	\includegraphics[scale=1]{figures/logos/openmole_dark.png}
%}

%\newcommand{\sframe}[2]{\frame{\frametitle{#1\addlogo} #2}}


%% Color theme
% Palette
\setbeamercolor{palette primary}{fg=myDarkBlue, bg=myGrey}
\setbeamercolor{palette secondary}{fg=myDarkBlue}
%\setbeamercolor{palette tertiary}{fg=red, bg=yellow}
%\setbeamercolor{palette quaternary}{fg=pink, bg=green}

\setbeamercolor{title}{fg=white, bg=myDarkBlue}
\setbeamercolor{item}{fg=myDarkBlue}
\setbeamertemplate{itemize items}[triangle]
\setbeamertemplate{enumerate items}[default]

% Block
\setbeamercolor{block title}{fg=white, bg=myDarkBlue}
\setbeamercolor{block body}{bg=myLightBlue}
\setbeamercolor{block title alerted}{fg=white, bg=myDarkRed}
\setbeamercolor{block body alerted}{bg=myLightRed}
\AtBeginEnvironment{alertblock}{\setbeamercolor{item}{fg=myDarkRed}}


%% Section page
\setbeamertemplate{section page}{
	\begin{center}
		{\LARGE \color{myBlue}\bfseries\insertsection}
	\end{center}
}


%% Backup
\newcommand{\backupbegin}{
	\newcounter{framenumberappendix}
	\setcounter{framenumberappendix}{\value{framenumber}}
}

\newcommand{\backupend}{
	\addtocounter{framenumberappendix}{-\value{framenumber}}
	\addtocounter{framenumber}{\value{framenumberappendix}}
}

