%%
%% This is file `listok.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% listok.dtx  (with options: `common,listok')
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2018 by Ilya
%% 
%% This file may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either
%% version 1.3 of this license or (at your option) any later
%% version.  The latest version of this license is in:
%% 
%%    http://www.latex-project.org/lppl.txt
%% 
%% and version 1.3 or later is part of all distributions of
%% LaTeX version 2005/12/01 or later.
%% 
%\NeedsTeXFormat{LaTeX2e}[2005/12/01]
\ProvidesClass{listok}
    [2019/01/09 v2.1  Наши крутые шаблоны для листков]
\RequirePackage{kvoptions}
\newcommand{\@paperfile}{}
\DeclareOption{a4paper}{\renewcommand{\@paperfile}{tools/a4.clo}}
\DeclareStringOption[\DTMToday]{date}
\DeclareStringOption[1]{num}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions
\ProcessKeyvalOptions*
\LoadClass{article}
\input{\@paperfile}
%\RequirePackage{iftex}
\RequirePackage[russian]{babel}
\RequirePackage[inline]{enumitem}
\RequirePackage{textcomp, multicol}
%\RequirePackage{mathtext}
\RequirePackage{indentfirst}
\RequirePackage{amsmath, amssymb, amsthm}
\RequirePackage{mathtools}
\RequirePackage{epstopdf}
\RequirePackage{graphicx}
\RequirePackage{forloop}
\RequirePackage{datetime2}
\RequirePackage{microtype}
\usepackage{wrapfig}
\usepackage{array}

% \renewcommand{\bfdefault}{b}

\usepackage{listings}
\usepackage{color}
\usepackage[cache=false]{minted}

\definecolor{dkgreen}{rgb}{0,0.6,0}
\definecolor{gray}{rgb}{0.5,0.5,0.5}
\definecolor{mauve}{rgb}{0.58,0,0.82}

\lstset{frame=tb,
  aboveskip=3mm,
  belowskip=3mm,
  showstringspaces=false,
  columns=flexible,
  basicstyle={\small\ttfamily},
  numbers=none,
  numberstyle=\tiny\color{gray},
  keywordstyle=\color{blue},
  commentstyle=\color{dkgreen},
  stringstyle=\color{mauve},
  breaklines=true,
  breakatwhitespace=true,
  tabsize=4
}

\usepackage{epigraph}
\usepackage[normalem]{ulem}
\usepackage{scalerel,stackengine}
\usepackage{caption}
\usepackage{stackrel}
\usepackage{hyperref}
\usepackage{subcaption}
\usepackage{anyfontsize}
\usepackage[usenames,dvipsnames,svgnames,rgb]{xcolor}
\hypersetup{				% Гиперссылки
	unicode=true,           % русские буквы в раздела PDF\\
	pdfstartview=FitH,
	pdftitle={Заголовок},   % Заголовок
	pdfauthor={Автор},      % Автор
	pdfsubject={Тема},      % Тема
	pdfcreator={Создатель}, % Создатель
	pdfproducer={Производитель}, % Производитель
	pdfkeywords={keyword1} {key2} {key3}, % Ключевые слова
	colorlinks=true,       	% false: ссылки в рамках; true: цветные ссылки
	linkcolor=black,          % внутренние ссылки
	citecolor=blue,        % на библиографию
	filecolor=magenta,      % на файлы
	urlcolor=blue,           % на URL
}
\relax
\tolerance 4000
\newcommand{\listok@name}{Математическая статистика}
\DTMsetup{datesep=.}
\DTMsetstyle{ddmmyyyy}
\renewcommand{\thefootnote}{\fnsymbol{footnote}}
\renewcommand{\@oddhead}{
    \vbox{\hbox to\textwidth{\listok@name\hfil \strut
    \hyperlink{intro}{\color{blue}К содержанию}
    }\hrule}
}
\DeclareMathOperator*{\argmax}{arg\,max}
\DeclareMathOperator*{\argmin}{arg\,min}
\DeclareMathOperator*{\tr}{tr}
\DeclareMathOperator*{\rk}{rk}
%\renewcommand{\@oddfoot}{}
\renewcommand{\emptyset}{\varnothing}
\renewcommand{\le}{\leqslant}
\renewcommand{\ge}{\geqslant}
\renewcommand{\epsilon}{\varepsilon}
\renewcommand{\phi}{\varphi}
\newcommand\ind{\protect\mathpalette{\protect\independenT}{\perp}}
    \def\independenT#1#2{\mathrel{\rlap{$#1#2$}\mkern2mu{#1#2}}}
    
\def\dclesize{\ThisStyle{\raisebox{-.7pt}{\scalebox{1.1}{$\SavedStyle\bigcirc$}}}}
\def\dcle{\ensurestackMath{\stackon[0pt]{=}{\dclesize}}}
\def\eqcirc{\def\stacktype{L}\mathbin{\scalerel*{\dcle}{\dclesize}}}

\def\dclesizele{\ThisStyle{\raisebox{-.7pt}{\scalebox{1.3}{$\SavedStyle\bigcirc$}}}}
\def\dclele{\ensurestackMath{\stackon[0pt]{\le}{\dclesizele}}}
\def\lecirc{\def\stacktype{L}\mathbin{\scalerel*{\dclele}{\dclesize}}}

\def\dclesizeto{\ThisStyle{\raisebox{-.7pt}{\scalebox{1.3}{$\SavedStyle\bigcirc$}}}}
\def\dcleto{\ensurestackMath{\stackon[0pt]{\to}{\dclesizeto}}}
\def\eqto{\def\stacktype{L}\mathbin{\scalerel*{\dcleto}{\dclesizeto}}}

\newcommand{\poisd}{\operatorname{Pois}}
\newcommand{\geomd}{\operatorname{Geom}}
\newcommand{\expd}{\operatorname{Exp}}
\newcommand{\betad}{\operatorname{Beta}}
\newcommand{\bernd}{\operatorname{Bern}}
\newcommand{\ud}{\operatorname{U}}
\newcommand{\paretod}{\operatorname{Pareto}}
\newcommand{\cauchyd}{\operatorname{Cauchy}}
\newcommand{\laplaced}{\operatorname{Laplace}}

\newcommand{\const}{\mathrm{const}}


\newcommand{\boldalpha}{\boldsymbol{\alpha}}
\newcommand{\boldbeta}{\boldsymbol{\beta}}
\newcommand{\bolddelta}{\boldsymbol{\delta}}
\newcommand{\boldepsilon}{\boldsymbol{\epsilon}}
\newcommand{\boldtheta}{\boldsymbol{\theta}}
\newcommand{\boldtau}{\boldsymbol{\tau}}
\newcommand{\boldxi}{\boldsymbol{\xi}}
\newcommand{\boldeta}{\boldsymbol{\eta}}
\newcommand{\boldzeta}{\boldsymbol{\zeta}}
\newcommand{\boldmu}{\boldsymbol{\mu}}
\newcommand{\boldsigma}{\boldsymbol{\sigma}}
\newcommand{\boldpi}{\boldsymbol{\pi}}

\newcommand{\fwer}{\text{FWER}}
\newcommand{\fdr}{\text{FDR}}
\newcommand{\me}[1][\theta]{\mathsf E_{#1}}
\newcommand{\va}[1][\theta]{\mathsf D_{#1}}
\newcommand{\pth}[1][\theta]{\mathsf P_{#1}}
\newcommand{\N}{\mathbb{N}}
\newcommand{\Z}{\mathbb{Z}}
\newcommand{\Q}{\mathbb{Q}}
\newcommand{\R}{\mathbb{R}}
\newcommand{\Cx}{\mathbb{C}}
\renewcommand{\Re}[1]{\operatorname{Re}{#1}}
\renewcommand{\Im}[1]{\operatorname{Im}{#1}}
\newcommand{\diag}{\operatorname{diag}}
\newcommand{\Zm}[1]{\mathbb{Z}_{#1}}
\renewcommand{\Prob}[1]{\mathbb{P}\left [ #1 \right ]}
\newcommand{\ProbV}[2]{\mathbb{P}_{#1}\left [ #2 \right ]}
\DeclareMathOperator{\Expect}{\mathbb{E}}
\DeclareMathOperator{\pr}{Pr}
\DeclareMathOperator{\cov}{\mathsf{cov}}
\newcommand{\wdt}{\widetilde}
\newcommand{\pt}[1]{$\text{#1}^\circ$}
\newcommand{\point}{${}^\circ$}
\newcommand{\hard}{${}^\ast$}
\newcommand{\vs}{\;\;\;\text{versus}\;\;\;}
\let\forallsym\forall
%\renewcommand*{\forall}[1]{\forallsym #1~\;~}
\newcommand{\closure}[2][3]{%
{}\mkern#1mu\overline{\mkern-#1mu#2}}
\renewenvironment{abstract}{\quotation\itshape\centering}{\endquotation}

\theoremstyle{remark}
\newtheorem*{remark}{Замечание}
\newtheorem*{remarks}{Замечания}
\theoremstyle{plain}
%\newtheorem{theorem}{Теорема}[section]
%\newtheorem*{theorem*}{Теорема}
\newtheorem{lemma}{Лемма}
\newtheorem*{lemma*}{Лемма}
\newtheorem{proposition}{Утверждение}[section]
\newtheorem*{proposition*}{Утверждение}

\newtheorem{corollary}{Следствие}
\newtheorem*{corollary*}{Следствие}
\newtheoremstyle{mynote}{0pt}{0pt}{\normalfont}{}{\itshape}{}{ }{%
    \thmname{#1}\thmnumber{ #2}\textit{#3:}
}
\theoremstyle{mynote}
\newtheorem*{note}{Указание}
\newtheoremstyle{problem}{0pt}{0pt}{\normalfont}{}{\bfseries}{.}{ }{\thmname{#1}\thmnumber{ #2}\thmnote{ \textnormal{(\textit{#3})}}}


\theoremstyle{problem}


\newtheoremstyle{example}{10pt}{10pt}{\normalfont}{}{\bfseries}{.}{ }{\thmname{#1}\thmnumber{ #2}\thmnote{ \textnormal{(\textit{#3})}}}

\theoremstyle{example}
\newtheorem{example}{Пример}[section]
\AtBeginEnvironment{example}{%
\tcolorbox[blanker,breakable,left=5mm,parbox=false,
    before upper={\parindent15pt},
    after skip=10pt,
	borderline west={1mm}{0pt}{black!40!white}]
  \pushQED{\qed}\renewcommand{\qedsymbol}{$\blacksquare$}%
}
\AtEndEnvironment{example}{\popQED\endexample
    \endtcolorbox}

\AtBeginEnvironment{proof}{%
\tcolorbox[blanker,breakable,left=5mm,parbox=false,
    before upper={\parindent15pt},
    after skip=10pt,
	borderline west={1mm}{0pt}{blue!40!white}]
}
\AtEndEnvironment{proof}{\endproof\endtcolorbox}




































%--------------------------------------------------------------------------
% 		GRAPHICS  
%--------------------------------------------------------------------------

%-------		PACKAGES		-------	


\RequirePackage[most]{tcolorbox}







\newtheorem{problem}{Задача}[section]
\newtheorem*{problem*}{Задача}
\newenvironment{solution}{\begin{proof}[\textbf{Решение.}]}{\renewcommand{\qedsymbol}{$\blacksquare$}\end{proof}\renewcommand{\qedsymbol}{$\square$}}
%\newtheorem*{solution}{Решение}
\newtheorem*{definition}{Определение}

\newcommand \problems{\@startsection{section}{1}{\z@}{-3.5ex \@plus -1ex \@minus -.2ex}{2.3ex \@plus.2ex}{\normalfont\Large\bfseries\centering}*{Задачи}}


\newenvironment{vartab}[1]
{
    \begin{tabular}{*{#1}{|c} |c| } \hline
}{
    \end{tabular}
}
\newcommand \conduit [4]{
\begin{center}
\begin{tabular}{|c|c|c|c|}
\hline
\multicolumn{4}{|c|}{Критерии оценок} \\
\hline
<<5>> & <<4>> & <<3>> & <<2>> \\ \hline
#1 задач & #2 задач & #3 задач & #4 задач \\ \hline
\end{tabular}
\end{center}
}
\AddEnumerateCounter{\Asbuk}{\@Asbuk}{Ы}
\AddEnumerateCounter{\asbuk}{\@asbuk}{ы}
\setlist[itemize]{nosep, nolistsep}
\newlist{probenum}{enumerate}{1}
\newlist{probparts}{enumerate*}{1}
\setlist[enumerate]{nosep, nolistsep}
\setlist[probenum]{nosep, nolistsep, label = \textbf{(\asbuk*)}}
\setlist[probparts]{nosep, nolistsep, label = \textbf{(\asbuk*)}}
\newenvironment{multienum}[1]
{
    \begin{probenum}
    \begin{multicols}{#1}
}{
    \end{multicols}
    \end{probenum}
}
\endinput
%%
%% End of file `listok.cls'.
\usepackage{amsmath,amsthm}

