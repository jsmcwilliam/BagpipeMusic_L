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
 \grg b8. [ c16 ] \thrwd d4 \dblc c8. [ b16 ] \grg a8 [ \grd c8 ] \grg b2 
 \thrwd d8. [ e16 ] \grg f4 \thrwd d8. [ e16 ] \grg f8 [ A8 ] \hdblf f2 
 \grg f8 [ A8 ] \hdblf f4 \grg b4 \thrwd d8 [ e8 ] \dblc c4 b16 [ \grG a8. ] 
 \dblc c8 [ e8 ] \grg f4 \dble e8. [ c16 ] \grg a8 [ \grd c8 ] \grg b2 \break
    } %end repeat
    
    % Part 2
    \repeat volta 2 {
 \thrwd d8. [ e16 ] \grg f4 \dblf f4 \dblA A8 [ e8 ] \grg f4 \grg b4 
 \thrwd d8. [ e16 ] \grg f4 \grg f8 [ A8 ] \hdblf f8. [ e16 ] \grg c2 
 \dblc c8 [ e8 ] \grg f4 \grg b4 \thrwd d8 [ e8 ] \dblc c4 b16 [ \grG a8. ] 
 \dblc c8 [ e8 ] \grg f4 \dble e8. [ c16 ] \grg a8 [ \grd c8 ] \grg b2 \break
    } %end repeat

    % Part 3
    % Part 4

    } %end staff
    
  \header {
%    meter = "6/4 Retreat March"
    piece = "Farewell to Nigg"
    composer = "Duncan Johnstone 1925-1999"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
