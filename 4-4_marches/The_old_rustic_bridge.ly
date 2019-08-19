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

\score {

    \new Staff  {
    \time 4/4	    
    \tempo 4 = 80 
    \hideKeySignature
    \bar ".|:"
    		
    % Part 1
    
    \partial 4 { \grg a8. d16 } |
    \dblf f4 \gre f8. g16 \hdblf f4 \thrwd d8. c16 | 
    \dblb b4 \grg G8 [ \thrwd d ] \grg a4. \wbirl a8 |
    \dblb b4 \dblc c8 d \wslurd d4 \dblc c8. d16 |
    \dble e4 \gra e8. f16 \dble e4 \grg a8. d16 | \break
    
    \dblf f4 \gre f8. g16 \hdblf f4 \thrwd d8. c16 | 
    \dblb b4 \grg G8 [ \thrwd d ] \grg a4. \wbirl a8 |
    \dblb b4 \dble e8 \dblg g \hdblf f e \dblc c \gre a 
    \thrwd d4 \wslurd d8. e16 \thrwd d4. \wslurd d8 |
    \bar "|."| \break
    
    % Part 2
    
    \grg c4 \taor c8. d16 \dble e4 \dblf f8. e16 |
    \dble e4 \grg b8. c16 \thrwd d4. \wslurd d8 |
    \dblc c4 \dblA A8 c \dble e d \dblc c \gre b |
    \grg a4 \grip b \grip c \grg a8. d16 |
    
    \dblf f4 \gre f8. g16 \hdblf f4 \thrwd d8. c16 | 
    \dblb b4 \grg G8 [ \thrwd d ] \grg a4. \wbirl a8 |
    \dblb b4 \dble e8 \dblg g \hdblf f e \dblc c \gre a  
    \thrwd d4 \wslurd d8. e16 \thrwd d2 |
    \bar "|."| \break
    
    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "March"
    piece = "The Old Rustic Bridge"
    composer = "Trad."
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score

