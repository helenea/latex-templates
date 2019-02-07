\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{myClass}
\LoadClass[french,a4paper,12pt,twoside,openright]{book}

%%% Language
\usepackage[T1]{fontenc}
\usepackage[utf8]{inputenc}
\usepackage[french]{babel}
\usepackage{blindtext} % pour générer le lorem ipsum

%%% Colors
\usepackage[x11names]{xcolor}
\definecolor{blueTitles}{RGB}{0,90,154}
\definecolor{greyNumbers}{rgb}{0.5,0.5,0.5}

%%% Page layout
\usepackage[margin=2.5cm]{geometry}
\setlength{\parindent}{0pt} % enlève les alinéas en début de paragraphe
\usepackage{multicol}
\usepackage{graphicx}
\usepackage{lscape}
\usepackage{tikz}
\usepackage[absolute]{textpos}
\usepackage{etoolbox}
\usepackage{cite}
\usepackage{pdfpages}

%%% Font style
\renewcommand{\familydefault}{lmss}
\usepackage{quoting}

%%% Math
\usepackage{mathtools}
\usepackage{physics}
\everymath{\displaystyle}
\usepackage{gensymb}
\usepackage{xfrac}
\usepackage{algorithm}
\usepackage{algorithmic}

%%% Tables
\usepackage{float}
\usepackage{multirow}
\usepackage{makecell}
\setcellgapes[t]{3pt}
\renewcommand{\theadfont}{\footnotesize\bfseries}
\renewcommand{\theadgape}{}


%%% PAGE STYLE %%%

\newcommand*\blankpage{\newpage\null\thispagestyle{empty}\newpage\thispagestyle{empty}}

\usepackage[titles]{tocloft}
\usepackage[nottoc]{tocbibind}

%% Sectioning
\usepackage{sectsty} % need to be used before titlesec and fncychap otherwise overwrites them
\allsectionsfont{\color{blueTitles}}
\paragraphfont{\itshape\color{blueTitles}}
\subparagraphfont{\color{black}}

\usepackage{titlesec} % for texlive on Ubuntu 16.04, need to run "sudo wget http://mirrors.ctan.org/macros/latex/contrib/titlesec/titlesec.sty -O /usr/share/texlive/texmf-dist/tex/latex/titlesec/titlesec.sty" for the sections to be numbered

%% Parts titles
\titleformat{\part}[display] % command and shape
	{\thispagestyle{empty}\Huge\bfseries\centering} % format
	{\fontsize{200}{80}\usefont{OT1}{pzc}{m}{n}\selectfont\color{greyNumbers}\thepart} % label
	{1em} % sep
	{\titlerule\vspace{0.5em}\color{blueTitles}} % before code
	[\color{black}\vspace{0.5em}\titlerule] % after code
	
%% Chapters titles
\usepackage[Rejne]{fncychap}
\ChNameAsIs
\ChNameVar{\centering\Large\bfseries\color{greyNumbers}}
\ChNumVar{\fontsize{38}{0}\selectfont\color{greyNumbers}}
\ChTitleAsIs
\ChTitleVar{\centering\LARGE\bfseries\color{blueTitles}}

%% Headers and footers for the different page types
\usepackage{titleps}

% Chapter pages
\newpagestyle{plainNormal}[]{
	\setfoot[][][]
			{}{\toptitlemarks Partie \thepart\ - \parttitle}{\textbf{\thepage}}
	\renewcommand{\makefootrule}{%
		\rule[.9\baselineskip]{\linewidth}{0.4pt}
	}
}

% Content pages inside chapters
\newpagestyle{contentNormal}[]{
	\headrule
	\sethead[\textbf{\thepage}][\toptitlemarks Partie \thepart\ - \parttitle][]
			{}{\toptitlemarks \chaptername\ \thechapter\ - \chaptertitle}{\textbf{\thepage}}
	\settitlemarks{part,chapter}
}

% Chapter pages of starred parts (add style manually after chapter command)
\newpagestyle{plainStarred}[]{
	\setfoot[][][]
			{}{\toptitlemarks \parttitle}{\textbf{\thepage}}
	\renewcommand{\makefootrule}{%
		\rule[.9\baselineskip]{\linewidth}{0.4pt}
	}
}

% Content pages inside starred parts
\newpagestyle{contentStarred}[]{
	\headrule
	\sethead[\textbf{\thepage}][\toptitlemarks \parttitle][]
			{}{\toptitlemarks \chaptername\ \thechapter\ - \chaptertitle}{\textbf{\thepage}}
	\settitlemarks{part,chapter}
}

% Chapter pages of frontmatter (add style manually after chapter command)
\renewpagestyle{plain}[]{
	\setfoot[][][]
			{}{}{\textbf{\thepage}}
	\renewcommand{\makefootrule}{%
		\rule[.9\baselineskip]{\linewidth}{0.4pt}
	}
}

% Content pages inside frontmatter and backmatter chapters
\newpagestyle{contentFrontBackmatter}[]{
	\headrule
	\sethead[\textbf{\thepage}][\toptitlemarks \chaptertitle][]
			{}{\toptitlemarks \chaptertitle}{\textbf{\thepage}}
	\settitlemarks{part,chapter}
}

% Content pages inside appendices chapters
\newpagestyle{contentAppendix}[]{
	\headrule
	\sethead[\textbf{\thepage}][\toptitlemarks \parttitle][]
			{}{\toptitlemarks Annexe \thechapter\ - \chaptertitle}{\textbf{\thepage}}
	\settitlemarks{part,chapter}
}

\pagestyle{contentNormal}


%%% REFERENCING %%%

\usepackage[hidelinks,linktoc=all,backref=true]{hyperref}
\usepackage[french,nameinlink]{cleveref}