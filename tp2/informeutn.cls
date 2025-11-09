% Minimal shim class 'informeutn' for previewing tp2.tex
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{informeutn}[2025/11/01 Minimal shim of informeutn]
% Use report as base to provide \chapter
\LoadClass[12pt,a4paper]{report}
\RequirePackage{geometry}
\RequirePackage{titlesec}
\RequirePackage{ifthen}
\RequirePackage{xcolor}
\RequirePackage{lipsum}
% Avoid hyperref here to keep the shim minimal

\newcommand{\@materia}{}
\newcommand{\@titulo}{}
\newcommand{\@comision}{}
\newcommand{\@autores}{}
\newcommand{\@fecha}{}

\newcommand{\materia}[1]{\gdef\@materia{#1}}
\newcommand{\titulo}[1]{\gdef\@titulo{#1}}
\newcommand{\comision}[1]{\gdef\@comision{#1}}
\newcommand{\autores}[1]{\gdef\@autores{#1}}
\newcommand{\fecha}[1]{\gdef\@fecha{#1}}

\makeatletter
\renewcommand{\maketitle}{%
  \begin{titlepage}
    \centering
    {\huge\bfseries \@titulo \par}\vspace{1.5cm}
    {\Large \@autores \par}\vspace{2cm}
    {\large \@materia \par}
    {\normalsize Comisi\'on: \@comision \par}
    {\normalsize Fecha: \@fecha \par}
    \vfill
  \end{titlepage}
}
\makeatother
