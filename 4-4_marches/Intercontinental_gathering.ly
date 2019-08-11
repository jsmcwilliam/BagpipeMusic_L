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
    \bar ".|"
    		
    % Part 1
\grg f4 \grg f8. [ g16 ] \dblA A4 \hdblf f8 [ d8 ] 
 \grg b8. [ c16 ] \thrwd d8 [ g8 ] \hdblf f4. d8 
 \grg b4 \thrwd d4 \dblg g8 [ f8 ] \dble e8 [ d8 ] 
 \dblc c4 \thrwd d4 \dble e8 [ A8 ] \grf g8 [ e8 ]  \break

 \grg f4 \grg f8. [ g16 ] \dblA A4 \hdblf f8 [ d8 ] 
 \grg b8. [ c16 ] \thrwd d8 [ g8 ] \hdblf f4. d8 
 \dble e4 A4 \grg A8 [ g8 ] \grA f8 [ e8 ] 
 \grg f8 [ A8 ] \grf g8 [ e8 ] \thrwd d4 \grg e8. [ d16 ] \bar "|.-.|" 
 \break 

    % Part 2
 \grg c4 \grg c8. [ d16 ] \dble e4 \dblc c8 [ \grg a8 ] 
 \thrwd d4 \grg d8. [ e16 ] \grg f4 \grg d8 [ b8 ] 
 \grg e8. [ f16 ] \dblg g8 [ f8 ] \grg e8 [ d8 ] \dblc c8 [ b8 ] 
 \grg c8. [ d16 ] \grg e8 [ f8 ] \dble e4 \grg e8. [ d16 ]  \break

 \grg c4 \grg c8. [ d16 ] \dble e4 \dblc c8 [ \grg a8 ] 
 \thrwd d4 \grg d8. [ e16 ] \grg f4 \grg d8 [ b8 ] 
 \dble e4 \dblc c8 [ e8 ] \thrwd d8 [ f8 ] \dble e8 [ d8 ] 
 \dblc c4 \thrwd d4 \dble e8 [ A8 ] \grf g8 [ e8 ] \bar "|.-.|" 
 \break 

    % Part 3
 \grg f4 \grg f8. [ g16 ] \dblA A4 \hdblf f8 [ d8 ] 
 \grg b8. [ c16 ] \thrwd d8 [ g8 ] \hdblf f4. d8 
 \grg b4 \thrwd d4 \dblg g8 [ f8 ] \dble e8 [ d8 ] 
 \dblc c4 \thrwd d4 \dble e8 [ A8 ] \grf g8 [ e8 ]  \break

 \grg f4 \grg f8. [ g16 ] \dblA A4 \hdblf f8 [ d8 ] 
 \grg b8. [ c16 ] \thrwd d8 [ g8 ] \hdblf f4. d8 
 \dble e4 A4 \grg A8 [ g8 ] \grA f8 [ e8 ] 
 \grg f8 [ A8 ] \grf g8 [ e8 ] \thrwd d2 \bar "|." \break 

    % Part 4

    } %end staff
    
  \header {
    meter = "March"
    piece = "The Intercontinental Gathering"
    composer = ""
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
