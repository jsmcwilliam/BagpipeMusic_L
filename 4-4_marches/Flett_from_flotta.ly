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
%    \bagpipeKey
    \hideKeySignature
    \bar ".|"
    		
    % Part 1
 
 \partial 4 {\grg f8. [ e16 ]} 
 \dblc c8. [ e16 ] \grg c8 [ b8 ] \dblc c4 \gre a8 [ \grd c8 ] 
 \grg e8. [ f16 ] \grg e8 [ c8 ] \dble e4 \dblc c8 [ e8 ] 
 \dblf f8. [ e16 ] \grg f8 [ A8 ] \hdblf f4 \grg e8 [ c8 ] 
 \dblf f8. [ e16 ] \dblc c8 [ \gre a8 ] \grip b4 \grg f8. [ e16 ]  
 \break

 \dblc c8. [ e16 ] \grg c8 [ b8 ] \dblc c4 \gre a8 [ \grd c8 ] 
 \grg e8. [ f16 ] \grg e8 [ c8 ] \dblA A4 a8. [ b16 ] 
 \grip c4 \dblA A4 e16 [ \grg c8. ] \grg b8. [ \grd c16 ] 
 \grg a2 \wbirl a4 \bar "|.-.|" \break
 
    % Part 2
 \grg a8 [ \grd c8 ] 
 \dble e4 \grg a8 [ \grd c8 ] \dblA A4 a8 [ \grd c8 ] 
 \grg e8. [ f16 ] \grg e8 [ c8 ] \dble e4 \grg a8 [ \grd c8 ] 
 \dblA A4 a8 [ \grd c8 ] \dble e4 \dblc c8 [ e8 ] 
 \dblf f8. [ e16 ] \dblc c8 [ \gre a8 ] \grip b4 \grg f8. [ e16 ]  
 \break

 \dblc c8. [ e16 ] \grg c8 [ b8 ] \dblc c4 \gre a8 [ \grd c8 ] 
 \grg e8. [ f16 ] \grg e8 [ c8 ] \dblA A4 a8. [ b16 ] 
 \grip c4 \dblA A4 e16 [ \grg c8. ] \grg b8. [ \grd c16 ] 
 \grg a2 \wbirl a4 \bar "|." \break 

    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "4/4 March"
    piece = "Flett from Flotta"
    composer = "P/M Donald MacCleod"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
