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
    	\partial 8 a8
    	\wbirl a8. [ \grd c16 b16 \grG a16 ] \grg e4 f8 
    	\grg e4. \dblc c4 \grg b8 
 	\grG a8. [ \grd c16 b16 \grG a16 ] \grg e4 c8 
 	\grg b4. \grip b4 \grG a8  
 	%\break

 	\wbirl a8. [ \grd c16 b16 \grG a16 ] \grg e8. [ \grg f16 g16 A16 ] 
 	\dble e4. \dblc c4 \grg c16 [ b16 ] 
 	\grG a8. [ \grd b16 a16 b16 ] \grip c4 \gre b8 
 	\grG a4. \wbirl a4.  \break
 
 	\grg f8. [ d16 \grg a16 d16 ] \grg f4 A8 
 	\dble e4. \dblc c4 \grG a8 
 	\grg f8. [ d16 \grg a16 d16 ] \grg f8. c16 \grg e c 
 	\grg b4. \grip b4 \grG a8  
 	%\break

 	\wbirl a8. [ \grd c16 b16 \grG a16 ] \grg e8. [\grg f16 g16 A16 ] 
 	e4. \dblc c4 \grg c16 b 
 	\grG a8. [ \grd b16 a16 b16 ] \grip c4 \gre b8 
 	\grG a4. \wbirl a4. %\bar ":|" 
 	\break	
    } %end repeat
    
    % Part 2
    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "Air"
    piece = "Our Ain Fireside"
    composer = "James Scott Skinner"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
