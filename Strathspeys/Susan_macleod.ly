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
 \grg e8. [ f16 ] \dble e8. [ d16 ] \dbld d16 [ c8. ] \grip c8. [ b16 ] 
 \grg a8. [ b16 ] \dblc c16 [ \gre a8. ] \grg c16 [ e8. ] \gra e4 
 \grg f8. [ g16 ] \hdblf f8. [ e16 ] \grg f16 [ A8. ] \grg A8. [ f16 ] 
 \grg e8. [ f16 ] \dble e8. [ c16 ] \dblf f4 \dblA A8. [ f16 ]  \break

 \grg e8. [ f16 ] \dble e8. [ d16 ] \dbld d16 [ c8. ] \grip c8. [ b16 ] 
 \grg a8. [ b16 ] \dblc c16 [ \gre a8. ] \grg c16 [ e8. ] \gra e8. [ f16 ] 
 \dblA A8. [ e16 ] \grg f16 [ g16 A8 ] \hdble e8. [ A16 ] \thrwd d16 [ A8. ] 
 \hdblc c8. [ A16 ] \hdblb b16 [ A8. ] a4 \taor a8. \bar "|.-.|" 
 \break 
 
    % Part 2
 \grd c16 
 \dble e4 \gra e8. [ f16 ] \grg c16 [ e8. ] \gra e8. [ c16 ] 
 \grg a8. [ b16 ] \dblc c16 [ \gre a8. ] \grg c16 [ e8. ] \dblc e16 [ \gre a8. ] 
 \grg f4 \dblf f8. [ e16 ] \grg d16 [ f8. ] \gre f8. [ g16 ] 
 \dblA A8. [ e16 ] \grg f16 [ g16 A8 ] \hdble e8. [ A16 ] \hdblc c16 [ A8. ]  \break

 f16 [ e16 c8 ] \grg e8. [ f16 ] \grg c16 [ e8. ] \gra e8. [ c16 ] 
 \grg a8. [ b16 ] \dblc c16 [ \gre a8. ] \grg c16 [ e8. ] \dblc c16 [ \gre a8. ] 
 \dblA A8. [ e16 ] \grg f16 [ g16 A8 ] \hdble e8. [ A16 ] \thrwd d16 [ A8. ] 
 \hdblc c8. [ A16 ] \hdblb b16 [ A8. ] a4 \taor a8. \bar "|.-.|" 
 \break 
 
    % Part 3
 f16 
 \dble e8. [ a16 ] \gbirl a4 \gbirl a4 \dblc c16 [ \gre a8. ] 
 \dblc c16 [ \gre a8. ] \gbirl a4 \grg c16 [ e8. ] \gra e8. [ A16 ] 
 \hdblf f8. [ b16 ] \shakeb b4 \darodo b4 \thrwd d8. [ c16 ] 
 \darodo b4 \thrwd d8. [ e16 ] \dblf f4 \grg f16 [ A8. ]  \break

 \hdble e8. [ a16 ] \gbirl a4 \gbirl a4 \dblc c16 [ \gre a8. ] 
 \dblc c16 [ \gre a8. ] \gbirl a4 \grg c16 [ e8. ] \gra e8. [ f16 ] 
 \dblA A8. [ e16 ] \grg f16 [ g16 A8 ] \hdble e8. [ A16 ] \thrwd d16 [ A8. ] 
 \hdblc c8. [ A16 ] \hdblb b16 [ A8. ] a4 \taor a8. \bar "|.-.|" 
 \break 
 
    % Part 4
 e16 
 \grg f16 [ A8. ] \grg A8. [ c16 ] \grg c16 [ e8. ] \gra e8. [ c16 ] 
 \grg a8. [ b16 ] \dblc c16 [ \gre a8. ] \grg c16 [ e8. ] \gra e8. [ f16 ] 
 \grg f16 [ A8. ] \grg A8. [ d16 ] \grg d16 [ f8. ] \gre f8. [ g16 ] 
 \dblA A8. [ e16 ] \grg f16 [ g16 A8 ] \hdblc c16 [ A8. ] \hdblf f8. [ e16 ]  \break

 \grg f16 [ A8. ] \grg A8. [ c16 ] \grg c16 [ e8. ] \gra e8. [ c16 ] 
 \grg a8. [ b16 ] \dblc c16 [ \gre a8. ] \grg c16 [ e8. ] \gra e8. [ f16 ] 
 \dblA A8. [ e16 ] \grg f16 [ g16 A8 ] \hdble e8. [ A16 ] \thrwd d16 [ A8. ] 
 \hdblc c8. [ A16 ] \hdblb b16 [ A8. ] a4 \taor a8. \bar "|." \break 

    } %end staff
    
  \header {
    meter = "Strathspey"
    piece = "Susan MacLeod"
    composer = "Donald MacLeod"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
