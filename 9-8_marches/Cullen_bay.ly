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
    \time 9/8	   
    \tempo 4 = 80  
    \hideKeySignature
    \bar ".|:"
    		
    % Part 1
    \repeat volta 2 {
 \grg a8. [ b16 ] \dblc c8 [ \gre a8 ] \grg b8 [ \grd c16. b32 ] \grG a2 
 \grg c8. [ d16 ] \dble e8 [ c8 ] \thrwd d8 [ \grg e32 f16. ] \dble e2 
 \grg f8 [ A8 ] \hdble e8 [ c8 ] \thrwd d8 [ \grg e16. d32 ] \dblc c2 
 \grg a8. [ b16 ] \dblc c8 [ \gre a8 ] \grg b8 [ \grd c16. b32 ] \grG a2 
 \break
    } %end repeat

    % Part 2
    \repeat volta 2 {
 \dblA A8 [ e8 ] \dble e8 [ c32 e16. ] \grg f8 [ e32 c16. ] \dble e2 
 \dblA A8 [ e8 ] \dble e8 [ c32 e16. ] \dblf f8 [ e32 c16. ] \dblb b2 
 \dblA A8 [ e8 ] \dble e8 [ c32 e16. ] \dblf f8 [ e32 c16. ] \dble e2 
 \grg a8. [ b16 ] \dblc c8 [ \gre a8 ] \grg b8 [ \grd c16. b32 ] \grG a2 
 \break
    } %end repeat

    % Part 3
    \repeat volta 2 {
 \dblc c8 [ \gre a8 ] \wbirl a8 [ b32 c16. ] \thrwd d8 [ c32 b16. ] \dblc c2 
 \dble e8 [ c8 ] \grG c8 [ d32 e16. ] \thrwd d8 [ e32 f16. ] \dble e2 
 \grg f8 [ A8 ] \hdble e8 [ c8 ] \thrwd d8 [ \grg e16. d32 ] \dblc c2 
 \grg a8. [ b16 ] \dblc c8 [ \gre a8 ] \grg b8 [ \grd c16. b32 ] \grG a2 
 \break
    } %end repeat

    % Part 4
    \repeat volta 2 {
 \dble e8 [ c32 e16. ] \dblA A8 [ e8 ] \dblf f8 [ e32 c16. ] \dble e2 
 \dblc c8 [ \gre a8 ] \wbirl a8 [ b32 c16. ] \dble e8 [ d32 c16. ] \dblb b2 
 \dble e8 [ c32 e16. ] \grg f8 [ A8 ] f16. [ e32 \grg d32 f16. ] \dble e2 
 \grg a8. [ b16 ] \dblc c8 [ \gre a8 ] \grg b8 [ \grd c16. b32 ] \grG a2 \break
    } %end repeat
%}
    } %end staff
    
  \header {
    meter = "March"
    piece = "Cullen Bay"
    composer = "Ian Duncan"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
