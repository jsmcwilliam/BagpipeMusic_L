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
    \bar ".|:"
    		
    % Part 1
      \repeat volta 2 {
\grg a8. [ b16 ] \grg a8 [ G8 ] \grg a8 [ b8 ] \thrwd d4 
 \grg b8. [ c16 ] \grg b8 [ a8 ] \grg b8 [ c8 ] \thrwd d8. [ e16 ] 
 \grg f8 [ A8 ] e8. [ f16 ] \thrwd d8 [ e8 ] \grg f8. [ e16 ] 
 \grg d8 [ b8 ] \grg b8 [ \grG a8 ] \grg a4. e8 
 \break
    } %end repeat

    % Part 2
      \repeat volta 2 {
 \grg f8. [ \gre f16 ] \grg f8 [ e8 ] \grg f8 [ g8 ] A8. [ f16 ] 
 \grg e8 [ \gra e8 ] \grg e8. [ d16 ] \grg e8 [ f8 ] \dblg g4 
 A8. [ f16 ] \grg e8 [ f8 ] \thrwd d8 [ e8 ] \grg f8. [ e16 ] 
 \grg d8 [ b8 ] \grg b8 [ \grG a8 ] \grg a2 
 \break
    } %end repeat

    % Part 3
    % Part 4

    } %end staff
    
  \header {
%    meter = "4/4 March"
    piece = "Scots Wa Hae"
    composer = "Traditional"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
