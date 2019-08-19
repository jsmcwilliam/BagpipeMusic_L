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
%    \bar ".|"
    		
    % Part 1
    
    \partial 4 { \tuplet 3/2 {a8 [ b c ]} } | 
    \thrwd d4 \grg d \wslurd d \grg f8 A   | G2 \dblg g8 f \grg e d |
    \dblc c8. d16 \grg e8 c \grg a4 \grd b | \grG a2 A8 g \grg f e  | \break
    \thrwd d4 \grg d \wslurd d \grg f8 A   | G2 \dblg g8 f \grg e d |
    \dblc c8. d16 \grg e8 c \grg a4 \grg b8. c16 | 
    \thrwd d4 \wslurd d8. e16 \thrwd d4 d8. \grg a16 \bar "|." \break
    
    % Part 2
    
    \thrwd d4 \grg f8 A \thrwd d4 \grg f8 A | G2 \dblg g8 f \grg e d |
    \dblc c8. d16 \grg e8 c \grg a4 \grd b  | \grG a2 A8 g \grg f e | \break
    \thrwd d4 \grg f8 A \thrwd d4 \grg f8 A | G2 \dblg g8 f \grg e d |
    \dblc c8. d16 \grg e8 c \grg a4 \grg b8. c16 |  
    \thrwd d4 \wslurd d8. e16 \thrwd d8 \grg a \grg b c | \bar "|." \break
    
    % Part 3
    
    \thrwd d8 a \grg f d\grg a d \grg f A   | G2 \dblg g8 f \grg e d |
    \dblc c8. d16 \grg e8 c \grg a4 \grd b  | \grG a2 A8 g \grg f e | \break
     \thrwd d8 a \grg f d\grg a d \grg f A   | G2 \dblg g8 f \grg e d |
    \dblc c8. d16 \grg e8 c \grg a4 \grg b8. c16 |
    \thrwd d4 \wslurd d8. e16 \thrwd d2 \bar "|."
    
    % Part 4

    } %end staff
    
  \header {
    meter = "March"
    piece = "Cockney Jocks"
    composer = "J. Haynes"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
