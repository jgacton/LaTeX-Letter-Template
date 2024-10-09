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

\newcommand{\originaddress}[2]{
    \hfill \stackengine{\stackgap}{#2}{#1}{O}{r}{\quietstack}{\useanchorwidth}{\stacktype}\\
}

\newcommand{\destinationaddress}[2]{
    \stackengine{\stackgap}{#2}{#1}{O}{l}{\quietstack}{\useanchorwidth}{\stacktype}\\
}

\newcommand{\greeting}[1]{
    #1\\
}

\newcommand{\closing}[1]{
    #1\\
}

\newcommand{\signature}[1]{
    #1\\
}
