\version "2.22.1"

% When ready to include in collection:	
%	1. Comment out top section with \Include file(s)
%					
%	2. \midi section if present.
%	3. Option to comment out "meter" from title e.g. if first tune following
%	   section title.
                                    
%Comment out from here
%{
\include "bagpipe.ly" %(default Lilypond formats)
\include "../Includes/BP_format_portrait.ily" 	

%to here..........................................................
%}

\defineBarLine ":|.-.|" #'(":|." ".|" ":|.")

\score {

    \new Staff  {
    \time 4/4	
    \tempo 4 = 80   
    \hideKeySignature
    \bar ".|:"
    		
    % Part 1
    \repeat volta 2 {
    \thrwd d8. e16 \grg f8.d16 \grg b16 d8. \grg a4 |
    \grg b16 d8. \grg a8. f16 \grg e8. d16 \grg e16 f8. |
    \thrwd d8. e16 \grg f8.d16 \grg b16 d8. \grg a4 |
    \grg b16 d8. \grg a8. f16 \grg e4 \thrwd d |
    \bar ":|.-.|"
    } %end repeat
    
    % Part 2
    \thrwd d8. e16 \grg f8. g16 \dblA A8. d16 \grg f4 |
    \dblg g8. e16 \grg f8.d16 \grg e8. d16 \grg e16 f8. |
    \thrwd d8. e16 \grg f8. g16 \dblA A8. d16 \grg f4 |
    \grg b16 d8. \grg a8. f16 \grg e4 \thrwd d |
    \break
    \thrwd d8. e16 \grg f8. g16 \dblA A8. d16 \grg f4 |
    \dblg g8. e16 \grg f8.d16 \grg e8. d16 \grg e16 f8. |
    \thrwd d8. f16 \times 2/3 {\grg e8 (f g)} \times 2/3 {\grA f8 (g A)} f4
    \grg b16 d8. \grg a8. f16 \grg e4 \thrwd d | \bar "|."
 
    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "Strathspey"
    piece = "Lady Carmichael"
    composer = "Arr. A. Jones"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
