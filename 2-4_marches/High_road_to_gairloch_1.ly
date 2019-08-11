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
    \quarterBeaming
    \bar ".|:"

% Part 1
    \repeat volta 2 {
    		 \grg e8. [ f16 ] \grg e8 [ a8 ]  
 \dblc c8 [ \gre a8 ] \grg e4  
 \thrwd d8 [ \grg f16 e16 ] \thrwd d8 [ \gre G8 ]  
 \dblb b8 [ \gre G8 ] \thrwd d4   
% \break

 \grg e8. [ f16 ] \grg e8 [ a8 ]  
 \dblc c8 [ \gre a8 ] \grg e4  
 \grg a8. [ b16 ] \dblc c8 [ \gre a8 ]  
 \dblb b4 \grG a4 \break

 	} %end repeat

% Part 2 	
 	\repeat volta 2 {
 \dblc c8 [ \gre a8 ] \grg a8. [ b16 ]  
 \dblc c8 [ \gre a8 ] \dblc c4  
 \thrwd d8. [ c16 ] \grg b8. [ c16 ]  
 \thrwd d8 [ \gre b8 ] \thrwd d4   
% \break

 \dblc c8 [ \gre a8 ] \grg a8. [ b16 ]  
 \dblc c8 [ \gre b8 ] \dblc c8 [ e8 ]  
 \grg a8. [ b16 ] \dblc c8 [ \gre a8 ]  
 \dblb b4 \grG a4 \break

 	} %end repeat
    } %end staff
    
  \header {
    meter = "March"
    piece = "The High Road to Gairloch"
    composer = "Trad."
    parttagline = "Copied by John S. McWilliam"
    title = ##f
    subtitle = ##f
  }
  	
%Generation of midi files can be removed here.

%  \midi {}

}%end score
