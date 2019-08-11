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
    	    \partial 8 {\grg a32. [ \grd b16. ] }
    	    \dblc c8. [ b16 \grG a8 ] \grg f8. [ e16 c8 ] 
    	    \dblc c16 [ e8.~ e8 ] \gra e4 \grg a32. [ \grd b16. ] 
    	    \dblc c8. [ b16 \grG a8 ] \grg f8. [ e16 c8 ] 
    	    \grg b4. \taor b4 
    	    \set Score.repeatCommands = #'((volta "2.--3."))
    	    \grg a32 [ \grd b16 ] 
    	    \break
 
    	    \dblc c8. [ b16 \grG a8 ] \grg f8. [ e16 c8 ] 
    	    \grg e16 [ a8. b8 ] \grip c16 [ A8. \gre f8 ] 
    	    \grg e16 [ a8. \times 2/3 { \grg a16 (b c) ] } \dblb b4 \grG a8 
    	    \grg a4. \wbirl a4
    	    \set Score.repeatCommands = #'((volta #f))
 	    \break   	    
    } %end repeat
    
    % Part 2
    \repeat volta 2 {
    	    \grg c32 [ e16. ] 
    	    \grg f8. [ g16 f8 ] \dblA A8. [ g16 f8 ] 
    	    \dblf f16 [ e8.~ e8 ] \gra e4 \grg c16 [ e16 ] 
    	    \grg f8. [ e16 c8 ] \grg e16 [ a8. \times 2/3 { \grg a16 (b c) ] }
    	    \grg c16 [ b8.~ (b8) ] \taor b4 
    	    \set Score.repeatCommands = #'((volta "1."))
    	    \grg c32 [ e16. ] 
    	    \break
 
    	    \grg f8. [ g16 f8 ] \dblA A8. [ g16 f8 ] 
    	    \grg e16 [ a8. b8 ] \grip c16 [ A8. \gre f8 ] 
    	    \grg e16 [ a8. \times 2/3 { \grg a16 (b c) ] } \dblb b4 \grG a8 
    	    \grg a4. \wbirl a4 
    	    \set Score.repeatCommands = #'((volta #f))
    	    \break
    } %end repeat

    % Part 3
    	    
    % Part 4

    } %end staff
    
  \header {
    meter = "Air"
    piece = "Hector the Hero"
    composer = "J. Scott Skinner"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

} %end score
