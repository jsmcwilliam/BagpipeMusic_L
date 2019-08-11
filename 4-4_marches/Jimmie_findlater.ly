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
	\partial 8 e8 
 \grg a4 \taor a8 [ d8 ] \dblc c8. [ b16 ] \gra a8 [ \grd c8 ] 
 \dble e8. [ c16 ] A8 [ c8 ] \dble e4~ e8 [ f8 ] 
 \grg f8. [ e16 ] \grg f16 [ A8. ] \hdble e8. [ c16 ] \grg a8 [ \grd c8 ] 
 \dble e8. [ d16 ] \dbld d16 [ c8. ] \grg b4~ b8 [ e8 ]  \break

 \grg a4 \taor a8 [ d8 ] \dblc c8. [ b16 ] \gra a8 [ \grd c8 ] 
 \dble e8. [ c16 ] A8 [ c8 ] \dble e4~ e8 [ f8 ] 
 \grg f8. [ e16 ] \grg f16 [ A8. ] \hdble e8. [ c16 ] \dbld d8 [ b8 ] 
 \grg a2 \wbirl a4.  \bar "|.-.|" 
 \break 

    % Part 2
 e8
 \grg f8. [ e16 ] \grg f8 [ A8 ] \hdble e8. [ c16 ] \dbld d8 [ b8 ] 
 \grg a8. [ b16 ] \grip c8 [ d8 ] \dble e4~ e8 [ f8 ] 
 \grg f8. [ e16 ] \grg f16 [ A8. ] \hdble e8. [ c16 ] \grg a8 [ \grd c8 ] 
 \dble e8. [ d16 ] \dbld d16 [ c8. ] \gre b4~ b8 [ e8 ]  \break

 \grg f8. [ e16 ] \grg f8 A8 \hdble e8. [ c16 ] \dbld d8 [ b8 ] 
 \grg a8. [ b16 ] \grip c8 [ d8 ] \dble e4~ e8 [ f8 ] 
 \grg f8. [ e16 ] \grg f16 [ A8. ] \hdble e8. [ c16 ] \dbld d8 [ b8 ] 
 \grg a2 \wbirl a4. \bar "|.-.|" 
 \break 

    % Part 3
 e8
 \birl a8. [ b16 ] \grg c8 [ d8 ] \dbld d8 [ c8~ ] c8 [ e8 ] 
 \grg f8. [ e16 ] \grg d8 [ A8 ] \hdble e4~ e8 [ f8 ] 
 \grg f8. [ e16 ] \grg f16 [ A8. ] \hdble e8. [ c16 ] \grg a8 [ \grd c8 ] 
 \dble e8. [ d16 ] \dbld d16 [ c8. ] \grg b4~ b8 [ e8 ]  \break

 \birl a8. [ b16 ] \grg c8 [ d8 ] \dbld d8 [ c8~ ] c8 [ e8 ] 
 \grg f8. [ e16 ] \grg d8 [ A8 ] \hdble e4~ e8 [ f8 ] 
 \grg f8. [ e16 ] \grg f16 [ A8. ] \hdble e8. [ c16 ] \dbld d8 [ b8 ] 
 \grg a2 \wbirl a4. \bar "|.-.|" 
 \break 

    % Part 4
 e8
 \dblA A4 \taor a8 [ e8 ] A8. [ f16 ] \grg a16 [ A8. ] 
 \hdblf f8. [ \grg a16 ] \grg f16 [ A8. ] \hdble e4~ e8 [ f8 ] 
 \grg f8. [ e16 ] \grg f16 [ A8. ] \hdble e8. [ c16 ] \grg a8 [ \grd c8 ] 
 \dble e8. [ d16 ] \dbld d16 [ c8. ] \grg b4~ b8 [ e8 ]  \break

 \birl a8. [ b16 ] \grg c8 [ d8 ] \dbld d8 [ c8~ ] c8 [ e8 ] 
 \grg f8. [ e16 ] \grg d8 [ A8 ] \hdble e4~ e8 [ f8 ] 
 \grg f8. [ e16 ] \grg f16 [ A8. ] \hdble e8. [ c16 ] \dbld d8 [ b8 ] 
 \grg a2 \wbirl a4 \bar "|." 
 \break 


    } %end staff
    
  \header {
    meter = "March"
    piece = "Jimmie Findlater"
    composer = "Gordon K. Speirs"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
