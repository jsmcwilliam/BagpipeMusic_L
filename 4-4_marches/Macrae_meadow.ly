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
\grg c8. [ d16 ] \dblc c8 [ \gre b8 ] \grG a4 \dbld c8 [ e8 ] 
 \grg f4. e8 \dblc c2 
 \dblA A4 \grip A8. [ g16 ] A8 [ e8 ] \grg f8 [ A8 ] 
 \hdblf f4. e8 \dblc c2 
 \thrwd d4. e8 \grg f4 \dble e8 [ d8 ] 
 \grg a4. b8 \grip c2 
 \grg f4. A8 e8 [ A8 ] \hdbld d8 [ c8 ] 
 \dblb b2 \grG a4  \bar "|.-.|" \break 

    % Part 2
 \grg e4 
 \dblA A4 \grip A8. [ g16 ] A8 [ e8 ] \grg f8 [ A8 ] 
 \hdblf f4. e8 \dblc c2 
 \grg c8. [ d16 ] \dblc c8 [ \gre b8 ] \grG a4 \dbld c8 [ e8 ] 
 \hdblf f4. e8 \dblc c2 
 \thrwd d4. e8 \grg f4 \dble e8 [ d8 ] 
 \grg a4. b8 \grip c2 
 \grg f4. A8 e8 [ A8 ] \hdbld d8 [ c8 ] 
 \dblb b2 \grG a4 \bar "|.-.|" \break 

    % Part 3
 \grg e4 
 \grg a4. b8 \grip c4 \thrwd d8 [ e8 ] 
 \grg f4. e8 \dblc c2 
 \dblA A4 \grip A8. [ g16 ] A8 [ e8 ] \grg f8 [ A8 ] 
 \hdblf f4. e8 \dblc c2 
 \thrwd d4. e8 \grg f4 \grg a8 [ b8 ] 
 \grip c4. d8 \dble e2 
 \grg f4. A8 e8 [ A8 ] \hdbld d8 [ c8 ] 
 \dblb b2 \grG a4 \bar "|.-.|" \break 

    % Part 4
 \grg e4 
 \dblA A4. e8 \dblc c8 [ \gre a8 ] \dblc c8 [ e8 ] 
 \grg f4. e8 \dblc c2 
 \dblA A4 \grip A8. [ g16 ] A8 [ e8 ] \grg f8 [ A8 ] 
 \hdblf f4. e8 \dblc c2 
 \thrwd d4. e8 \grg f8 [ b8 ] \grg c8 [ d8 ] 
 \dblc c4. d8 \dble e2 
 \grg f4. A8 e8 [ A8 ] \hdbld d8 [ c8 ] 
 \dblb b2 \grG a2 \bar "|." \break 

    } %end staff
    
  \header {
%    meter = "2/4 March"
    piece = "MacRae Meadow"
    composer = "Charlie Glendinning"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
