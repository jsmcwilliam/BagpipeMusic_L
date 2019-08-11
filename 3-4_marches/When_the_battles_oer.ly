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
    \time 3/4	  
    \tempo 4 = 80  
    \hideKeySignature
    \bar ".|:"
    		
    % Part 1
    \repeat volta 2 {
\grg a8. [ b16 ] \grip c4 \dblA A4 
 \hdblf f8 [ e8 ] \dblc c4 \grG a4 
 \grg a8. [ b16 ] \grip c4 \dble e8. [ c16 ] 
 \dblb b8 [ \grG a8 ] \grip b2 
 \grg a8. [ b16 ] \grip c4 \dblA A4 
 \hdblf f8 [ e8 ] \dblc c4 \grG a4 
 \grg a8. [ b16 ] \grip c4 \dble e8. [ c16 ] 
 \grg b8. [ c16 ] \grG a2 \break
    } %end of repeat

    % Part 2
    \repeat volta 2 {
 \dble e8. [ c16 ] \dblb b4 \grG a4 
 \dblA A8. [ g16 ] \hdblf f4 \grg e4 
 \grg a8. [ b16 ] \grip c4 \dble e8. [ c16 ] 
 \dblb b8 [ \grG a8 ] \grip b2 
 \dble e8. [ c16 ] \dblb b4 \grG a4 
 \dblA A8. [ g16 ] \hdblf f4 \grg e4 
 \grg a8. [ b16 ] \grip c4 \dble e8. [ c16 ] 
 \grg b8. [ c16 ] \grG a2 \break
    } %end of repeat

    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "March"
    piece = "When the Battle's O'er"
    composer = "P/M William Robb (1863-1909)"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
