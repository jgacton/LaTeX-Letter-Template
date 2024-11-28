% Class declaration and passing through args to parent article class
\ProvidesClass{MyLetter}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax 
\LoadClass{article}

% Package imports
\usepackage{geometry}
\usepackage{lmodern}
\usepackage{aesupp}
\usepackage{stackengine}

% Page margins
\geometry{
    top=30mm, 
    bottom=30mm, 
    left=30mm, 
    right=30mm
}

\pagestyle{empty}
\setlength{\parindent}{0pt}

\newcommand{\originaddress}[2]{
    \hfill \stackengine{\stackgap}{#2}{#1}{O}{r}{\quietstack}{\useanchorwidth}{\stacktype}%
    \vspace{\baselineskip}%
}

\newcommand{\destinationaddress}[2]{
    \stackengine{\stackgap}{#2}{#1}{O}{l}{\quietstack}{\useanchorwidth}{\stacktype}%
    \vspace{\baselineskip}%
}

\newcommand{\dateofwriting}[1]{
    \hfill #1%
    \vspace{\baselineskip}%
}

\newcommand{\greeting}[1]{
    #1%
    \vspace{\baselineskip}%
}

\newcommand{\closing}[1]{
    \vspace{\baselineskip}%
    #1%
    \vspace{\baselineskip}%
}

\newcommand{\signature}[1]{
    #1%
}
