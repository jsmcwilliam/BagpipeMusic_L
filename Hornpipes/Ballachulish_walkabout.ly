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
    \time 2/4	    
    \tempo 4 = 80  
%    \bagpipeKey
    \hideKeySignature
    \bar ".|:"
    		
    % Part 1
    \repeat volta 2 {
    \partial 8 f8 
 \shakee e8 [ c16 e16 ] \grg a16 [ e16 c16 f16 ] 
 \shakee e8 [ c16 e16 ] \grg a8 [ A16 f16 ] 
 \shakee e8 [ c16 e16 ] \grg a16 [ e16 c16 f16 ] 
 \shaked d8 [ c16 d16 ] \grg b8 [ A16 f16 ]  \break

 \shakee e8 [ c16 e16 ] \grg a16 [ e16 \grg c16 f16 ] 
 \shakee e8 [ c16 e16 ] \grg a8 [ \grg b16 c16 ] 
 \dbld d16 [ b16 \grg G16 \grd b16 ] \thrwd d16 [ f16 \grg e16 d16 ] 
 \dble e8 [ \grg a8 ] \wbirl a8 
 \break
    } %end repeat
    
    % Part 2
    \repeat volta 2 {
 f8 
 \shakee e8 [ c16 f16 ] \shakee e8 [ c16 A16 ] 
 f16 [ A16 d16 A16 ] \times 2/3 {f16 (A f)} \grg d16 f16 
 \shakee e8 [ c16 f16 ] \shakee e8 [ c16 e16 ] 
 \grg d16 [ e16 \grg b16 e16 ] \times 2/3 {\grg d16 (e d)} \grg b16 f16 
 \break

 \shakee e8 [ c16 f16 ] \shakee e8 [ c16 A16 ] 
 f16 [ A16 d16 A16 ] \times 2/3 {f16 (A f)} \grg d16 f16  
 \shakee e8 [ c16 e16 ] \grg d16 [ b16 G16 \grd b16 ] 
 \dblc c8 [ \gre a8 ] \wbirl a8 
%}
 \break
     } %end repeat

    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "Hornpipe"
    piece = "Ballachulish Walkabout"
    composer = "John D. Burgess"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
