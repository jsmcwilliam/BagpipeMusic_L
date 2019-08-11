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
    \hideKeySignature

    \bar ".|:"
    		
    % Part 1
    \repeat volta 2 {
\grg a8 [ \grG a8 ] \dblA A4 
 \grf g8 [ \grA e8 ] \dblg g4 
 \dble e8. [ d16 ] \dblb b8 [ \gre a8 ] 
 \grg G8. [ a16 ] \dblb b8 [ \gre G8 ] 
 \grg a8 [ \grG a8 ] \dblA A4 
 \grf g8 [ \grA e8 ] \dblg g4 
 \dble e8. [ d16 ] \dblb b8 [ e8 ] 
 \grg a4 \wbirl a4 \break
    } %end repeat
    
    % Part 2
    \repeat volta 2 {
 \dble e8. [ d16 ] \dblb b8 [ \gre a8 ] 
 \grg G8. [ a16 ] \dblb b8 [ \gre G8 ] 
 \dble e8. [ d16 ] \dblb b8 [ \gre a8 ] 
 \dblb b4 \thrwd d4 
 \dble e8. [ d16 ] \dblb b8 [ \gre a8 ] 
 \grg G8. [ a16 ] \grg b8 [ \thrwd d8 ] 
 \hdble e8. [ d16 ] \dblb b8 [ e8 ] 
 \grg a4 \wbirl a4 \break
    } %end of repeat
    
    % Part 3
    % Part 4

    } %end staff
    
  \header {
%    meter = "2/4 March"
    piece = "Weary Maid"
    composer = "Trad. Arr. E. Krintz"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score

