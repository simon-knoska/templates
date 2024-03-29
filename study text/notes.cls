% version 0.1.0
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{notes}[]

% inherit from article class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions
\LoadClass[10pt]{article}

\RequirePackage{lastpage}

% math
\RequirePackage{bbding}         % various symbols (squares, asterisks, scissors, ...)
\RequirePackage{amsmath}        % extensions for typesetting of math
\RequirePackage{amssymb}
\RequirePackage{amsfonts}       % math fonts
\RequirePackage{amsthm}         % theorems, definitions, etc.
\newtheoremstyle{thmstyle}                % Name
  {}%                                     % Space above
  {}%                                     % Space below
  {}%                                     % Body font
  {}%                                     % Indent amount
  {\bfseries}%                            % Theorem head font
  {}%                                     % Punctuation after theorem head
  {\newline}%                             % Space after theorem head, ' ', or \newline
  {\thmname{#1}\thmnumber{ #2}\thmnote{ (#3)}}%          
  
\newtheoremstyle{rmkstyle}                % Name
  {}%                                     % Space above
  {}%                                     % Space below
  {}%                                     % Body font
  {}%                                     % Indent amount
  {\itshape}%                             % Theorem head font
  {}%                                     % Punctuation after theorem head
  {\newline}%                             % Space after theorem head, ' ', or \newline
  {\thmname{#1}\thmnumber{ #2}\thmnote{ (#3)}}%
  
\newtheoremstyle{examplestyle}            % Name
  {}%                                     % Space above
  {}%                                     % Space below
  {}%                                     % Body font
  {}%                                     % Indent amount
  {\itshape}%                             % Theorem head font
  {}%                                     % Punctuation after theorem head
  {\newline}%                             % Space after theorem head, ' ', or \newline
  {\thmname{#1}\thmnumber{ #2}\thmnote{ (#3)}}%

% layout settings
\RequirePackage[
  a4paper,
  margin=2cm,  
  headsep=0.8cm,
  headheight=13pt]{geometry}

\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhead{}
\fancyhead[L]{\leftmark}
\fancyhead[R]{}
\fancyfoot{}
\fancyfoot[C]{\bfseries \thepage}

% mail
\newcommand\@mail{0}
\newcommand\mail[1]{
\renewcommand\@mail{#1}}