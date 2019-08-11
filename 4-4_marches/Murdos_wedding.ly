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
\grg a4 \taor a8 [ b8 ] \grG a4 \dblc c8 [ e8 ] 
 \dblA A4 \hdblf f8 [ d8 ] \dble e2 
 \grg a4 \taor a8 [ b8 ] \grG a4 \dblc c8 [ e8 ] 
 \grg f8. [ e16 ] \dbld d8 [ c8 ] \dblb b4 \dble e8 [ c8 ] 
 \grg a4 \taor a8 [ b8 ] \grG a4 \dblc c8 [ e8 ] 
 \dblA A4 \hdblf f8 [ d8 ] \dble e2 
 \dblA A4 \hdblf f8 [ d8 ] \dble e4 \dbld d4 
 \dgrip a2 \wbirl a2 \bar "|.-.|"
 \break 
    
    % Part 2
 \dblA A4 \hdblf f8 [ d8 ] \dble e4 \grg a4 
 \dblA A4 \hdblf f8 [ d8 ] \dble e2 
 \grg a4 \taor a8 [ b8 ] \grG a4 \dblc c8 [ e8 ] 
 \grg f8. [ e16 ] \dbld d8 [ c8 ] \dblb b4 \dble e8 [ c8 ] 
 \grg a4 \taor a8 [ b8 ] \grG a4 \dblc c8 [ e8 ] 
 \dblA A4 \hdblf f8 [ d8 ] \dble e2 
 \dblA A4 \hdblf f8 [ d8 ] \dble e4 \dbld d4 
 \dgrip a2 \wbirl a2 \bar "|."
 \break

    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "4/4 March"
    piece = "Murdos Wedding"
    composer = "P/M Gavin Stoddart"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
