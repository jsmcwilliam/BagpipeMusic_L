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
%    \bagpipeKey
    \bar ".|:"
    		
    % Part 1
    \repeat volta 2 {
\grg e4 \grg a8 [ A8 ] e8 [ d8 ] \grg b8 [ d8 ] 
 \grg e8 [ f8 ] \grA g8 [ e8 ] \grg d8 [ G8 ] \grg b8 [ d8 ] 
 \grg e4 \grg a8 [ A8 ] e8 [ d8 ] \grg b8 [ d8 ] 
 \grg e8 [ f8 ] \grA g8 [ e8 ] \grg d8 [ G8 ] \grg b8 [ d8 ] 
 \break
    } %end repeat

    % Part 2
    \repeat volta 2 {
 \grg e8 [ a8 ] \gbirl a4 \grg e8 [ a8 ] \grg b8 [ d8 ] 
 \grg e8 [ a8 ] \gbirl a4 \grg b8 [ G8 ] \grg b8 [ d8 ] 
 \grg e8 [ a8 ] \gbirl a4 \grg e8 [ a8 ] \grg b8 [ d8 ] 
 \grg e8 [ f8 ] \grA g8 [ e8 ] \grg d8 [ G8 ] \grg b8 [ d8 ] 
 \break 
    } %end repeat

    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "Reel"
    piece = "Drowsy Maggie"
    composer = "Traditional"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
