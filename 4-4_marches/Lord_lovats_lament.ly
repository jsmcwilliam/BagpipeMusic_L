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
    \partial 4 \grg a8. [ b16 ] 
 \grip c4 \dblc c8 [ e8 ] \thrwd d8 [ c8 ] \dblb b8 [ \grG a8 ] 
 \grg c16 [ e8. ] \gra e8. [ f16 ] \dble e4 \grg f8. [ g16 ] 
 \dblA A4 \hdble e8 [ A8 ] \hdblf f8 [ e8 ] \dblc c8 [ \gre a8 ] 
 \dblc c8 [ b8 ] \grG b8. [ c16 ] \dblb b4 \grg a8. [ b16 ]  \break

 \grip c4 \dblc c8 [ e8 ] \thrwd d8 [ c8 ] \dblb b8 [ \grG a8 ] 
 \grg c16 [ e8. ] \gra e8. [ f16 ] \dble e4 \dblc c8 [ \gre a8 ] 
 \thrwd d8. [ e16 ] \grg f8 [ \grg e16 d16 ] \grg c16 [ e8. ] \thrwd d8. [ b16 ] 
 \grg a4 \wbirl a8. [ b16 ] \grG a4 \bar "|.-.|" \break 

    % Part 2
 \grg f8. [ g16 ] 
 \dblA A4 \hdble e8 [ A8 ] \hdblf f8 [ e8 ] \dblc c8 [ \gre a8 ] 
 \grg c16 [ e8. ] \gra e8. [ f16 ] \dble e4 \grg f8. [ g16 ] 
 \dblA A4 \hdble e8 [ A8 ] \hdblf f8 [ e8 ] \dblc c8 [ \gre a8 ] 
 \dblc c8 [ b8 ] \grG b8. [ c16 ] \dblb b4 \grg a8. [ b16 ]  \break

 \grip c4 \dblc c8 [ e8 ] \thrwd d8 [ c8 ] \dblb b8 [ \grG a8 ] 
 \grg c16 [ e8. ] \gra e8. [ f16 ] \dble e4 \dblc c8 [ \gre a8 ] 
 \thrwd d8. [ e16 ] \dblf f8 [ e16 d16 ] \grg c16 [ e8. ] \thrwd d8. [ b16 ] 
 \grg a4 \wbirl a8. [ b16 ] \grG a4 \bar "|." \break 

    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "March"
    piece = "Lord Lovats Lament"
    composer = "Traditional"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
