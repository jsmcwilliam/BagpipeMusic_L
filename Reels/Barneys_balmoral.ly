\version "2.22.1"

% When ready to include in collection:	
%	1. Comment out top section with \Include file(s)
%					
%	2. \midi section if present.
%	3. Option to comment out "meter" from title e.g. if first tune following
%	   section title.
                                    
%Comment out from here
%{
\include "bagpipe.ly" %(default Lilypond formats)
\include "../Includes/BP_format_portrait.ily" 	

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
\grg f4 \grg f8. [ a16 ] \grg b16 [ \grd a8. ] \grg b16 [ d8.~ ] 
 d8. [ e16 ] \grg f8. [ a16 ] \grg b16 [ \grd a8. ] \grg b16 [ d8. ] 
 \grg f4 \grg f8. [ a16 ] \grg b16 [ \grd a8. ] \grg b16 [ d8. ] 
 \dble e4 \grg d8. [ b16 ] \grg a8. [ d16 ] \grc d8. [ e16 ] 
 \break
    } %end repeat

    % Part 2
    \repeat volta 2 {
 \grg f4 A8. [ f16 ] \grg f16 [ A8. ] f8. [ d16 ] 
 \dble e4 \grg f8. [ d16 ] \grg b16 [ d8. ] \grg b16 [ \grd a8. ] 
 \grg f4 A8. [ f16 ] \grg f16 [ A8. ] f8. [ d16 ] 
    \dble e4 \grg d8. [ b16 ] \grg a8. [ d16 ] 
        } %end repeat
 
    \alternative {
    	    { \grc d8. [ e16 ] }
    	    {\grc d4 \bar "|."}
    }
 \break

    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "Reel"
    piece = "Barney's Balmoral"
    composer = "Traditional (Arr. A. Jones)"
    parttagline = "Copied by John S. McWilliam"
  }
  
% \midi {} %Generation of midi files option.

}%end score
