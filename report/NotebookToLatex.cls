\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{NotebookToLatex}[2018/09/13 NikDim template for LaTeX reports]


\LoadClass[greek, english]{article}



% ======================================================
% 
%	LATEX necessities
%
% ======================================================

 \RequirePackage{alphabeta}
 \RequirePackage[greek,english]{babel}

% \RequirePackage[inner=3cm,outer=1cm]{geometry}
\RequirePackage[margin=2cm, bmargin=2cm]{geometry}
\RequirePackage[utf8]{inputenc}
\RequirePackage[unicode]{hyperref}
\hypersetup{
	colorlinks,
	citecolor = blue,
	filecolor = black,
	linkcolor = blue,
	urlcolor = blue
}
\RequirePackage{bookmark}
\RequirePackage[parfill]{parskip}
\RequirePackage[nice]{nicefrac}
\RequirePackage{tikz}
\RequirePackage{pgf}
\RequirePackage{pgfplots}

\RequirePackage[skins]{tcolorbox}
\RequirePackage{graphicx}
\RequirePackage{titlesec}
\RequirePackage{xstring}
\RequirePackage{datetime}
\RequirePackage[LGR,T1]{fontenc}
\RequirePackage{graphicx}
\RequirePackage[]{xcolor} % Allow colors to be defined
\RequirePackage{amsmath} % Equations
\RequirePackage{amssymb} % Equations
\RequirePackage{fancyvrb} % verbatim replacement that allows latex, needed for colors.sty
% \RequirePackage{hyperref}
\RequirePackage{upquote} % Upright quotes for verbatim code

\RequirePackage{marginnote}
% \RequirePackage{bibunits}
% \RequirePackage{cancel}
\RequirePackage[normalem]{ulem}
% \RequirePackage{arrayjob}
% \RequirePackage{pgfmath}
\RequirePackage{xparse}% http://ctan.org/pkg/xparse
\RequirePackage{etoolbox}% http://ctan.org/pkg/etoolbox
% ======================================================
% 
%	CUSTOM STYLES
%
% ======================================================

\RequirePackage{styles/myfancy}
\RequirePackage{styles/environments}
% \RequirePackage{styles/colors}
\RequirePackage{styles/commandsFormat}
\RequirePackage{styles/commandsMath}

% ======================================================
% 
%	TIKZ LIBRARIES
%
% ======================================================

\usetikzlibrary{arrows, fit}
\pgfplotsset{compat=1.15}





% \renewcommand{\headrulewidth}{0.5pt}
% \renewcommand{\footrulewidth}{0.5pt}

\newcounter{listtotall}\newcounter{listcntr}%
\NewDocumentCommand{\names}{o}{%
  \setcounter{listtotall}{0}\setcounter{listcntr}{-1}%
  \renewcommand*{\do}[1]{\stepcounter{listtotall}}%
  \expandafter\docsvlist\expandafter{\namesarray}%
  \IfNoValueTF{#1}
    {\namesarray}% \names
    {% \names[<index>]
     \renewcommand*{\do}[1]{\stepcounter{listcntr}\ifnum\value{listcntr}=#1\relax##1\fi}%
     \expandafter\docsvlist\expandafter{\namesarray}}%
}

% ======================================================
% 
%	  PROJECT SPECIFIC PACKAGES
%
% ======================================================
\usepackage{csvsimple}
\usepackage{dirtytalk}
\usepackage{hyperref}
\usepackage{makecell}
\usepackage{pgfmath}
\usepackage{standalone}
\usepackage{float}
\usepackage{siunitx}
\usepackage{multirow}
\usepackage{array}
\newcolumntype{L}{>{\centering\arraybackslash}m{3cm}}
\usepackage{makecell}
\usepackage{tikz}
% \usepackage{subfigure}
\usepackage{caption}
\usepackage{subcaption}

\usepackage{csvsimple}