\version "2.18.0"

% When ready to include in collection:	
%	1. Comment out top section with \Include file(s)
%					
%	2. \midi section if present.
%	3. Option to comment out "meter" from title e.g. if first tune following
%	   section title.
                                    
%Comment out from here
%{
\include "bagpipe.ly" %(Original)
\include "../Includes/BP_format.ily" 	

%to here..........................................................
%}

#(allow-volta-hook "|") % enables volta hook outside repeat context

\score {

    \new Staff  {
    \time 6/8	    
    \tempo 4 = 80   
    \hideKeySignature
    \bar ".|:"
    		
    % Part 1
    
    \repeat volta 2 {
      \grg a8. b16 \grG a8 \thrwd d8. \grg c16 d8 |
      \grg e8. f16 \grg e8 \dblA A4. |
      \hdblf f8. e16 \grg f8 \grg b4 \taor b8 |
      \grg a4. \wbirl a4. |
    }
    \break

    % Part 2
    \repeat volta 2 {
    \dblf f8. d16 f8 \dblf f4. |
    \grg e8. b16 e8 \gra e4. |
    \thrwd d8. b16 d8 \dbld d4 \grg c8 |
    \grg b4. \taor b | \break 
    }

    % Part 3

    \grg a8. b16 \grG a8 \thrwd d8. \grg c8 d16 |
    \grg e8. f16 \grg e8 \dblA A4.
    \hdblf f8. e16 \grg f8 \grg b4 \grg c8
    \thrwd d4. \slurd d4. \bar "|."
    

    % Part 4

    } %end staff
    
  \header {
    meter = "Air"
    piece = "Skye Boat Song"
    composer = "Trad."
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
