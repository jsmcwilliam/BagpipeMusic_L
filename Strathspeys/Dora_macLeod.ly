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
\include "../Includes/BP_format14.ily" 	

%to here..........................................................
%}

\score {

    \new Staff  {
    \time 4/4	    
    \tempo 4 = 80   
    \hideKeySignature
    \bar ".|:"
    		
    % Part 1
    \repeat volta 2 {
 \gbirl a4 \dble e8. [ c16 ] \dblb b16 [ \gre a8. ] \dblc c16 [ \gre a8. ]  
 \gbirl a4 \dble e8. [ c16 ] \dblf f8. [ e16 ] \grg f16 [ g16 A8 ]  
 \birl a4 \dble e8. [ c16 ] \dblb b16 [ \gre a8. ] \grg c16 [ \grip e8. ]  
 \grg f16 [ g16 A8 ] \hdblf f8. [ c16 ] \dble e8. [ a16 ] \dblc c16 [ \gre b8. ] 
 \bar ":|.-.|"
 \break
    } %end repeat

    % Part 2
\grg c16 [ e8. ] \gra e8. [ f16 ] \dble e8. [ a16 ] \grg c16 [ \grip e8. ]  
 \grg f16 [ A8. ] \grg A8. [ f16 ] \dblA A8. [ e16 ] \grg f16 [ g16 A8 ]  
 c16 [ e8. ] \gra e8. [ f16 ] \dble e8. [ a16 ] \grg c16 [ \grip e8. ]  
 \grg f16 [ g16 A8 ] \hdblf f8. [ c16 ] \dble e8. [ a16 ] \dblc c16 [ \gre b8. ]   
 \break

 \grg c16 [ e8. ] \gra e8. [ f16 ] \dble e8. [ a16 ] \grg c16 [ \grip e8. ]  
 \grg f16 [ A8. ] \grg A8. [ f16 ] \dblA A8. [ e16 ] \grg f16 [ g16 A8 ]  
 \hdble e8. [ f16 ] \gbirl a4 \dblc c16 [ \gre b8. ] \grg c16 [ \grip e8. ]  
 \grg f16 [ g16 A8 ] \hdblf f8. [ c16 ] \dble e8. [ a16 ] \dblc c16 [ \gre b8. ] 
 \bar "|.-.|:" \break
    
    % Part 3
    \repeat volta 2 {
 \gbirl a4 \grd a8. [ b16 ] \gcatchc c4 \dblc c8. [ e16 ]  
 \thrwf f4 \dblf f8. [ e16 ] \dblA A8. [ e16 ] \grg f16 [ g16 A8 ]  
 \birl a4 \grd a8. [ b16 ] \gcatchc c4 \dblc c8. [ e16 ]  
 \grg f16 [ g16 A8 ] \hdblf f8. [ c16 ] \dble e8. [ a16 ] \dblc c16 [ \gre b8. ] 
 \bar ":|.-.|"
 \break
	
    } %end repeat
    
    % Part 4
\grg f16 [ A8. ] \grg A8. [ f16 ] \dblA A8. [ e16 ] \grg f16 [ g16 A8 ]  
 \hdble e8. [ f16 ] \gbirl a4 \dblc c16 [ \gre b8. ] \grg c16 [ \grip e8. ]  
 \grg f16 [ A8. ] \grg A8. [ f16 ] \dble e8. [ a16 ] \grg c16 [ \grip e8. ]  
 \grg f16 [ g16 A8 ] \hdblf f8. [ c16 ] \dble e8. [ a16 ] \dblc c16 [ \gre b8. ]   \break

 \grg f16 [ A8. ] \grg A8. [ f16 ] \dblA A8. [ e16 ] \grg f16 [ g16 A8 ]  
 \hdble e8. [ f16 ] \gbirl a4 \dblc c16 [ \gre b8. ] \grg c16 [ \grip e8. ]  
 \dblA A8. [ f16 ] \dble e8. [ f16 ] \gcatchc c4 \grg e16 [ c16 \grG a8 ]  
 \grg f16 [ e16 c8 ] A16 [ e16 c8 ] \dble e8. [ a16 ] \dblc c16 [ \gre b8. ] 
 \bar "|." \break 

    } %end staff
    
  \header {
    meter = "Strathspey"
    piece = "Dora MacLeod"
    composer = "Peter MacLeod"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
