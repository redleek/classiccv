\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{classiccv}[2016/07/02 v0.2 Classically formatted CV class]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions \relax

\LoadClass{article}

\RequirePackage{ifxetex}
\RequirePackage[margin=1.5in]{geometry}
\RequirePackage{titlesec}
\RequirePackage{fancyhdr}

\ifxetex
    \RequirePackage{fontspec}
    \setmainfont[Ligatures=Historic,Ligatures=Rare]{Linux Libertine O}
\fi

\fancyhf{}
\pagestyle{fancy}
\fancyfoot[R]{\bfseries \thepage}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0.5pt}


\newcommand{\name}[1]{
    \begin{center}
        {\Huge\scshape{#1}}
        \fancyfoot[c]{\bfseries{#1}}
    \end{center}
    }

\newcommand{\contact}[5]{
    #1 \hfill {\large\textperiodcentered} \hfill #2 \hfill {\large\textperiodcentered} \hfill #3 \hfill #4 \hfill #5
    }

\newcommand{\longcontact}[6]{
    \begin{center}
        #1 \hfill {\large\textperiodcentered} \hfill #2 \hfill {\large\textperiodcentered} \hfill #3 \hfill {\large\textperiodcentered} \hfill #4
    \end{center}
    \begin{center}
        #5 \hfill #6
    \end{center}
    }

\titleformat{\section}
    {\vskip 0.2cm\Large\scshape\raggedright}
    {}{0em}
    {}
    [\titlerule]

\titleformat{\subsection}
    {\vskip 0.1cm\large\scshape\raggedright}
    {}{0em}
    {}

\newcommand{\datedsection}[3]{
    \section[#1]{#1 \hfill #2--#3}
    }

\newcommand{\datedsubsection}[3]{
    \subsection[#1]{#1 \hfill #2--#3}
    }

\newcommand{\workitems}[3]{
    \begin{itemize}
        \item #1;
        \item #2; and
        \item #3
    \end{itemize}
    }
