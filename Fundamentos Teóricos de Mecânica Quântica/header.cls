\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{header}[2023/09/30: New book class]

\LoadClass[a4paper, twoside, 11pt]{book}

\RequirePackage[portuguese]{babel}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}

\RequirePackage{indentfirst}
\RequirePackage{bold-extra}
\RequirePackage{datetime}
\RequirePackage{csquotes}
\RequirePackage{mathrsfs}
\RequirePackage{titlesec}
\RequirePackage{upgreek}
\RequirePackage{dsfont}
\RequirePackage{pifont}
\RequirePackage{lipsum}
\RequirePackage{epigraph}
\RequirePackage{bbm}

\RequirePackage{mathtools}
\RequirePackage{stmaryrd}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{physics}
\RequirePackage{tensor}
\RequirePackage{calc}
\RequirePackage{slashed}

\RequirePackage[most]{tcolorbox}
\RequirePackage{tikz-3dplot}
\RequirePackage{graphicx}
\RequirePackage{pgfplots}
\RequirePackage{xcolor}
\RequirePackage{float}
\RequirePackage{tikz}

\RequirePackage[colorlinks = true,
                urlcolor = LinkColor,
                anchorcolor = LinkColor,
                citecolor = LinkColor,
                filecolor = LinkColor,
                linkcolor = LinkColor,
                menucolor = LinkColor,
                linktocpage = true,
                bookmarks = true,
                pdfusetitle]{hyperref}
                
\RequirePackage[shortlabels]{enumitem}
\RequirePackage{changepage}
\RequirePackage{microtype}
\RequirePackage{fancyhdr}
\RequirePackage{titletoc}
\RequirePackage{lastpage}
\RequirePackage{etoolbox}
\RequirePackage{multicol}
\RequirePackage{caption}
\RequirePackage{lmodern}
\RequirePackage{nameref}
\RequirePackage{framed}

\RequirePackage[backend    = biber, 
                style      = ext-authoryear-comp,
                sorting    = nyvt, 
                backref    = false,
                articlein  = false,
                uniquename = true,
                doi        = true, 
                dashed     = false]{biblatex}

\addbibresource{bibliografia.bib}
\DeclareFieldFormat[article, periodical]{volume}{\mkbibbold{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\AtEndDocument{%
    \clearpage
    \pagestyle{fancy}
    \markboth{\textsc{Bibliografia}}{\textsc{Bibliografia}}
    \printbibliography[title=\;\; Bibliografia]
    \addcontentsline{toc}{chapter}{Bibliografia}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usetikzlibrary{%
    decorations.pathreplacing,
    decorations.pathmorphing,
    decorations.markings,
    shapes.multipart,
    shapes.geometric,
    arrows.meta,
    tikzmark,
    fadings,
    arrows,
    angles,
    quotes,
    calc,
    3d,
}
\pgfplotsset{compat=1.18}

\tikzset{>=stealth}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand\vec{\boldsymbol}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\Acomment}[1]{\textquotedblleft \textit{#1}\textquotedblright }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% \DeclareMathAlphabet{\mathbbold}{U}{bbold}{m}{n}
\newcommand*{\boldone}{\mathbbm{1}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\definecolor{myDColor}{HTML}{120E0F}
\definecolor{myLColor}{HTML}{032656}
\definecolor{myLLColor}{HTML}{E9A750}
\definecolor{LinkColor}{HTML}{174260}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setlength{\headheight}{13.59999pt}
\def\scfelps{{\bfseries Felipe Gimenez Souza}}
\def\felps{{Felipe Gimenez}}
\def\scjimeens{{\bfseries Lucas Roda Ximenes dos Santos}}
\def\jimeens{{Lucas R. Ximenes}}
\def\scsuaide{{\bfseries Alexandre Alarcon do Passo Suaide}}
\def\suaide{{Alexandre A. Suaide}}

\newcommand\Circle[1]{\tikz[overlay,remember picture] 
  \node[draw=myyellow,circle, text width=18pt,line width=1pt,align=center] {#1};}

\addto\captionsportuguese{\renewcommand{\contentsname}{\hspace{0.8cm}Sumário}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\titleformat{\chapter}[display]
    {\color{white}\bfseries\sffamily\huge}
    {\filleft\MakeUppercase{\chaptertitlename}\large\thechapter}
    {7ex}
    {\begin{flushleft}
        \begin{tikzpicture}[remember picture, overlay]
            \begin{scope}
                \clip[rounded corners = 15pt] (12,0) rectangle (14.5,2);
                \node[] at (13.55,1){\includegraphics[height=2cm]{Figuras/marble bg.png}};
            \end{scope}
            \draw[fill=myDColor, draw opacity = 0] (0,0) rectangle (12.65,2) node{};
        \end{tikzpicture}
        \vspace{-6.1888ex}
    \end{flushleft}
    }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\titleformat{name=\part}[display]   
    {\bfseries\Huge}
    {\thispagestyle{empty}
        \begin{tikzpicture}[remember picture, overlay]
            \begin{scope}
                \clip[rounded corners = 15pt] (12,0) rectangle (14.5,2);
                \node[] at (13.55,1){\includegraphics[height=2cm]{Figuras/marble bg.png}};
            \end{scope}
            \draw[fill=myDColor, draw opacity = 0] (0,0) rectangle (12.65,2);
            \node[white] at (6.325,1){\sffamily PARTE \thepart};
        \end{tikzpicture}
    }
    {2ex}
    {\centering\sffamily\MakeUppercase}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\titleformat{name=\section}[display]
    {\bfseries\sffamily\Large}
    {\begin{tikzpicture}[remember picture, overlay]
        \begin{scope}
                \clip[rounded corners] (0,0) rectangle (12.65,0.3);
                \node[opacity=0.5] at (6.325,1){\includegraphics[width=12.65cm]{Figuras/marble bg.png}};
            \end{scope}
    \end{tikzpicture}}
    {-5ex}
    {\centering\thesection~\vspace{4ex}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\titleformat{name=\subsection}[display]
    {\bfseries\sffamily\large}
    {\begin{tikzpicture}[remember picture, overlay]
        \draw[fill=myDColor!60, draw opacity = 0] (0,0) rectangle (12.65,0.03) node[above=2]{};
    \end{tikzpicture}}
    {-4ex}
    {\centering\thesubsection~\vspace{4ex}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\titleformat{name=\subsubsection}[display]
    {\bfseries\sffamily\large}
    {\begin{tikzpicture}[remember picture, overlay]
        \draw[fill=myLColor!90, draw opacity = 0, rounded corners] (0,0) rectangle (12.65,0.3) node[above=2]{};
    \end{tikzpicture}}
    {-5ex}
    {\centering~\vspace{4ex}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\titlecontents{part}[0ex]
{\addvspace{2pc}}
{\large\bfseries}%
{\Large\bfseries\sffamily Parte }
{\hspace{1em plus 1fill}\large\contentspage}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\titlecontents{chapter}[0ex]
{}
{\bfseries\sffamily\thecontentslabel\hspace{3ex-0.8cm}}
{\bfseries\sffamily }
{\hfill\contentspage}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\titlecontents{section}[4.5ex]
{}
{\thecontentslabel\enskip}
{\bfseries\sffamily }
{\hfill\contentspage}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\titlecontents{subsection}[9ex]
{}
{\thecontentslabel\hspace{3ex}}
{\bfseries\sffamily }
{\hfill\contentspage}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\titlecontents{subsubsection}[4.5ex]
{}
{\thecontentslabel\enskip}
{\itshape}
{\hfill\contentspage}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setcounter{tocdepth}{3}
\setcounter{secnumdepth}{2}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\capa}[4]{%
\begin{titlepage}
    \pagestyle{empty}
    
    \begin{tikzpicture}[remember picture, overlay]
        \fill[black] (current page.south west) rectangle (current page.north east);
        
        \node[white] (title) at ($(current page)+(-1,-6)$){\fontsize{35}{40}\selectfont\sffamily\bfseries\parbox{\widthof{FUNDAMENTOS TEÓRICOS}}{\MakeUppercase{#1}}};
        \node[myLLColor, right] (nome1) at ($(title.south west)+(0,-0.7)$){\fontsize{17}{20}\selectfont\sffamily #2};
        \node[myLLColor, right] (nome2) at ($(nome1.south west)+(0,-0.7)$){\fontsize{17}{20}\selectfont\sffamily #3};
        \node[myLLColor, right] (nome3) at ($(nome2.south west)+(0,-0.5)$){\fontsize{17}{20}\selectfont\sffamily #4};

        \node[] (spiral) at ($(current page)+(0,6)$){\includegraphics[width=1.5\paperwidth]{Figuras/marble bg.png}};
    \end{tikzpicture}
\end{titlepage}
\newpage\null\thispagestyle{empty}
\frontmatter
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\bintro}[7]{%
\thispagestyle{empty}
\begin{flushleft}
    {\Large\bfseries\sffamily#1}\medskip
    
    \begin{tikzpicture}[remember picture, overlay]
        \begin{scope}
            \clip[rounded corners = 2pt] (12.6,0) rectangle (14.5,0.3);
            \node[] at (13.55,0.15){\includegraphics[width=1.9cm]{Figuras/marble bg.png}};
        \end{scope}
        \draw[fill=myDColor, draw opacity = 0] (0,0) rectangle (12.65,0.3);
        \node[] at (13.5,0.8){{\large\bfseries\sffamily#2}};
    \end{tikzpicture}
\end{flushleft}

{#3}\bigskip

{\noindent\scjimeens\ #4}\medskip

{\noindent\scfelps\ #5}\medskip 

{\noindent\scsuaide\ #6}
\newpage\null\thispagestyle{empty}
\frontmatter

\thispagestyle{empty}
\begin{flushleft}
    {\Huge\bfseries\sffamily#7}\medskip
    
    \begin{tikzpicture}[remember picture, overlay]
        
        \begin{scope}
            \clip[rounded corners = 2pt] (12.6,0) rectangle (14.5,0.3);
            \node[] at (13.55,0.15){\includegraphics[width=1.9cm]{Figuras/marble bg.png}};
        \end{scope}
        \draw[fill=myDColor, draw opacity = 0] (0,0) rectangle (12.65,0.3);
    \end{tikzpicture}
    \medskip
    
    {\large\bfseries\sffamily\jimeens\hfill \felps\hfill \suaide}
\end{flushleft}
\vfill
\begin{flushleft}
    \begin{tikzpicture}[remember picture, overlay]
        \node[] (logo) at ($(current page.south)+(-1,5)$){\includegraphics[width=3cm]{Figuras/logo-USP.png}};
        \node[] at ($(logo.north east)+(1.2,-0.55)$){{\large\bfseries\sffamily Universidade}};
        \node[] at ($(logo.north east)+(1.27,-1.05)$){{\large\bfseries\sffamily de São Paulo}};
        
    \end{tikzpicture}
\end{flushleft}

\newpage

\thispagestyle{empty}
\begin{flushleft}
    {\small
    {\LARGE\bfseries\scshape Nome da Editora}\bigskip

    (Título da editora), Rua da editora 1234, São Paulo -- Brasil\bigskip

    Publicação ainda não feita e não confirmada\medskip

    O local da editora responsável será colocado aqui\medskip

    É dever e obrigação de todas as Universidades disseminar o conhecimento em prol da educação, aprendizado e pesquisa afim de levar excelência à ciência. \bigskip

    \href{https://www5.usp.br/}{www5.usp.br}

    Mais informações sobre este título: \href{https://www5.usp.br/}{www.site.com.br/numero-do-ISBN}\medskip

    \textcopyright\ L.R. Ximenes, F. Gimenez e A.A. Suaide 2024\medskip

    Esta publicação está protegida por direitos autorais. Sujeito a exceções estatutárias e a acordos de licenciamento coletivo relevantes, nenhuma reprodução de qualquer parte pode ocorrer sem a permissão por escrito da (Nome da editora).\medskip

    Primeira publicação em (talvez 2024)\medskip

    Impresso e encadernado no Brasil por (empresa responsável).\bigskip

    ISBN\quad 123-4-567-89101-1\quad eBook (nome da biblioteca online)\medskip

    ISBN\quad 123-4-567-89101-1\quad Capa dura\bigskip

    A (nome da editora) não se responsabiliza pela persistência ou precisão dos URL's de sites externos ou de terceiros mencionados nesta publicação e não garante que o conteúdo de tais sites seja ou permanecerá preciso ou apropriado.
    }
\end{flushleft}

\thispagestyle{empty}
\frontmatter
\shipout\null
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\fancypagestyle{toc}{%
\fancyhf{}
\fancyhead[RE]{
    \begin{tikzpicture}[remember picture, overlay]
        \begin{scope}
                \clip[rounded corners = 2pt, yshift=-0.15cm] (-0.12,-0.2) rectangle (-1.68,0);
                \node[yshift=-0.15cm] at (-0.9,-0.1){\includegraphics[width=1.56cm]{Figuras/marble bg.png}};
            \end{scope}
        \draw[thick, draw opacity=0, rounded corners = 2pt, yshift=-0.15cm] (-0.12,-0.2) rectangle (-1.68,0) node[midway, above]{\thepage};
    \end{tikzpicture}\hfill
}
\fancyhead[LO]{\hfill
    \begin{tikzpicture}[remember picture, overlay]
        \begin{scope}
            \clip[rounded corners = 2pt, yshift=-0.15cm] (0.32,-0.2) rectangle (1.88,0);
            \node[yshift=-0.15cm] at (1.1,-0.1){\includegraphics[width=1.56cm]{Figuras/marble bg.png}};
        \end{scope} 
        \draw[thick, draw opacity=0, rounded corners = 2pt, yshift=-0.15cm] (0.32,-0.2) rectangle (1.88,0) node[midway, above]{\thepage};
    \end{tikzpicture}
}
\renewcommand{\headrulewidth}{1pt}%
\renewcommand{\footrulewidth}{0pt}%
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\divider}{\setlength{\parindent}{0pt}\textcolor{myDColor!30}{\rule{\linewidth}{0.6pt}}\smallskip\setlength{\parindent}{1.5em}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{myitemize}{
    \begin{itemize}[\color{myDColor}{$\bullet$}]}{\end{itemize}
}

\tcolorboxenvironment{myitemize}{
    blanker,
    breakable,
    before skip = 6pt,
    after skip = 6pt,
    borderline west = {1mm}{0pt}{myDColor}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NewEnviron{answer}{
\begin{equation}
\tcbhighmath[
    boxrule = 1pt,
    colframe = myLLColor,
    colback = myLColor,
    rounded corners,
    arc = 3mm,
    coltext = myLLColor!70!white,
]{\BODY}\end{equation}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NewEnviron{answer*}{
\begin{equation*}
\tcbhighmath[
    boxrule = 1pt,
    colframe = myLLColor,
    colback = myLColor,
    rounded corners,
    arc = 3mm,
    coltext = myLLColor!70!white,
]{\BODY}\end{equation*}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newtcolorbox[auto counter, number within = chapter]{example}[1][]{%
    enhanced,
    skin first=enhanced,
    skin middle=enhanced,
    skin last=enhanced,
    before upper={\parindent15pt},
    breakable,
    boxrule = 0pt,
    frame hidden,
    borderline west = {4pt}{0pt}{myDColor},
    colback = LinkColor!15!white,
    coltitle = white,
    sharp corners,
    rounded corners = southeast,
    arc is angular,
    arc = 3mm,
    attach boxed title to top left,
    boxed title style = {%
        enhanced,
        colback = myDColor,
        colframe = myDColor,
        top = 0pt,
        bottom = 0pt,
        sharp corners,
        rounded corners = northeast,
        arc is angular,
        arc = 2mm,
        rightrule = 0pt,
        bottomrule = 0pt,
        toprule = 0pt,
    },
    title = {\bfseries\large Exemplo~\thetcbcounter:}, 
    overlay unbroken={%
        \node[anchor=west, color=black!70] at (title.east) {#1};
        \path[fill = tcbcolback!80!black] 
            ([yshift = 3mm]interior.south east) -- ++(-0.4,-0.1) -- ++(0.1,-0.2);
    },
    overlay first = {%
        \node[anchor=west, color=black!70] at (title.east) {#1};
        \path[fill = tcbcolback!80!black] 
            ([yshift = 3mm]interior.south east) -- ++(-0.4,-0.1) -- ++(0.1,-0.2);
    },
    overlay middle={%
        \path[fill = tcbcolback!80!black] 
            ([yshift = -3mm]interior.north east) -- ++(-0.4,0.1) -- ++(0.1,0.2);
        \path[fill = tcbcolback!80!black] 
            ([yshift = 3mm]interior.south east) -- ++(-0.4,-0.1) -- ++(0.1,-0.2);
    },
    overlay last={%
        \path[fill = tcbcolback!80!black] 
            ([yshift = -3mm]interior.north east) -- ++(-0.4,0.1) -- ++(0.1,0.2);
        \path[fill = tcbcolback!80!black] 
            ([yshift = 3mm]interior.south east) -- ++(-0.4,-0.1) -- ++(0.1,-0.2);
    },
    extras middle and last = { rounded corners = northeast }
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newtcolorbox{note}[2][]{
    colback = myLLColor!10,
    colframe = myLLColor!10,
    coltitle = myLColor,
    before skip = 6mm,
    after skip = 6mm,
    fonttitle = \sffamily\bfseries,
    title = #2, 
    sharp corners,
    rounded corners = southeast,
    arc is angular,
    arc = 3mm,
    boxrule = 0pt,
    breakable,
    enhanced,
    overlay = {
        \node[font = \Large, text = myLColor] at ([yshift = -4mm]interior.north west) {{\color{myLColor}\ding{228}}};
        },
    underlay = {
        \path[fill = tcbcolback!80!black] ([yshift = 3mm]interior.south east)--++(-0.4,-0.1)--++(0.1,-0.2);
        \path[draw = tcbcolframe,shorten <=-0.05mm,shorten >=-0.05mm] ([yshift = 3mm]interior.south east)--++(-0.4,-0.1)--++(0.1,-0.2);
    },
    #1
    }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand*\eqlineset{\pgfqkeys{/eqlines}}
\eqlineset{
  picture/.style={baseline, remember picture},
  line/.style={thick, draw=myLLColor, line cap=round},
  node/.style={
    minimum size=+0pt, inner sep=+0pt, outer ysep=+.3333em, anchor=base,
    name=tma\thetikzmarkalign},
}
\newcounter{tikzmarkalign}
\makeatletter
\AtBeginEnvironment{align}{%
  \setcounter{tikzmarkalign}{0}%
  \newcommand*\noeq{\hphantom{={}}}%
  \newcommand*\eq{
    \ifnum\value{tikzmarkalign}=0
      \mathrel{\tikz[/eqlines/picture]\node[/eqlines/node]{$=$};}
    \else
      \mathrel{
        \begin{tikzpicture}[/eqlines/picture]
          \node[/eqlines/node] (tma\thetikzmarkalign) {$=$};
          \unless\ifmeasuring@
            \path[/eqlines/line, overlay] (tma\thetikzmarkalign)
                        -- (tma\pgfinteval{\thetikzmarkalign-1});
          \fi
        \end{tikzpicture}
      }
    \fi
    \stepcounter{tikzmarkalign}
  }%
  \newcommand*\geqs{
    \ifnum\value{tikzmarkalign}=0
      \mathrel{\tikz[/eqlines/picture]\node[/eqlines/node]{$\geqslant$};}
    \else
      \mathrel{
        \begin{tikzpicture}[/eqlines/picture]
          \node[/eqlines/node] (tma\thetikzmarkalign) {$\geqslant$};
          \unless\ifmeasuring@
            \path[/eqlines/line, overlay] (tma\thetikzmarkalign)
                        -- (tma\pgfinteval{\thetikzmarkalign-1});
          \fi
        \end{tikzpicture}
      }
    \fi
    \stepcounter{tikzmarkalign}
  }%
  \newcommand*\approxi{
    \ifnum\value{tikzmarkalign}=0
      \mathrel{\tikz[/eqlines/picture]\node[/eqlines/node]{$\approx$};}
    \else
      \mathrel{
        \begin{tikzpicture}[/eqlines/picture]
          \node[/eqlines/node] (tma\thetikzmarkalign) {$\approx$};
          \unless\ifmeasuring@
            \path[/eqlines/line, overlay] (tma\thetikzmarkalign)
                        -- (tma\pgfinteval{\thetikzmarkalign-1});
          \fi
        \end{tikzpicture}
      }
    \fi
    \stepcounter{tikzmarkalign}
  }%
}
\makeatother
\makeatletter
\AtBeginEnvironment{align*}{%
  \setcounter{tikzmarkalign}{0}%
  \newcommand*\noeq{\hphantom{={}}}%
  \newcommand*\eq{
    \ifnum\value{tikzmarkalign}=0
      \mathrel{\tikz[/eqlines/picture]\node[/eqlines/node]{$=$};}
    \else
      \mathrel{
        \begin{tikzpicture}[/eqlines/picture]
          \node[/eqlines/node] (tma\thetikzmarkalign) {$=$};
          \unless\ifmeasuring@
            \path[/eqlines/line, overlay] (tma\thetikzmarkalign)
                        -- (tma\pgfinteval{\thetikzmarkalign-1});
          \fi
        \end{tikzpicture}
      }
    \fi
    \stepcounter{tikzmarkalign}
  }%
  \newcommand*\geqs{
    \ifnum\value{tikzmarkalign}=0
      \mathrel{\tikz[/eqlines/picture]\node[/eqlines/node]{$\geqslant$};}
    \else
      \mathrel{
        \begin{tikzpicture}[/eqlines/picture]
          \node[/eqlines/node] (tma\thetikzmarkalign) {$\geqslant$};
          \unless\ifmeasuring@
            \path[/eqlines/line, overlay] (tma\thetikzmarkalign)
                        -- (tma\pgfinteval{\thetikzmarkalign-1});
          \fi
        \end{tikzpicture}
      }
    \fi
    \stepcounter{tikzmarkalign}
  }%
  \newcommand*\approxi{
    \ifnum\value{tikzmarkalign}=0
      \mathrel{\tikz[/eqlines/picture]\node[/eqlines/node]{$\approx$};}
    \else
      \mathrel{
        \begin{tikzpicture}[/eqlines/picture]
          \node[/eqlines/node] (tma\thetikzmarkalign) {$\approx$};
          \unless\ifmeasuring@
            \path[/eqlines/line, overlay] (tma\thetikzmarkalign)
                        -- (tma\pgfinteval{\thetikzmarkalign-1});
          \fi
        \end{tikzpicture}
      }
    \fi
    \stepcounter{tikzmarkalign}
  }%
}
\makeatother
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newtheorem{definition}{Definição}[chapter]
\tcolorboxenvironment{definition}{
    enhanced jigsaw,
    boxrule = 0mm,
    toprule = 0.6 pt,
    bottomrule = 0.6 pt,
    colframe = myDColor!30,
    colback = white,
    coltitle = myDColor,
    interior hidden,
    breakable,
    before skip = 6 mm,
    after skip = 6 mm
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newtheorem{corollary}{Corolário}[chapter]
\tcolorboxenvironment{corollary}{
    enhanced jigsaw,
    boxrule = 0mm,
    toprule = 0.6 pt,
    bottomrule = 0.6 pt,
    colframe = myDColor!30,
    colback = white,
    coltitle = myDColor,
    interior hidden,
    breakable,
    before skip = 6 mm,
    after skip = 6 mm
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\prob}[2]{\mathds{P}(#1|#2)}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\tcolorboxenvironment{proof}{%
    blanker,
    breakable,
    left=5mm,
    before skip=10pt,
    after skip=10pt,
    borderline west={1mm}{0pt}{black}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\tcbset{defstyle/.style = {% Definition style
        fonttitle = \bfseries\upshape, 
        fontupper = \slshape,
        arc = 0mm, 
        colback = LinkColor!15!white,
        colframe = black
    }
}

\newtcbtheorem[number within=chapter]{Definition}{Definition}{defstyle}{theo}

\newtcbtheorem[number within = chapter]{theorem}{Teorema}
        {breakable,
        enhanced,
        before skip = 6pt,
        after skip = 6pt,
        arc = 0mm,
        outer arc = 0mm,
        boxrule = 0mm,
        toprule = 1mm,
        bottomrule = 1mm,
        left = 1mm,
        right = 1mm,
        titlerule = 0mm,
        toptitle = 0mm,
        bottomtitle = 1mm,
        top = 0mm,
        colframe = myLColor,
        colback = LinkColor!15!white,
        coltitle = white,
        title style = {
            top color = myLColor,
            bottom color = myLColor,
            middle color = myLColor
        },
        fonttitle = \bfseries\normalsize,
        fontupper = \normalsize\itshape,
    }{theo}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\qedsymbol}{$\blacksquare$}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% \newtheorem{corollary}{Corolário}[chapter]
\newtheorem{properties}{Propriedade}[chapter]
\tcolorboxenvironment{properties}{
    enhanced jigsaw,
    boxrule = 0mm,
    toprule = 0.6 pt,
    bottomrule = 0.6 pt,
    colframe = myDColor!30,
    colback = white,
    coltitle = myDColor,
    interior hidden,
    breakable,
    before skip = 6 mm,
    after skip = 6 mm
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\diag}[1]{\text{diag}\qty(#1)}
\tikzset{arrow inside/.style = {postaction=decorate, decoration={markings, mark=at position .62 with \arrow{stealth}}}}
\def\hsp{\hspace{1cm} \& \hspace{1cm}}