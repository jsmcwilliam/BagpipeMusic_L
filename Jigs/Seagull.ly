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
    \time 6/8	    
    \tempo 4 = 80  
%    \bagpipeKey
    \hideKeySignature
    \bar ".|:"
    		
    % Part 1
    \repeat volta 2 {
    \partial 8 e8 
 A8 [ g8 A8 ] f16 [ A8. e8 ] 
 \grg f8 [ e8 c8 ] \grg b8 [ \grd c8 e8 ] 
 A8 [ g8 A8 ] f16 [ A8. e8 ] 
 \grg f8 [ e8 c8 ] \grg a8 [ \grd c8 e8 ]  
% \break

 A8 [ g8 A8 ] f16 [ A8. e8 ] 
 \grg f8 [ e8 c8 ] \grg b8 [ \grd c8 e8 ] 
 A8 [ f8 \grg e8 ] \grg f16 [ A8. e8 ] 
 \grg f8 [ e8 c8 ] \grg a8 [ \grd c8 e8 ] 
 \break
    } %end repeat
    
    % Part 2
    \repeat volta 2 {
 \grg f8 [ c8 \grG c8 ] \dblc c8 [ b8 \grG b8 ] 
 \grg f8 [ e8 c8 ] \grg b8 [ \grd c8 e8 ] 
 \grg f8 [ c8 \grG c8 ] \dblc c8 [ b8 \grG b8 ] 
 \grg f8 [ e8 c8 ] \grg a8 [ \grd c8 e8 ]  
% \break

 
 \grg f8 [ c8 \grG c8 ] \dblc c8 [ b8 \grG b8 ] 
 \grg f8 [ e8 c8 ] \grg b8 [ \grd c8 e8 ] 
 A8 [ f8 \grg e8 ] \grg f16 [ A8. e8 ] 
 \grg f8 [ e8 c8 ] \grg a8 [ \grd c8 e8 ] 
 \break
    } %end repeat

    % Part 3
    \repeat volta 2 {
 \grg c8 [ f8 e8 ] \grg b8 [ \grd c8 e8 ] 
 \grg f8 [ e8 c8 ] \grg b8 [ \grd c8 e8 ] 
 \grg c8 [ f8 e8 ] \grg b8 [ \grd c8 e8 ] 
 \grg f8 [ e8 c8 ] \grg a8 [ \grd c8 e8 ] 
% \break

 \grg c8 [ f8 e8 ] \grg b8 [ \grd c8 e8 ] 
 \grg f8 [ e8 c8 ] \grg b8 [ \grd c8 e8 ] 
 A8 [ f8 \grg e8 ] \grg f16 [ A8. e8 ] 
 \grg f8 [ e8 c8 ] \grg a8 [ \grd c8 e8 ] 
 \break
    } %end repeat

    % Part 4
    \repeat volta 2 {
 A8 [ e8 c8 ] \grg b8 [ \grd c8 e8 ] 
 \grg f8 [ e8 c8 ] \grg b8 [ \grd c8 e8 ] 
 A8 [ e8 c8 ] \grg b8 [ \grd c8 e8 ] 
 \grg f8 [ e8 c8 ] \grg a8 [ \grd c8 e8 ]  
% \break
 
 A8 [ e8 c8 ] \grg b8 [ \grd c8 e8 ] 
 \grg f8 [ e8 c8 ] \grg b8 [ \grd c8 e8 ] 
 A8 [ f8 \grg e8 ] \grg f16 [ A8. e8 ] 
 \grg f8 [ e8 c8 ] \grg a8 [ \grd c8 e8 ] 
 \break
    } %end repeat

    } %end staff
    
  \header {
    meter = "Jig"
    piece = "The Sea Gull"
    composer = "D. MacLeod"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
