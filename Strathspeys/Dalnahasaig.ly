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
    \dblf f4 \grg e8. [ d16 ] \grg d16 [ f8. ] \gbirl a4 
    \dblf f4 \grg e8. [ c16 ] \thrwd d8. [ f16 ] \dblA A8. [ g16 ] 
    \hdblf f4 \grg e8. [ d16 ] \grg d16 [ f8. ] \gbirl a8. [ f16 ] 
    \dblg g4 \hdble e8. [ g16 ] \hdblc c8. g16 \grA e16 [ f g8 ]   
    \break
    } %end repeat
    
    % Part 2
    \repeat volta 2 {
     \dblA A4 \hdblf f8. [ A16 ] \thrwd d8. [ f16 ] \gbirl a8. [ f16 ] 
     \dblA A4 \hdblf f8. [ A16 ] \thrwd d8. f16 \grg e16 f g8
     \dblA A4 \hdblf f8. [ A16 ] \thrwd d8. [ f16 ] \gbirl a8. [ f16 ] 
     \dblg g4 \hdble e8. [ g16 ] \hdblc c8. g16 \grA e16 [ f g8 ]  
     \break
    } %end repeat

    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "Strathspey"
    piece = "Dalnahasaig"
    composer = "P/M G.S. McLennan"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
