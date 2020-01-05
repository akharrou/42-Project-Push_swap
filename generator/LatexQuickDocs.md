
# QuickDocs | $\LaTeX$
----






### [Commands / Macros](https://en.wikibooks.org/wiki/LaTeX/Macros)

> `[>commands >functions >funcs >fts >cmds >macros]`

- In $\LaTeX$, "_commands_" are essentially at times **_macros_** and at others **_functions_** –– in the sense that they take arguments and result in some form of output.

- In $\LaTeX$, this output is in the form of either an **expansion** in source code, in which case they are referred to as **macros**, else their output is in **print** (i.e formatted output).

- Commands follow the form:

	```latex
	\cmdname[<options>]{<argument>}{<argument>} ...  {<argument>}
	```

- All **commands** are prepended by backslash `\`, can take `options` in square brackets `[]` and can take argument(s) in subsequent curly brackets `{#1}` `{#2}` ... `{#n}`. But they need not to, it depends on the implementation of the command obviously.

- See how to define new commands with `\newcommand` and how to redefine existing ones with `\renewcommand` in sections §ref & §ref, respectively.








### [Document Classes](https://en.wikibooks.org/wiki/LaTeX/Document_Structure#Document_classes)

> `[>init >documentclass >docclass >doclass >classes >doctype]`

-	When processing an input file, LaTeX needs to know which layout standard to use. Layouts standards are contained within 'class files' which have .cls as their filename extension.

	```latex
	\documentclass[<options>]{<class>}
	```

    Here, the class parameter for the command `\documentclass` specifies the `.cls` file to use for the document. It is recommended to put this declaration at the very beginning.

----
The available **document classes** are:

Document | Classes
---------|--------
article | For articles in scientific journals, presentations, short reports, program documentation, invitations, ...
IEEEtran | For articles with the IEEE Transactions format.
proc | A class for proceedings based on the article class.
report | For longer reports containing several chapters, small books, thesis, ...
book | For real books.
slides | For slides. The class uses big sans serif letters.
memoir | For changing sensibly the output of the document. It is based on the book class, but you can create any kind of document with it [1]
letter | For writing letters.
beamer | For writing presentations (see LaTeX/Presentations).

- There also exists non-generic classes (those provided by university departments or publication houses).
- These have different options than those shown below or no options at all. Normally, third-party classes come with their own documentation.

----
> `[>docoptions >docops >dcops >documentoptions >documentops]`

The most **common options** for the generic document classes are listed in the following table:


Document | Class Options
---------|-------|
10pt, 11pt, 12pt | Sets the size of the main font in the document. If no option is specified, 10pt is assumed.
a4paper, letterpaper,... | Defines the paper size. The default size is letterpaper; However, many European distributions of TeX now come pre-set for A4, not Letter, and this is also true of all distributions of pdfLaTeX. Besides that, a5paper, b5paper, executivepaper, and legalpaper can be specified.
fleqn | Typesets displayed formulas left-aligned instead of centered.
leqno | Places the numbering of formulas on the left hand side instead of the right.
titlepage, notitlepage | Specifies whether a new page should be started after the document title or not. The article class does not start a new page by default, while report and book do.
twocolumn | Instructs LaTeX to typeset the document in two columns instead of one.
twoside, oneside | Specifies whether double or single sided output should be generated. The classes article and report are single sided and the book class is double sided by default. Note that this option concerns the style of the document only. The option twoside does not tell the printer you use that it should actually make a two-sided printout.
landscape | Changes the layout of the document to print in landscape mode.
openright, openany | Makes chapters begin either only on right hand pages or on the next page available. This does not work with the article class, as it does not know about chapters. The report class by default starts chapters on the next page available and the book class starts them on right hand pages.
draft | makes LaTeX indicate hyphenation and justification problems with a small square in the right-hand margin of the problem line so they can be located quickly by a human. It also suppresses the inclusion of images and shows only a frame where they would normally occur.

**Example:**

For example, if you want a report to be in `12pt` type on `A4`, but printed `one-sided`, you would use:

```latex
\documentclass[ 12pt, a4paper, oneside ]{report}
```





### [Packages](https://en.wikibooks.org/wiki/LaTeX/Document_Structure#Packages)

> `[>packages >libs >libraries >modules >mods >imports >includes >usepackage >pckgs >pkgs]`

- "**_Packages_**" are synonym to **libraries** and/or **modules**. They import bundles of extra source code that make available extra functionalities.


```
\usepackage [utf8]  { inputenc }  % ?
\usepackage         { hyperref }  % Allow hyperlinking of sections

% \usepackage         { tools    }  % Miscellaneous packages written by the LATEX3 project team.
                                  % This collection of packages includes, at least, the following
                                  % (some files may have % slightly different names on certain
                                  % systems): array, calc, dcolumn, delarray, hhline, longtable,
                                  % tabularx, afterpage, bm, enumerate, fontsmpl, ftnright,
                                  % indentfirst, layout, multicol, rawfonts, % somedefs, showkeys,
                                  % theorem, varioref, verbatim, xr, xspace
```


### Document Structure

The actual document content starts only after `\begin{document}` and ends at: `\end{document}`.

`\begin` initiates here what is called an


### Title Page

> `[>title >author >date >maketitle]`


The following is how to create a basic title page:

```
\title            {<text>}  // Title
\author           {<text>}  // Author
\date             {<text>}  // Date

\maketitle        {<text>}  // Tells latex to generate the title page (must be present)
```



### Table of Contents (ToC)
> `[>toc, >lof, >lot, >tableofcontents, >tableoffigures >tableoftable]`

% All auto-numbered headings get entered in the Table of Contents (ToC)
% automatically. You don't have to print a ToC, but if you want to, just
% add the command \tableofcontents at the point where you want it printed
% (usually after the Abstract or Summary).

% \tableofcontents           // prints the table of contents (toc)

% The commands \listoffigures and \listoftables work in exactly the same way
% as \tableofcontents to automatically list all your tables and figures.

% To change the title of the ToC, you have to paste this command
% \renewcommand{\contentsname}{<New table of contents title>} in
% your document preamble. The List of Figures (LoF) and List of
% Tables (LoT) names can be changed by replacing the \contentsname
% with \listfigurename for LoF and \listtablename for LoT.

% ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** **
% >TEXT, >SECTION , >SUBSECTION, >PARAGRAPH, >SUBPARAGRAPH, >CHAPTER, >PART

% All the titles of the sections are added automatically to the table of
% contents (if you decide to insert one). Notice that you do not need to
% specify section numbers; LaTeX will sort that out for you. Also, for
% sections, you do not need to use \begin and \end commands to indicate
% which content belongs to a given block.

% LaTeX provides 7 levels of depth for defining sections (see table below).
% Each section in this table is a subsection of the one above it.

% Command                          Level	  Comment
% \part{part}                      -1	      not in letters
% \chapter{chapter}                0	      only books and reports
% \section{section}                1	      not in letters
% \subsection{subsection}          2	      not in letters
% \subsubsection{subsubsection}    3	      not in letters
% \paragraph{paragraph}            4	      not in letters
% \subparagraph{subparagraph}      5	      not in letters
% text                             6

% Paragraphs of text come after section headings. Simply type the text and
% leave a blank line between paragraphs. The blank line means "start a new
% paragraph here": it does not mean you get a blank line in the typeset output.
% For formatting paragraph indents and spacing between paragraphs, refer to the
% Paragraph Formatting section.

% [https://en.wikibooks.org/wiki/LaTeX/Paragraph_Formatting#Paragraph_Indents]

% If the name of a section is too long such that it would mess up the tables of
% content, you can put the table of content name that you want in the option square
% brackets prior to the curly bracket section name:

% Synopsis, one of:

%     \subsubsection{title}                    % Normal
%     \subsubsection*{title}                   % Not listed in ToC
%     \subsubsection[toc-title]{title}         % Listed as 'toc-title' in ToC

% or one of:

%     \paragraph{title}
%     \paragraph*{title}
%     \paragraph[toc-title]{title}

% or one of:

%     \subparagraph{title}
%     \subparagraph*{title}
%     \subparagraph[toc-title]{title}

% Example:

% \section[Effect on staff turnover]{An analysis of the
% effect of the revised recruitment policies on staff
% turnover at divisional headquarters}

% To add a tag at the end of a title name, you can put an '\hfill' followed by the
% tag, example:
%
% \section { <title> \hfill <tag> }


% ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** **
% >paragraphlinebreak >paralinebreak >parabreak >paragraphbreak

% To get the [sub]paragraph title to be on a different line than the paragraph itself
% you can do one of the following:

% \paragraph{Title} \hspace{0pt} \\
% Text...

% or

% \paragraph{Title} ~\\
% Text...


% ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** **
% >DEPTH, >SECDEPTH, >TOCDEPTH, >UNNUMBERED

% LaTeX default counters:

% part
% chapter
% section
% subsection
% subsubsection
% paragraph
% subparagraph
% page
% figure
% table
% footnote
% mpfootnote

% You can change the depth to which section numbering occurs, so you can turn
% it off selectively. By default it is set to 3. If you only want parts, chapters,
% and sections numbered, not subsections or subsubsections etc., you can change the
% value of the secnumdepth counter using the \setcounter command, giving the depth
% level you wish. For example, if you want to change it to "1":

% \setcounter{secnumdepth}{1}

% A related counter is tocdepth, which specifies what depth to take the Table of Contents
% to. It can be reset in exactly the same way as secnumdepth. For example:

% \setcounter{tocdepth}{3}

% To get an unnumbered section heading which does not go into the Table of Contents,
% follow the command name with an asterisk before the opening curly brace:

% \subsection*{Introduction}

% All the divisional commands from \part* to \subparagraph* have this "starred" version

% The \tableofcontents command normally shows only numbered section headings, and only
% down to the level defined by the tocdepth counter, but you can add extra entries with
% the \addcontentsline command. Example:

% \subsection*{Preface}
% \addcontentsline{toc}{subsection}{Preface}


% ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** **
% >breaks >newline >\\* >linebreak >returnline >lineseperation >\n


% LaTeX takes care of formatting, breaks included. You should avoid manual breaking
% as much as possible, for it could lead to very bad formatting. Here follows a quick
% reference:

% ––––––––––––––––––––|–––––––––––––––––––––––––––––––––––––––
% \newline            |  Breaks the line at the point of the command.
% ––––––––––––––––––––|–––––––––––––––––––––––––––––––––––––––
% \\                  |  Breaks the line at the point of the command;
%                     |  it is usually a shorter version of the previous
%                     |  command, but LaTeX sometimes redefines it for
%                     |  several environments.
% ––––––––––––––––––––|–––––––––––––––––––––––––––––––––––––––
% \\[extra-space]     |  Command \\ has an optional argument that specifies
%                     |  the amount of extra vertical space to be inserted
%                     |  before the next line. This amount can be negative.
% ––––––––––––––––––––|–––––––––––––––––––––––––––––––––––––––
% \\*                 |  Breaks the line at the point of the command and
%                     |  additionally prohibits a page break after the forced
%                     |  line break. This command also features the vertical
%                     |  space as optional parameter.
% ––––––––––––––––––––|–––––––––––––––––––––––––––––––––––––––
% \linebreak[number]  |  Breaks the line at the point of the command. The
%                     |  number you provide as an argument represents the
%                     |  priority of the command in a range from 0 (allow
%                     |  but not encourage a line break) to 4 (do it anyway).
% ––––––––––––––––––––|–––––––––––––––––––––––––––––––––––––––
% \break              |  If used in horizontal mode, this is equivalent to
%                     |  `\linebreak`, if used in vertical mode it is equivalent
%                     |  to `\pagebreak`.
% ––––––––––––––––––––|–––––––––––––––––––––––––––––––––––––––
% \par                |  Ends the current paragraph. It is equivalent to leaving
%                     |  a blank line in the input.
% ––––––––––––––––––––|–––––––––––––––––––––––––––––––––––––––

% If you use these comments to put a break in a section heading, the line will also
% be broken in the table of contents. To avoid such a division, you can use the
% \section[]{} command.


% ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** **
% >paragraphs, >paragraphalignment, >alignment, >alignparagraph, >justification >para.justification


% Paragraphs in LaTeX are usually fully justified, i.e. flush with both the left and right margins.
% For whatever reason, should you wish to alter the justification of a paragraph, there are three
% environments at hand, and also LaTeX command equivalents.

% Alignment       |   Environment  |  Command
% ----------------|----------------|---------------
% Left justified  |   flushleft    |  \raggedright
% Right justified |   flushright   |  \raggedleft
% Center          |   center       |  \centering
% Justified       |                |  \justifying{#1}   ('ragged2e' package required)

\usepackage{ragged2e}


% All text between the \begin and \end of the specified environment will be justified appropriately.
% The  commands listed are for use within other environments. For example, p (paragraph) columns in
% tabular.

% There is no way (in standard LaTeX) to set full justification explicitly. It means that if you do
% not  enclose the previous 3 commands into a group, the rest of the document will be affected.

% So the right way of doing this with commands is

% {\raggedleft Some text flushed right.}

% However, if you really need to disable one of the above commands locally (for example because you
% have to use some broken package), you can use the command \justifying from package ragged2e.


% ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** **
% >tabulations >tabs >horizontalspacing >sidespace

% To make a horizontal tab, you can use one of the following:

    % \quad
    %     Small tab.

    % \qquad
    %     Bigger tab.

    % \hspace{x}
    %     Custom length tab; (ex: x=10pt, 1cm, 10mm).

    \newcommand {\tab} [1] [1cm] {\hspace*{#1}}
    %     Custom tab command, calling '\hspace{x}' under the hood (w/ a default of 1cm).


% See also: the 'tabto' package: \tab, \tabto are defined therein.



% ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** **
% >paragraphindentation >paraindentation >indents

% To create a non-indented paragraph, you can use: '\noindent' macro.
% To indent a paragraph that is not indented, you can use: '\indent' macro; will only have an
% effect when \parindent is not set to zero. f you want to indent the beginning of every section,
% you can use the 'indentfirst' package: once loaded, the beginning of any chapter/section is
% indented by the usual paragraph indentation

% By default, the first paragraph after a heading follows the standard Anglo-American publishers'
% practice of no indentation. The size of subsequent paragraph indents is determined by a parameter
% called \parindent. The default length that this constant holds is set by the document class that
% you use. It is possible to override it by using the \setlength command. This will set paragraph
% indents to 1cm:

% \setlength{\parindent}{1cm} % Default is 15pt.

% If you want to disable it globally you could use \setlength{\parindent}{0pt}.


% ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** **
% >paragraphhangindentations >paragraphhangindents >parahangindentation >parahangindents
% >hangindents >hangafterindents >parahangafterindents >paragraphhangafterindents

% To indent subsequent lines of a paragraph, use the TeX command \hangindent. (While the default
% behaviour is to apply the hanging indent after the first line, this may be changed with the
% \hangafter command.) An example follows.

% \hangindent=0.7cm \hangafter This paragraph has an extra indentation at the left starting
% from the 2nd line.

% \hangindent=0.7cm \hangafter This paragraph has an extra indentation at the left starting
% from the 1st line.


% ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** **
% >marginalnotes >marginnotes >notes >sidenotes

% Synopsis, one of:

% \marginpar{right}
% \marginpar[left]{right}

% Create a note in the margin. The first line of the note will have the same baseline as the line in
% the text where the \marginpar occurs.

% If you declare \reversemarginpar then LaTeX will place subsequent marginal notes in the opposite margin
% to that given in the prior paragraph. Revert that to the default position with \normalmarginpar.

% These parameters affect the formatting of the note:

%     \marginparpush
%         Minimum vertical space between notes; default ‘7pt’ for ‘12pt’ documents, ‘5pt’ else.

%     \marginparsep
%         Horizontal space between the main text and the note; default ‘11pt’ for ‘10pt’ documents,
%         ‘10pt’ else.

%     \marginparwidth
%         Width of the note itself; default for a one-sided ‘10pt’ document is ‘90pt’, ‘83pt’ for ‘11pt’,
%         and ‘68pt’ for ‘12pt’; ‘17pt’ more in each case for a two-sided document. In two column mode,
%         the default is ‘48pt’.


\usepackage{ geometry }
\usepackage{ marginnote }

% (Documentation: @http://mirrors.ibiblio.org/CTAN/macros/latex/contrib/marginnote/marginnote.pdf)

% Example Usage:

% \marginnote{This is...}[3cm]

% That prints the text inside the braces, the second parameter inside brackets determines the vertical alignment relative to the line where the command is used. Negative values are allowed.

% The default edge to print margin notes is the left for one-sided documents, outer for double-sided documents and the closest for two-column documents. You can explicitly change that.

% \reversemarginpar
% \marginnote{This is a margin note using the geometry package, set at 5cm
% vertical offset to the first line it is typeset.}[3cm]

% The command \reversemarginpar prints the markin note in the opposite margin.

% These macros define how the margin note will be aligned. The defaults are:

    % \raggedleftmarginnote     % Right-justify notes
    % \raggedrightmarginnote    % Left-justify notes


	\newcommand {\rightmarginnote} [2] [0cm]
		{\marginnote{#2}[#1]}
	% -- End Command]

	\newcommand {\leftmarginnote} [2] [0cm]
		{\reversemarginpar \marginnote{#2}[#1] \normalmarginpar}
	% -- End Command]

	\newcommand {\justifiedrightmarginnote} [2] [0cm]
		{\rightmarginnote[#1]{\justifying{#2}}}
	% -- End Command]

	\newcommand {\justifiedleftmarginnote} [2] [0cm]
		{\leftmarginnote[#1]{\justifying{#2}}}
	% -- End Command]


% ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** **
% >margins, >sloppymargin

% Some very long words, numbers or URLs may not be hyphenated properly and move far beyond the
% side margin. One solution for this problem is to use 'sloppypar' environment, which tells LaTeX
% to adjust word spacing less strictly. As a result, some spaces between words may be a bit too
% large, but long words will be placed properly.

% \begin{sloppypar}
% This is a paragraph with
% a very long word ABCDEFGHIJKLMNOPRST;
% then we have another bad thing
% --- a long number 1234567890123456789.
% \end{sloppypar}

% Another solution is to edit the text to avoid long words, numbers or URLs approaching the
% side margin.


% ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** **
% ADD IMAGES (FIGURES)

% \usepackage         { graphics }  % This includes the graphics package which provides support for the
                                  % inclusion and transformation of graphics, including files produced
                                  % by other software. Also included, is the color package which provides
                                  % support for typesetting in colour.

% \begin { figure }
% \includegraphics [ width = \textwidth ] { /relative/path/to/picture.png }
% \caption                                { This figure is just a test. }
% \end   { figure }


% ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** **
% >source >code >raw >verbatim >alltt >typewriter


% If you use the verbatim environment, everything input between the begin and end commands are processed as if by a typewriter. All spaces and new lines are reproduced as given, and the text is displayed in an appropriate fixed-width font. Any LaTeX command will be ignored and handled as plain text. This is ideal for typesetting program source code. Example:

% \begin{verbatim}
% The verbatim environment
%   simply reproduces every
%  character you input,
% including all  s p a c e s!
% \end{verbatim}

% ...once in the verbatim environment, the only command that will be recognized is \end{verbatim}.

% If this is a problem, you can use the 'alltt' package instead, providing an environment with
% the same name:

\usepackage{alltt}

% \begin{alltt} ... \end{alltt}

% To fix wrong quotes print in verbatim use the 'upquote' package.

% The alltt environment is a kind of "semiverbatim": it uses the typewriter font, but still \, { and }
% maintain their meaning, for being able to use commands (say for changing color, fonts or whatever).
% This issue is resolved with this answer:

% https://tex.stackexchange.com/questions/16833/teletype-textbackslash-in-alltt-environment
% in short, use: \char`<c>

% (alltt Documentation: http://ctan.math.illinois.edu/macros/latex/base/alltt.pdf)

% Also maybe check out 'alltt2' package. But for real verbatim, use the verbatim environment.

% See also: 'fancyvrb' & 'fancybox' packages


% ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** **
% >comments >ignoredsourcecode

% You can comment lines out by preceding them with: '%'; ex:

%     % <comment>

% or

% You can place whatever text in between the '\iffalse'-conditional; ex:

%     \iffalse <comment> \fi

% The text will be ignored at compile time. You could also make a macro for
% this and give it a rather nice and clearer name:

% \newcommand{\comment}[1]{\iffalse #1 \fi}

% And use it as such:

% \comment{<comment>}

% or

% {\comment <comment>}

% ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** **
% >listingsource >listingcode >verbatimextention

\usepackage{moreverb}

% This is also an extension of the verbatim environment provided by the moreverb package. The extra functionality it provides is that it can add line numbers along side the text. The command: \begin{listing}[step]{first line}. The mandatory first line argument is for specifying which line the numbering shall commence. The optional step is the step between numbered lines (the default is 1, which means every line will be numbered).


% OLD:::::::::::::::::::::::::::::::::

% \usepackage{listings}
% \usepackage{xcolor}

% \definecolor{mGreen}{rgb}{0,0.6,0}
% \definecolor{mGray}{rgb}{0.5,0.5,0.5}
% \definecolor{mPurple}{rgb}{0.58,0,0.82}
% \definecolor{backgroundColour}{rgb}{0.95,0.95,0.92}

% \lstdefinestyle { cppstyle }
% {
% %   caption           = Adding pictures in \LaTeX{}.,
% %   frame             = single
%     backgroundcolor   = \color{backgroundColour},
%     commentstyle      = \color{mGreen},
%     keywordstyle      = \color{magenta},
%     numberstyle       = \tiny\color{mGray},
%     stringstyle       = \color{mPurple},
%     basicstyle        = \footnotesize,
%     fontstyle         = \font
%     breakatwhitespace = false,
%     breaklines        = true,
%     captionpos        = b,
%     keepspaces        = true,
%     numbers           = left,
%     numbersep         = 5pt,
%     showspaces        = false,
%     showstringspaces  = false,
%     showtabs          = false,
%     tabsize           = 2,
%     language          = C++
% }

% >SOURCE CODE SNIPPETS, >CODE, >SRCCODE

% \begin { lstlisting } [ style = cpp ]
%
% #include <stdio.h>
%
% int main(void)
% {
%    printf("Hello World!");
% }
%
% \end   { lstlisting }



% ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** **
% >urls >websites >links >weblinks

% One of either the hyperref or url packages provides the \url command, which properly
% typesets URLs, for example:

% Go to \url{http://www.uni.edu/~myname/best-website-ever.html} for my website.

% When using this command through the hyperref package, the URL is "clickable" in the PDF
% document, whereas it is not linked to the web when using only the url package. Also when
% using the hyperref package, to remove the border placed around a URL, insert
% pdfborder = {0 0 0 0} inside the \hypersetup{}. (Alternately pdfborder = {0 0 0}
% might work if the four zeroes do not.)

% You can put the following code into your preamble to change the style, how URLs are
% displayed to the normal font:

% \urlstyle{same}

% See also: https://en.wikibooks.org/wiki/LaTeX/Hyperlinks#Customization


% ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** **
% >colors

% Adding colors to your text is supported by the xcolor package (supersedes package color).

\usepackage[svgnames]{xcolor}

% Using this package, you can set the font color, text background, or page background. You can choose from predefined colors or define your own colors using RGB, Hex, or CMYK. Mathematical formulas can also be colored.

% The package has some options:

    % [usenames]
    %     Allows you to use names of the default, the same 16 base colors as used in HTML
    %
    %     NAME       HEX         RGB
    %     –––––––––––––––––––––––––––––––––––––––––––
    %     WHITE	   #FFFFFF	   RGB(255, 255, 255)
    %     SILVER   #C0C0C0	   RGB(192, 192, 192)
    %     GRAY	   #808080	   RGB(128, 128, 128)
    %     BLACK	   #000000	   RGB(0, 0, 0)
    %     RED  	   #FF0000	   RGB(255, 0, 0)
    %     MAROON   #800000	   RGB(128, 0, 0)
    %     YELLOW   #FFFF00	   RGB(255, 255, 0)
    %     OLIVE	   #808000	   RGB(128, 128, 0)
    %     LIME	   #00FF00	   RGB(0, 255, 0)
    %     GREEN	   #008000	   RGB(0, 128, 0)
    %     AQUA	   #00FFFF	   RGB(0, 255, 255)
    %     TEAL	   #008080	   RGB(0, 128, 128)
    %     BLUE	   #0000FF	   RGB(0, 0, 255)
    %     NAVY	   #000080	   RGB(0, 0, 128)
    %     FUCHSIA  #FF00FF	   RGB(255, 0, 255))
    %     PURPLE   #800080	   RGB(128, 0, 128))

    % [dvipsnames, svgnames, x11names]
        % The dvipsnames allows you access to more colors, another 64, and svgnames allows access
        % to about 150 colors. The initialization of "table" allows colors to be added to tables
        % by placing the color command just before the table.

        % If you need more colors, then you may also want to look at the x11names option. This
        % offers more than 300 colors.



% >coloredtext >colortext >coloring

% The simplest way to type colored text is by:

%     \textcolor{declared-color}{text}

% where declared-color is a color that was defined before by \definecolor.
% Another possible way is by:

%     {\color{declared-color}some text}

% that will switch the standard text color to the color you want. It will work
% until the end of the current TeX group. For example:

%     \emph{some black text, \color{red}followed by a red fragment}, going black again.

% The difference between \textcolor and \color is the same as that between \texttt and \ttfamily,
% you can use the one you prefer. The \color environment allows the text to run over multiple lines
% and other text environments whereas the text in \textcolor must all be one paragraph and not
% contain other environments.


% >definecolors >definingcolors >colordefinition >defcolors

% If the predefined colors are not adequate, you may wish to define your own. Define the colors in the preamble of your document after having included the 'xcolor' package.

% \definecolor{name}{model}{color-spec}

% where:
%     'name'
%         is the name of the color; you can call it as you like
%     'model'
%         is the way you describe the color, and is one of gray, rgb, RGB, HTML, and cmyk.
%     'color-spec'
%         is the description of the color

% Example:

% To define a new color, follow the following example, which defines orange for you, by setting
% the red to the maximum, the green to one half (0.5), and the blue to the minimum:

%     \definecolor{orange}{rgb}{1,0.5,0}
%                   or
%     \definecolor{orange}{RGB}{255,127,0}

% If you loaded the xcolor package, you can define colors upon previously defined ones.

% The first specifies 20 percent blue and 80 percent white; the second is a mixture of 20 percent
% blue and 80 percent black; and the last one is a mixture of (20*0.3) percent blue, ((100-20)*0.3)
% percent black and (100-30) percent green.

% This 'declares' a color made of a mix:

%     \color{blue!20}
%     \color{blue!20!black}
%     \color{blue!20!black!30!green}

% This 'defines' a color made of a mix:

    % \colorlet{notgreen}{blue!50!yellow}


% >unnamedcolor >colorunnamed

% To specify unnamed colors inline, LaTeX offers:

    % {\color[rgb]{1,0,0} This text will appear red-colored}
    %     or
    % \textcolor[rgb]{0,1,0}{This text will appear green-colored}


% See possible color models here: https://en.wikibooks.org/wiki/LaTeX/Colors#Color_Models


% >spotcolors

% Spot colors are customary in printing. They usually refer to pre-mixed inks based on a swatchbook
% (like Pantone, TruMatch or Toyo). The package colorspace extends xcolor to provide real spot colors
% (CMYK and CIELAB). They are defined with, say:

% \definespotcolor{mygreen}{PANTONE 7716 C}{.83, 0, .40, .11}


% >colorbox >colorbg >bgcolor >bgcolor >tcolors >textcolors

% To change specifically and only the background color text, LaTeX offers:

%     \colorbox{declared-color}{text}

% To change both the text background and text font colors, you can combine and do:

    % \colorbox{declared-color1}{\color{declared-color2}text}

%     \colorbox
        % {declared-color1} % bg color
        %     {\color{declared-color2} % text color
                % text} % text

% To do the previous and add a colored frame:

    % \fcolorbox{declared-color-frame}{declared-color-background}{\color{declared-color2}text}

    % \fcolorbox
    %     {declared-color-frame} % frame color
    %         {declared-color-background} % bg color
    %             {\color{declared-color2} % text color
                    % text} % text


% >backgroundcolor >pagebgcolor

% You can change the background color of the whole page by:

%     \pagecolor{declared-color}

\pagecolor{FloralWhite} % from [svgnames]





% ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** **
% >MATH TYPESETTING

%\usepackage         { amslatex }  % Advanced mathematical typesetting from the American Mathematical
                                  % Society. This includes the amsmath package; it provides many
                                  % commands for typesetting mathematical formulas of higher
                                  % complexity.

% \usepackage         { amsmath }

% Documentation: https://www.latex-project.org/help/documentation/amsldoc.pdf

% ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** **
% >REFERENCES AND >BIBLIOGRAPHY

    % --- SELF REFERENCE A SECTION

        % \section { <title> } \label { sec:<label> }
        % ...
        % I've written text in section \ref { sec: <label> }


    % --- BIBLIOGRAPHY LIBRARY FOR MANY CITATIONS

% \usepackage[backend=bibtex, style=verbose-trad2, defernumbers=true]{biblatex}  % Use 'biblatex` package features.
% \bibliography{ <filename> }  % Name of the `.bib` file (name w/out `.bib.`)

        % @ARTICLE=
        % {
        % VELLAGE:1,
        % AUTHOR="Claudio Vellage",
        % TITLE="A quick start to \LaTeX{}",
        % YEAR="2013",
        % PUBLISHER="",
        % }


    % --- MANUALLY CITE

        % This feature works as I described in \cite{VELLAGE:1}.


    % --- Print Auto-generate the Bibliography

        % The `biblatex` is very smart and will print auto-generate the bibliography if we want to.
        % We'd usually do this in the end of the document. Simply add

% \printbibliography


% ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** **
% >LINKSEC, >SECLINK,  >LINKCHAP, >CHAPLINK,  >LINKPART, >PARTLINK

% Note that if you use PDF bookmarks you will need to add a phantom section so
% that hyperlinks will lead to the correct place in the document. The
% \phantomsection command is defined in the hyperref package, and is
% Commonly used like this:

% \phantomsection
% \addcontentsline{toc}{section}{Introduction}
% \section*{Introduction}

% For chapters you will also need to clear the page (this will also correct
% page numbering in the ToC):

% \clearpage %or \cleardoublepage
% \phantomsection
% \addcontentsline{toc}{chapter}{List of Figures}
% \listoffigures


% ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** %
% -- -- -- -- -- -- -- -- -- -- -- -- -- TEXT FORMATTING -- -- -- -- -- -- -- -- -- -- -- -- -- - %
% ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** %


% ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** **
% >spacing, >linespacing, >linespaces


    % - If you want to use larger inter-line spacing in a document, you can change its value by
    % putting the \linespread{factor} command into the preamble of your document. Use \linespread{1.3}
    % for "one and a half" line spacing, and \linespread{1.6} for "double" line spacing. Normally the
    % lines are not spread, so the default line spread factor is 1. The setspace package allows more
    % fine-grained control over line spacing.

    % To change line spacing within the document, the 'setspace' package provides the environments
    % singlespace, onehalfspace, doublespace and spacing:

    % This paragraph has \\ default \\ line spacing.

    % \begin{doublespace}
    %   This paragraph has \\ double \\ line spacing.
    % \end{doublespace}

    % \begin{spacing}{2.5}
    %   This paragraph has \\ huge gaps \\ between lines.
    % \end{spacing}

    % The package also supplies: '\setstretch{baselinestretch}', which will specify the line spacing
    % for all sections and paragraphs until another command is used.

% ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** **
% >stretchspacing, >stretchspace, >verticalstretchspace, >horizontalstretchspace,

% Horizontal Stretched Space : \hfill
% Vertical Stretched Space   : \vfill

% Essentially the text that follows is "pushed" toward the right margin.
% For instance this may be useful in the header:

% Author Name \hfill \today


% ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** **
% >hyphenation


% LaTeX does not hyphenate compound words that contain a dash[1]. There are two packages that can add
% back flexibility. The hyphenat package supplies the \hyp command. This command typesets the dash and
% then subjects the constituent words to automatic hyphenation. After loading the package:

% \usepackage{hyphenat}

% one should write, instead of electromagnetic-endioscopy:

% electromagnetic\hyp{}endioscopy

% The 'extdash' package also offers features for controlling the hyphenation of compound words containing
% dashes — as opposed to the words themselves which it leaves to LaTeX. The shortcuts option enables a
% more compressed syntax:

% \usepackage[shortcuts]{extdash}

% Typical usage is as follows, assuming the compressed syntax. In both cases, LaTeX can break and
% hyphenate the constituent words, but in the latter case, it will not break after the L:

% electromagnetic\-/endioscopy
% L\=/approximation

% One or more words can be kept together on the one line with the standard LaTeX command:

% \mbox{text}

% This prevents hyphenation and causes its argument to be kept together under all circumstances.
% For example:

% My phone number will change soon. It will be \mbox{0116 291 2319}.
% \fbox is similar to \mbox, but in addition there will be a visible box drawn around the content.


% ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** **
% >quotes, >quotationmarks, >quotations >quotingtext

% single quotes: `<text>' ; single-back-tick ... normal-single-quote

% double quotes: ``<text>'' ; double-back-tick ... normal-two-single-quotes
%               or
% double quotes: ``<text>" ; double-back-tick ... normal-double-quote


% LaTeX provides several environments for quoting text; they have small differences and
% they are aimed for different types of quotations. The provided environments are:

% quote
%     for a short quotation, or a series of small quotes, separated by blank lines.

% quotation
%     for use with longer quotations, of more than one paragraph, because it indents the
%     first line of each paragraph.

% verse
%     is for quotations where line breaks are important, such as poetry. Once in, new
%     stanzas are created with a blank line, and new lines within a stanza are indicated
%     using the newline command, \\. If a line takes up more than one line on the page,
%     then all subsequent lines are indented until explicitly separated with \\.

% \begin{verse}
%  ...
% \end{verse}


% Also you can be creative and make your own quote macro:

% \newcommand{\qquote}[2]
%     {\begin{quote}
%     ``#1"

%     \qquad--- #2
% \end{quote}}

% Example Usage:

% \qquote{And Whoever puts his trust upon God, then He will suffice him.}{Q.VI.32}


% ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** **
% >fontfamily, >ttffonts, >otffonts, >otherfonts

% The bodies of LaTeX documents are set in Roman (serif) type by default, but this can be
% changed by setting the family default:

% \renewcommand{\familydefault}{<family>}
% where <family> is any of the following:

% \rmdefault      // roman font family
% \sfdefault      // sans serif font family
% \ttdefault      // teletype font family


% >otherfonts >alternativefonts >georgia >helvetica >calibri >avenirnext >fonttypes

% If you are using lualatex or xelatex, you can use TTF and OTF fonts with the 'fontspec' package:

% Usage Example:

% \documentclass{article}

% \usepackage{fontspec}
% \setmainfont[Ligatures=TeX]{Georgia}
% \setsansfont[Ligatures=TeX]{Arial}

% \begin{document}
% Lorem ipsum...
% \end{document}

% The fontspec package is extremely configurable. See the manual (link below) for details.

% (http://ctan.math.utah.edu/ctan/tex-archive/macros/latex/contrib/fontspec/fontspec.pdf)

% Different weights and styles of a given typeface are usually stored as separate font files.
% Many typefaces come in more than two weights—some versions of Futura, for example, comes
% in light,book, medium, demi, bold, and extra bold weights.

% We might want to hand-pick weights to achieve a certain look or better match the weights of
% other fonts in our document. Say we want to use the "book" weight for our default weight,
% "demi" for bold, and the font files are named:

% Futura-Boo for upright book weight
% Futura-BooObl for oblique book weight
% FuturaSC-Boo for small caps, book weight
% Futura-Dem for upright demi(bold)
% Futura-DemObl for oblique demibold
% Our font setup might resemble:

% Example:

% \usepackage{fontspec}
% \setmainfont[
%     Ligatures=TeX,
%     UprightFont = *-Boo,
%     ItalicFont = *-BooObl,
%     SmallCapsFont = *SC-Boo,
%     BoldFont = *-Dem,
%     BoldItalicFont = *-DemObl
% ]{Futura}


% Note that instead of typing out Futura-Boo, Futura-BooObl, and so on, we can use * to insert
% the  base name.


% ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** **
% Controlling font features: >fontfeatures, >tablefontfeatures

% Features can be turned on and off using different 'fontspec' options.

% If we wanted to set our body text in Linux Libertine with oldstyle, proportionally-spaced
% figures, for example, we might set up our fonts as follows:

% \setmainfont[
%     Ligatures=TeX,
%     Numbers={OldStyle, Proportional}
% ]{Linux Libertine}

% Features can be turned on and off using \addfontfeatures{...}. Say you wanted to set a table
% in lining, tabular figures:

% {\addfontfeatures{Numbers={Lining, Tabular}}
%     \begin{tabular}{l r}
%         Widgets: & 25 \\
%         Gadgets: & 6 \\
%         Whatsits & 24 \\
%     \end{tabular}
% } % Return to previous figure style


% ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** **
% >emphasis, >emphasize

% In order to add some emphasis to a word or a phrase, use the \emph{text} command, which usually
% italicizes the text. Italics may be specified explicitly with \textit{text}. Note that the \emph
% command is dynamic: if you emphasize a word which is already in an emphasized sentence, it will
% be reverted to the upright font.

% Text may be emphasized more heavily through the use of boldface. Bold text can be generated with
% the \textbf{text} command.


% ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** **
% >fontstyle, >style, >textfont


% The following table lists the commands you will need to access typical font shapes.
% Note: Paragraph breaks are not allowed inside the command forms.

% LaTeX command:

% \emph{...} | {\em ...}                // Emphasis Font (generally italics)

% // FAMILY
% \textrm{...} | {\rmfamily ...}        // roman font family
% \textsf{...} | {\sffamily ...}        // sans serif font family
% \texttt{...} | {\ttfamily ...}        // teletype font family

% // STYLE
% \textup{...} | {\upshape ...}         // normal typeface
% \textit{...} | {\itshape ...}         // normal italics face
% \textsl{...} | {\slshape ...}         // slanted font (more italic than italic)
% \textbf{...} | {\bfseries ...}        // normal bold face
% \underline{...}                       // normal underlined

% PACKAGE NEEDED: \usepackage{'soul'}
% \ul{...}                               // normal underlined
% \st{...}                               // normal striked throught

% PACKAGE NEEDED: \usepackage{'ulem'}
% \uline{...}                            // normal underlined
% \sout{...}                             // normal striked throught

% // WEIGHT
% \textnormal{...} | {\normalfont ...}   // Default Normal Font
% \textmd{...} | {\mdseries ...}         // normal medium weight
% \textlf{...} | {\lfseries ...}         // normal light weight

% // UPPERCASE
% \uppercase{...}                        // normal upper cased
% \textsc{...} | {\scshape ...}          // small capitals (cute capital letters)

% The second way declares a scope, in which everything inside is affected by the command
% at the very beginning of the scope. Generally, one should prefer the commands over their
% equivalent switches because the former automatically corrects spacing immediately following
% the end of the selected style.


% You can set an arbitrary font size with \fontsize{<size>}{<line space>}\selectfont. For example:

%     \fontsize{5cm}{5.5cm}\selectfont

% sets the current font size to 5cm with 5.5 centimeter leading.


% ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** **
% >fontsize, >size

% To scale text relative to the default body text size, use the following commands:

% \tiny            <
% \scriptsize      <
% \footnotesize    <
% \small           <
% \normalsize      <
% \large           <
% \Large           <
% \LARGE           <
% \huge            <
% \Huge

% These commands change the size within a given scope. For instance – {\Large some words} – will
% change the size of only 'some words', and does not affect the font in the rest of the document.
% It will work for most parts of the text.

% {\Large\tableofcontents}

% These commands cannot be used in math mode. However, part of a formula may be set in a different
% size by using an \mbox command containing the size command. The new size takes effect immediately
% after the size command; if an entire paragraph or unit is set in a certain size, the size command
% should include the blank line or the \end{...} which delimits the unit.

% By default, \normalsize is 10 points, but this can be changed in the \documentclass declaration,
% e.g. \documentclass[12pt]{article}. Note that not every document class has unique sizes for all
% of the above size commands.


% >deffontsize

% You can set an arbitrary font size with \fontsize{<size>}{<line space>}\selectfont. For example:

%     \fontsize{5cm}{5.5cm}\selectfont

% sets the current font size to 5cm with 5.5 centimeter leading.



% ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** **
% >formatting macros, >macros, >formatmacro, >macroformat

% \newcommand{\<macro>}[1]{<command>{[1}}

% This approach has the advantage that you can decide at some later stage that you want to
% use some visual representation of danger other than \textit, without having to wade through
% your document, identifying all the occurrences of \textit and then figuring out for each one
% whether it was used for pointing out danger or for some other reason.

% See `Macros` – (https://en.wikibooks.org/wiki/LaTeX/Macros) – for more details.


% ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** **
% >subscript, >superscript

% Examples:

% w\textsubscript{unsigned}
% March 6\textsuperscript{th}, 1475.


% ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** **
% >ellipses, >threedots, >3dots

% A sequence of three dots is known as an ellipsis, which is commonly used to indicate omitted
% text. On a typewriter, a comma or a period takes the same amount of space as any other letter.
% In book printing, these characters occupy only a little space and are set very close to the
% preceding letter. Therefore, you cannot enter ‘ellipsis’ by just typing three dots, as the
% spacing would be wrong. Instead, there is a special command for these dots.

% It is called \ldots or alternatively you can also use \textellipsis.

% Example:

% Tables, chairs, plates, knives, \ldots




% ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** **
% >lists >liststructures >enumerations >liststructs >enums


% List structures in LaTeX are simply environments which essentially come in
% three types:

%     itemize
%         for a bullet list
%     enumerate
%         for an enumerated list and
%     description
%         for a descriptive list.

% All lists follow the basic format:

%     \begin{list_type}
%     \item The first item
%     \item The second item
%     \item The third etc \ldots
%     \end{list_type}

% All three of these types of lists can have multiple paragraphs per item: just
% type the additional paragraphs in the normal way, with a blank line between each.


% >nestedlists >deeplists >leveledlists >listoflists >listlists >nestlists >nestenums >nestedenums

% LaTeX will happily allow you to insert a list environment into an existing one
% (up to a depth of four, more levels are available using packages). Simply begin
% the appropriate environment at the desired point within the current list. Latex
% will sort out the layout and any numbering for you.

% Example:

    % \begin{enumerate}
    %     \item The first item
    %     \begin{enumerate}
    %         \item Nested item 1
    %         \item Nested item 2
    %     \end{enumerate}
    %     \item The second item
    %     \item The third etc \ldots
    % \end{enumerate}


%  >speciallists


%  >alignedlists >listaligned >aligneditemslists >aligneditemlists >alignedenumitem >enumitemaligned >enumaligned >alignedenums >alignenums >alignlists >scrextend

% Sometimes you feel the need to better align the different list items. If you are using a
% KOMA-script class (or package scrextend), the labeling environment is handy. It takes a
% mandatory argument that contains the longest of your labels.

% Example:

    \usepackage{scrextend}

    % \addtokomafont{labelinglabel}{\ttfamily} % Change font of the Item Titles

    % \begin{document}

    % \begin{labeling}{restricted}
        % \item [const] <text>
        % \item [volatile] <text>
        % \item [restricted] <paragraph>
        % \item [atomic] <paragraph>

        % <paragraph>

        % <paragraph>
    % \end{labeling}

% This will align the labels to the left until and the text to the left as well.


\usepackage[inline]{enumitem} % [>enumitem >enumitempackage]
% Doc: http://ctan.math.washington.edu/tex-archive/macros/latex/required/tools/enumerate.pdf

% You can align labels with :

    % \begin{description}[align=right]
    %     \item [Kate] some detail
    %     \item [Christina] some detail
    %     \item [Laura]some detail
    % \end{description}

    % \begin{description}[align=right,labelwidth=3cm]
    %     \item [Kate] some detail
    %     \item [Christina]some detail
    %     \item [Laura]some detail
    % \end{description}

% The documentation of package enumitem goes into more detail with respect to what can be changed
% and how. You can even define your own lists. Environments like 'labeling' and 'tasks' can be changed
% differently, details can be found in the package documentation respectively.



%  >inlinelists >listsinline >inlineenumitem >enumiteminlined >enuminlined >enumsinlined

% Notice how to change label type and color:

%     font = {font-style} (Default: empty)
%         Sets font style of the labels.

%     label = {type} (Default: \arabic*)
%         Set the type of label – A a I i or 1 produces the value of the counter printed with
%         (respectively) \Alph \alph \Roman \roman or \arabic.

% \begin{document}

    % <text>
    % \begin{enumerate*}[label={\alph*)}, font={\color{blue}\bfseries}]   % enumitems env.
        % \item <text>
        % \item <text>
        % \item <text>
        % \item <text>
    % \end{enumerate*}
    % <text>


%  >customenums >customlists >listspacing >enumspacing

% You can reduce significantly the spacing between items with the '[noitemsep]' option
% when declaring the environment:

%     \begin{itemize}[noitemsep]
%         \item more work
%         \item more responsibility
%         \item more satisfaction
%     \end{itemize}




%  >horizontallists >listshorizontal >listhorizontal >horizontalenumitem >enumitemhorizontal >enumhorizontal >enumshorizontal >horizontalenumsitems >horizontalenumlists >horizontallycolumnedlists >columnedlists >listcolumns  >horizontallycolumnedenums >columnedenums >enumcolumns


% If you want a horizontal list, package 'tasks' can be handy.

\usepackage{tasks} % [>tasks]
% Doc: http://ctan.math.washington.edu/tex-archive/macros/latex/contrib/tasks/tasks_en.pdf

    % \begin{tasks}[options](num_of_columns)
    %     List like environment where the single items are introduced with \task.

    % label-format = {code} (initially empty)
    %     Can be used to apply a formatting like, e. g., \bfseries to the labels.

    % item-format = {code} (initially empty)
    %     Can be used to apply a formatting like, e. g., \bfseries to the items.
    %     This may be a macro accepting the item as mandatory argument.

    % label = {code} (Default: \alph*)
    %     Sets a custom label --- A a I i or 1 produces the value of the counter printed with
    %     (respectively) \Alph \alph \Roman \roman or \arabic. The * is replaced by {task}. This
    %     is heavily inspired by enumitem’s label option.

    % See documentation for more.


% Set task settings with:

%     \settasks{
%         label = \theexercise.\arabic* ,
%         item-indent = 2em ,
%         label-width = 2em ,
%         label-offset = 0pt
%     }


% Let’s see some usage examples:

    % <text>
    % \begin{tasks} % n columns defaults to 1.
    %     \task <text>
    %     \task <text>
    %     \task <text>
    % \end{tasks}
    % <text>

% Here you pretty much get a basic list, where each item (here, \task) is placed
% one underneath the other, IN THE SAME COLUMN: (imagine the following is compiled latex)

% a) <text>
% b) <text>
% c) <text>

% \begin{tasks}(2) % now the number of columns specifid is '2'
%     \task <text>
%     \task <text>
%     \task <text>
%     \task <text>
%     \task <text>
% \end{tasks}

% The output will now be a list where the items (here, tasks) are listed along
% the number of specified columns, here '2':  (imagine the following is compiled latex)

% a) <text>     b) <text>
% c) <text>     d) <text>
% e) <text>

% If the task is too long to fit on one column line, then you can choose wether the
% text should wrap or allow it to span all the way to the end of the full page with:

%       \task  : wrap around.
%       \task* : span till end of page.

    % \begin{tasks}(3)
    %     \task <text>
    %     \task* <super super super super long text>
    %     \task* <super super super super long text>
    %     \task <text>
    %     \task <text>
    % \end{tasks}

% Here the second (b) and third (c) tasks are allowed to span till end of the page.
% Compiled, it will look like:

% a) <text>     b) <super super super super long text>
% c) <super super super super long text>
% d) <text>     e) <text>

% Here the second (b) and third (c) tasks are allowed to span till end of the page.
% Compiled, it will look like:

% a) <text>     b) <super super super super long text>
% c) <super super super super long text>
% d) <text>     e) <text>


% Way more can be done, see documentation.



% >exercises >exercisesheets >exams >examsheets >solutions >solutionsheets >teachers


% In combination with a package like 'exsheets', you can prepare exam papers for students.

\usepackage{exsheets} % [>exsheets]
% Doc: http://mirror.utexas.edu/ctan/macros/latex/contrib/exsheets/exsheets_en.pdf

% \SetupExSheets[question]{type=exam}

% \begin{document}

    % \begin{question} % usage of the 'exsheets' package
    %     Which one of the entries does not fit ?
    %     \begin{tasks}(4)  % usage of the 'tasks' package
    %         \task mercury
    %         \task iron
    %         \task lead
    %         \task zinc
    %     \end{tasks}
    % \end{question}



% >infinitenestedenums >infinitenestedlists

% The 'easylist' package allows you to create list using a more convenient syntax and
% with infinite nested levels. It is also very customizable.

\usepackage[ampersand]{easylist} % [>easylist]

% Doc: http://ctan.math.utah.edu/ctan/tex-archive/macros/latex/contrib/easylist/easylist-doc.pdf

% Here’s what the LATEX code with easylist in its default usage looks like:

    % \begin{easylist}
    %     & Main item~:
    %         && Sub item.
    %         && Another sub item.
    % \end{easylist}

    % 1 Main item~:
    %     1.1 Sub item.
    %     1.2 Another sub item.


    % \begin{easylist}
    %     § First proposition.
    %     §§ Interesting comment.
    %     §§§ A note on the comment.
    %     §§§ Another note.
    %     §§§§ By the way...
    %     §§§§§ This is a subsub...-proposition.
    %     § Let’s start something new...
    % \end{easylist}

    % 1. First proposition.
    % 1.1 Interesting comment.
    % 1.1.1 A note on the comment.
    % 1.1.2 Another note.
    % 1.1.2.1 By the way...
    % 1.1.2.1.1 This is a subsub...-proposition.
    % 2. Let’s start something new...


% The 'easylist' environment will default to enumerations: 'enumerate'.
% It features predefined styles which you can set as optional argument.

    % \begin{easylist}[<style>]
    % ...
    % \end{easylist}

% Available styles:

%     tractatus
%     checklist   - All items have empty check boxes next to them
%     booktoc     - Approximately the format used by the table of contents of the book class
%     articletoc  - Approximately the format used by the table of contents of the article class
%     enumerate   - The default
%     itemize     - Bullet Point (Circles)

% To change the item level symbol, give the name in options at import:

    % \usepackage[pilcrow]{easylist}    to use ¶
    % \usepackage[at]{easylist}         to use @
    % \usepackage[sharp]{easylist}      to use #
    % \usepackage[ampersand]{easylist}  to use &

% Note that you cannot use the symbol that you decide to use within the 'easylist' environment,
% as in between: \begin{easylist} ... \end{easylist}. There is a way to do this, see doc.

% [Note: you have to decide how many counters you need. By default, 'easylist' creates 10 counters,
% but you might want more, so just specify a number as an option when calling the package:
% \usepackage[50]{easylist} will create 50 counters. --- end note]

% That’s it. The following sections deal with labelling and referring and layout options.

% ------ Advanced 'easylist'

% Several parameters are available to achieve a finer control over the final output. The general
% command is \ListProperties(key=value,key=value...), where key is a parameter. ListProperties
% affects all subsequent items and all subsequent lists, wherever it is issued. If you want to
% set the parameters back to default, use \NewList.


% OPTIONS: [>easylistops >easylistoptions]


%     • Start<n>=<Number>
%         Makes the n'th counter start at <Number>,

%     • Start<n>*=<Number>
%         Makes the n'th counter dependant on <Counter>, where <Counter>
%         is an external counter, like \thesection. To make it back to normal,
%         say Startn *=NA, which is of course default


%     • Numbers=<Number denotation>
%         Sets the way all counters are printed.

%     • Numbers<n>=<Number denotation>
%         Sets the way the nth counter is printed;

%         here are the admissible values:

%             r for lower case roman numerals;
%             R for upper case roman numerals;
%             l for lower case letters;
%             L for upper case letters;
%             z for Zapf’s Dingbats;
%             a for arabic numbers, which are the default value.


%     • Mark=<Punctuation>
%         Sets the punctuation of all counters to <Punctuation>.

%     • Mark<n>=<Punctuation>
%         Sets the punctuation of the nth counter to <Punctuation>.


%     • Style=<Format>
%         Sets the style of counters and text for all items.

%     • Stylen =<Format>
%         Sets the style of counters and text for items of the nth level.

%     • Style*=<Format>
%         Sets the style of all counters.

%     • Stylen *=<Format>
%         Sets the style of the counters of items belonging to the nth level.

%     • Style**=<Format>
%         Sets the style of all item texts.

%     • Stylen **=<Format>
%         Sets the style of the texts of items belonging to the nth level.


%     • Align=<keyword or dimension>
%         Aligns all item texts at the same level for all levels; ('fixed' or 'move').

%     • Align<n>=<keyword or dimension>
%         Aligns all item texts of the n'th level; ('fixed' or 'move').


% SOME EXAMPLES ::


% Example: showcasing 'Start<n>'

    % \begin{easylist}
    %     \ListProperties(Start1*=\thesection,Start2=17)
    %     § First proposition.
    %     §§ Numbering doesn’t work.
    %     \ListProperties(Start2=17)
    %     §§ This is better.
    %     § Hey, I can’t move on!
    %     § I must be stuck to an external counter!
    %     \ListProperties(Start1*=NA)
    %     § Okay, it works again.
    % \end{easylist}


    % 4. First proposition.
    % 4.1. Numbering doesn’t work.
    % 4.17. This is better.
    % 4. Hey, I can’t move on!
    % 4. I must be stuck to an external counter!
    % 5. Okay, it works again.


% Example: showcasing 'Numbers', 'Numbers<n>

    % \ListProperties(Numbers2=R,Numbers3=L,Numbers4=r,Numbers5=l,Numbers6=z)


    % 1. I...
    % 1.I. ... really...
    % 1.I.A. ... like...
    % 1.I.A.i. ... numbers...
    % 1.I.A.i.a. ... however...
    % 1.I.A.i.a.✑. ... they are printed.


% Example: showcasing 'Align'


%     \ListProperties(Hang=true,Margin=1cm, Align=fixed ,FinalSpace=2em)

%     1.    Here is the first item of my very uninteresting
%           yet very convenient list.
%     1000. Here’s the 1000th one which obviously is
%           aligned with what precedes. Fortunately,
%           FinalSpace was wide enough.


%     \ListProperties(Hang=true,Margin=1cm, Align=move ,FinalSpace=2em)

%       1.   Here is the first item of my very uninteresting
%             yet very convenient list.
%     1000.   Here’s the 1000th one which is also aligned
%             with what precedes, but it would have run out
%             of the box if Margin hadn’t been taken care of.


% Doc: http://ctan.math.utah.edu/ctan/tex-archive/macros/latex/contrib/easylist/easylist-doc.pdf


% ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** **
% >loremtext >blindtext

\usepackage{blindtext}

% You can generate random filler text (e.g. lorem) with the following commands provided in the
% 'blindtext' package:

%     \blindtext [n]
%         n repetition*
%     \Blindtext [x][n]
%         x paragraphs with n repetitions
%     \blindlist{n}
%         n items in list
%     \blindlistlevel {n}
%         depth of nested lists
%     \blinddocument
%         full document



