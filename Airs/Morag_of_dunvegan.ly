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
    \time 6/8	    
    \tempo 4 = 80  
    \hideKeySignature
    \bar ".|:"
    		
    % Part 1
    \repeat volta 2 {
\dblc c4 \grip c8 \dblc c8 [ \grg b8 \grG a8 ] 
 \dblc c4 \grg e8 \gra e4. 
 \dblA A4. \grg A8 [ f8 A8 ] 
 \hdblf f4 \grg e8 \gra e4. 
 \dblc c4 \grip c8 \dblc c8 [ \gre b8 \grd c8 ] 
 \dblf f4 \grg e8 \gra e4. 
 \grg f4 A8 \hdblf f8 [ e8 c8 ] 
 \dblb b4. \grG a4. 
 \break
    } %end repeat

    % Part 2
    \repeat volta 2 {
 \dblA A4. \grg A4 f8 
 \dble e4 \grg a8 \wbirl a4. 
 \dblc c4 \grip c8 \dblc c8 [ \gre b8 \grd c8 ] 
 \dblf f4 \grg e8 \gra e4. 
 \dblA A4. \grg A4 f8 
 \dble e4 \grg a8 \wbirl a4. 
 \dblc c4 \grip c8 \dble e4 c8 
 \dblb b4. \grG a4. 
 \break
    } %end repeat

    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "Air"
    piece = "Morag of Dunvegan"
    composer = "N. Mathison"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
