\ProvidesClass{UoYCSexam}[2020/05/10 Scott Pinwell]

\LoadClass[fontsize=12pt]{scrartcl}

% Packages
\RequirePackage[T1]{fontenc} % prevents < in text mode turning into
\RequirePackage{textcomp}    % ?', etc
\RequirePackage[osf]{mathpazo} % Palatino font
\RequirePackage{courier} % nicer typewriter-style fonts
\RequirePackage[scaled]{helvet} % nice san serif fonts
\RequirePackage{microtype} % micro-typographical extensions for
                           % pdf(e)(la)tex
\RequirePackage[british]{babel} % British hyphenation patterns, etc.
\RequirePackage{csquotes}
\RequirePackage{graphicx} % Images
\RequirePackage[nolist,nohyperlinks]{acronym}
\RequirePackage{subcaption}

\RequirePackage[scaled]{helvet}
\renewcommand\familydefault{\sfdefault} 
\RequirePackage[T1]{fontenc}

% Hyphens
\RequirePackage{hyphenat}

% Placeholder text
\RequirePackage{lipsum}

\RequirePackage{graphicx}
\RequirePackage{adjustbox}

\RequirePackage[style=ieee,backend=biber,dashed=false]{biblatex}

% \pagestyle{headings}

% Reduce spacing between paragraphs
% \RedeclareSectionCommand[
%   runin=true,
%   %afterindent=false,
%   beforeskip=.5\baselineskip,
%   afterskip=1em]{paragraph}

% Margins
\topmargin=-0.45in
\evensidemargin=0in
\oddsidemargin=0in
\textwidth=6.5in
\textheight=9.0in
\headsep=0.25in

% Line spacing
\setlength{\parskip}{1em}

\DeclareUnicodeCharacter{2212}{-}

% Table cell size
\renewcommand{\arraystretch}{1.2}

% list setup
\RequirePackage{enumitem}
\renewcommand{\theenumii}{\roman{enumii}}%

% image answer command
\newcommand{\imageanswer}[2]{
  \begin{minipage}[t]{\linewidth}
    \bigskip{}
    \centering
    \adjustbox{valign=t}{%
      \includegraphics[width=.8\linewidth]{#1}%
    }

    \medskip
    #2
  \end{minipage}
  }

% Define answer environments
\newenvironment{answers}{%
  \begin{enumerate}[leftmargin=*, labelsep=0.5em]
}{%
  \end{enumerate}
}

\newenvironment{subanswers}{%
  \begin{enumerate}[leftmargin=1.5em, labelsep=0.5em]
}{%
  \end{enumerate}
}

\newenvironment{subsubanswers}{%
  \begin{enumerate}[label=\alph*., leftmargin=1.5em, labelsep=0.5em]
}{%
  \end{enumerate}
}