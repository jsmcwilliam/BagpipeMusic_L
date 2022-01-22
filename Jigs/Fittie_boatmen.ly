\version "2.22.1"

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
    \time 6/8	    
    \tempo 4 = 80   
    \bar ".|:"
    		
    % Part 1
    \repeat volta 2 {
    \partial 8 {e8}
 \grg a8 [ \grd a8 \gre a8 ] \grg c4 e8 
 \grg f8 [ e8 \gra e8 ] \grg e4 c8 
 \grg d8 [ b8 \grG b8 ] \grg b8 [ c8 d8 ] 
 \grg f8 [ e8 \gra e8 ] \grg c4 e8 
 \grg a8 [ \grd a8 \gre a8 ] \grg c4 e8 
 \grg f8 [ e8 \gra e8 ] \grg e4 c8 
 \grg d8 [ b8 \grG b8 ] \grg f8 [ e8 \gra e8 ] 
 \grg a4. \wbirl a4 
 \break
    } %end repeat

    % Part 2
    \repeat volta 2 {
  e8 
  A4. \grg A4 f8 
 \grg e8 [ c8 \gra c8 ] \grg c4 e8 
 \grg d8 [ b8 \grG b8 ] \grg b8 [ c8 d8 ] 
 \grg f8 [ e8 \gra e8 ] \grg c4 e8 
 A4. \grg A4 f8 
 \grg e8 [ c8 \gra c8 ] \grg c4 e8 
 \grg d8 [ b8 \grG b8 ] \grg f8 [ e8 \gra e8 ] 
 \grg a4. \wbirl a4 
 \break
    } %end repeat

    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "Jig"
    piece = "The Fittie Boatmen"
    composer = "Ian Blair"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
