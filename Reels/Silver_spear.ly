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
    \time 2/2	    
    \tempo 4 = 80  
    \hideKeySignature
    \bar ".|"
    		
    % Part 1
 \grg G8 [ a8 \grg a8 \grd a8 ] \grg b8 [ a8 \grg a8 \grd a8 ] 
 \grg d8 [ f8 \grg e8 d8 ] \grg b8 [ d8 \grg d8 \grc d8 ] 
 \grg G8 [ a8 \grg a8 \grd a8 ] \grg b8 [ a8 \grg a8 \grd a8 ] 
 \grg d8 [ f8 \grg e8 d8 ] \dblb b4 \grG a4
 \break

 \grg G8 [ a8 \grg a8 \grd a8 ] \grg b8 [ a8 \grg a8 \grd a8 ] 
 \grg d8 [ f8 \grg e8 d8 ] \grg b8 [ d8 \grg e8 f8 ] 
 g8 [ \grA g8 \grf g8 e8 ] f8 [ \gre f8 \grg f8 e8 ] 
 \grg d8 [ f8 \grg e8 d8 ] \dblb b4 \grG a4 \bar "|.-.|" 
 \break 

    % Part 2
 \grg f8 [ A8 \grg A8 \grg A8 ] f8 [ A8 \grg A8 f8 ]  
 \grA g8 [ f8 \grg e8 d8 ] \grg b8 [ d8 \grg d8 \grc d8 ]  
 \grg f8 [ A8 \grg A8 \grg A8 ] f8 [ A8 \grg A8 f8 ]  
 \grA g8 [ f8 \grg e8 d8 ] \dblb b4 \grG a4   \break

 \grg f8 [ A8 \grg A8 \grg A8 ] f8 [ A8 \grg A8 f8 ]  
 \grA g8 [ f8 \grg e8 d8 ] \grg b8 [ d8 \grg e8 f8 ]  
 g8 [ \grA g8 \grf g e8 ] f8 [ \grg f8 \gre f8 e8 ]  
 \grg d8 [ f8 \grg e8 d8 ] \dblb b4 \grG a4 \bar "|." \break 

    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "Reel"
    piece = "Silver Spear"
    composer = "Trad."
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
