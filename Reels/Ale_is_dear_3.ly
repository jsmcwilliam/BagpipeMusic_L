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
    		
    % Part 1
    \repeat volta 2 {
 \dblf f4 \grg e8. [ f16 ] \slurb b4 \grg f8. [ e16 ] 
 \grg f16 [ A8. ] e16 [ A8. ] c16 [ \grd a8. ] \grg e8. [ c16 ] 
 \dblf f4 \grg e8. [ f16 ] \slurb b4 \grg f8. [ e16 ] 
 \grg f16 [ A8. ] e8. [ c16 ] \grg b8. [ \grd b16 ] \gre b8. [ \grd c16 ] 
 \bar ":|.-.|"
 \break
    } %end repeat

    % Part 2
 \grg b8. [ \grd b16 ] \gre b8. [ c16 ] \thrwd d4 \dblc c8. [ b16 ] 
 \grg a8. [ \grd a16 ] \gre a8. [ \grd b16 ] \grg a8. [ b16 ] \grg c16 [ \grd a8. ] 
 \grg b8. [ \grd b16 ] \gre b8. [ c16 ] \thrwd d4 \dblc c8. [ b16 ] 
 \grd c16 f8. e8. [ c16 ] \grg b8. [ \grd b16 ] \gre b8. [ \grd c16 ]  \break

 \grg b8. [ \grd b16 ] \gre b8. [ c16 ] \thrwd d4 \dblc c8. [ b16 ] 
 \grg a8. [ \grd a16 ] \gre a8. [ \grd b16 ] \grg a8. [ \grd b16 ] \grg c16 [ \grd a8. ] 
 \thrwd d4 \grg f8. [ d16 ] \dblc c4 \grg e8. [ c16 ] 
 \grd b16 f8. \grg e8. [ c16 ] \grg b8. [ \grd b16 ] \gre b8. \grd c16 \bar "|." 
 \break 

    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "Reel"
    piece = "The Ale is Dear"
    composer = "P/M Norman Gillies"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
