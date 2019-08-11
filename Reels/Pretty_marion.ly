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
\include "../Includes/BP_format14.ily" 	

%to here..........................................................
%}

\score {

    \new Staff  {
    \time 4/4	 
    \tempo 4 = 80 
    \hideKeySignature
    \bar ".|"
    		
    % Part 1
    \dblc c4 \gre a8. [ \grd c16 ] \grg e8. [ f16 \dble e8. d16 ] 
    \grg c16 [ \grd a8. \grg c16 e8. ] \grg f8. [ b16 \grG b8. A16 ] 
    \hdblc c4 \gre a8. [ \grd c16 ] \grg e8. [ f16 \grg e8. c16 ] 
    \dble e8. [ a16 \grg e8. c16 ] \dble e4 \birl a8. [ A16 ]  
    \break

    \hdblc c4 \gre a8. [ \grd c16 ] \grg e8. [ f16 \dble e8. d16 ] 
    \grg c16 [ e8. A8. e16 ] \grg f8. [ b16 \grG b8. d16 ] 
    \dblc c4 \gre a8. [ \grd c16 ] \grg e8. [ f16 \grg e8. c16 ] 
    \gbirl a4 \grg e8. [ c16 ] \dble e4 \birl a8. [ A16 ] \bar "|.-.|" 
    \break 

    % Part 2
    e8. [ a16 \dble e8. c16 ] \gbirl a4 A8. [ f16 ] 
    \grg e8. [ a16 \dble e8. c16 ] \grg f8. [ b16 \grG b8. A16 ] 
    e8. [ a16 \dble e8. c16 ] \gbirl a4 A8. [ e16 ] 
    \grg f16 [ A8. e8. c16 ] \dble e4 \birl a8. [ A16 ]  
    \break

    e8. [ a16 \dble e8. c16 ] \gbirl a4 A8. [ f16 ] 
    \grg e8. [ a16 \dble e8. c16 ] \grg f8. [ b16 \grG b8. d16 ] 
    \dblc c8. [ b16 \grg c16 \grd a8. ] \grg c16 [ e8. A8. e16 ] 
    \grg f16 [ A8. e8. c16 ] \dble e4 \birl a8. [ A16 ] \bar "|.-.|" 
    \break 

    % Part 3
    \hdblf f4 \grg e8. [ c16 ] \grg e8. [ f16 A8. e16 ] 
    \dblf f4 \grg e8. [ c16 ] \grg f8. [ b16 \grG b8. A16 ] 
    \hdblf f4 \grg e8. [ c16 ] \grg e8. [ f16 A8. e16 ] 
    \dblf f4 \grg e8. [ c16 ] \dble e4 \birl a8. [ A16 ]  
    \break

    \hdblf f4 \grg e8. [ c16 ] \grg e8. [ f16 A8. e16 ] 
    \grg f16 [ A8. c16 e8. ] \grg f8. [ b16 \grG b8. g16 ] 
    \hdblf f8. [ e16 \grg f8. d16 ] \grg c16 [ e8. A8. e16 ] 
    \grg f16 [ A8. e8. c16 ] \dble e4 \birl a8. [ A16 ] \bar "|.-.|" 
    \break 

    % Part 4
    \birl a4 \grg e8. [ c16 ] \gbirl a4 A8. [ c16 ] 
    \gbirl a4 \dble e8. [ c16 ] \grg f8. [ b16 ] \grG b8. [ A16 ] 
    \birl a4 \grg e8. [ c16 ] \gbirl a4 A8. [ e16 ] 
    \grg f16 [ A8. e8. c16 ] \dble e4 \birl a8. [ A16 ]  
    \break

    \birl a4 \grg e8. [ c16 ] \gbirl a4 A8. [ c16 ] 
    \gbirl a4 \dble e8. [ c16 ] \grg f8. [ b16 ] \grG b8. [ d16 ] 
    \dblc c8. [ b16 \grg c16 \grd a8. ] \grg c16 [ e8. A8. e16 ] 
    \grg f16 [ A8. e8. c16 ] \dble e4 \birl a8. [ A16 ] \bar "|.-.|"
    \break 
%\pageBreak
    % Part 5
    \hdblf f4 \grg e8. [ c16 ] \grg e8. [ f16 ] A8. [ e16 ] 
    \grg f16 [ A8. c16 e8. ] \grg f8. [ b16 ] \grG b8. [ A16 ] 
    \hdblf f4 \grg e8. [ c16 ] \grg e8. [ f16 ] A8. [ e16 ] 
    \grg f16 [ A8. e8. c16 ] \dble e4 \birl a8. [ A16 ]  
    \break

    \hdblf f4 \grg e8. [ c16 ] \grg e8. [ f16 ] A8. [ e16 ] 
    \grg f16 [ A8. c16 e8. ] \grg f8. [ b16 ] \grG b8. [ g16 ] 
    \hdblf f8. [ e16 ] \grg f8. [ d16 ] \grg c16 [ e8. A8. e16 ] 
    \grg f16 [ A8. e8. c16 ] \dble e4 \birl a8. [ f16 ] \bar "|.-.|"
    \break 

    % Part 6
    \grg e16 [ A8. \hslurc c8. A16 ] \hdble e4 \birl a8. [ f16 ] 
    \grg e16 [ A8. \hslurc c8. A16 ] \hdblf f8. [ b16 \grG b8. f16 ] 
    \grg e16 [ A8. \hslurc c8. A16 ] e8. [ f16 A8. e16 ] 
    \grg f16 [ A8. e8. c16 ] \dble e4 \birl a8. [ f16 ]  
    \break

    \grg e16 [ A8. \hslurc c8. A16 ] \hdble e4 \birl a8. [ f16 ] 
    \grg e16 [ A8. \hslurc c8. A16 ] \hdblf f8. [ b16 \grG b8. f16 ] 
    \grg e16 [ A8. \hslurc c8. A16 ] e16 [ A8. \hslurc c8. A16 ] 
    f16 [ A8. e8. c16 ] \dble e4 \birl a8. [ A16 ] \bar "|.-.|" 
    \break 

    % Part 7
    c16 [ \grd a8. \grg e8. c16 ] \dble e4 \birl a8. [ A16 ] 
    c16 [ \grd a8. \dble e8. c16 ] \grg f8. [ b16 \grG b8. A16 ] 
    c16 [ \grd a8. \grg e8. c16 ] \gbirl a4 \dble e8. [ c16 ] 
    \grg f8. [ d16 ] \dble e8. [ c16 ] \grg f8. [ b16 ] \grG b8. [ A16 ]  
    \break

    c16 [ \grd a8. \grg e8. c16 ] \dble e4 \birl a8. [ A16 ] 
    c16 [ \grd a8. \dble e8. c16 ] \grg f8. [ b16 \grG b8. d16 ] 
    \dblc c8. [ b16 \grg c16 \grd a8. ] \grg c16 [ e8. A8. e16 ] 
    \grg f16 [ A8. e8. c16 ] \dble e4 \birl a8. [ A16 ] \bar "|.-.|" 
    \break 

    % Part 8
    \hdblf f8. [ e16 \grg c8. d16 ] \dble e8. [ c16 A8. e16 ] 
    \grg f16 [ A8. c16 e8. ] \grg f8. [ b16 \grG b8. A16 ] 
    \hdblf f8. [ e16 \grg c8. d16 ] \dble e8. [ c16 A8. e16 ] 
    \grg f16 [ A8. e8. c16 ] \dble e4 \birl a8. [ A16 ]  
    \break

    \hdblf f8. [ e16 \grg c8. d16 ] \dble e8. [ c16 A8. e16 ] 
    \grg f16 [ A8. c16 e8. ] \grg f8. [ b16 \grG b8. g16 ] 
    \hdblf f8. [ e16 \grg f8. d16 ] \grg c16 [ e8. A8. e16 ] 
    \grg f16 [ A8. e8. c16 ] \dble e4 \birl a4 \bar "|." 
    \break 

    } %end staff
    
  \header {
    meter = "Reel"
    piece = "Pretty Marion"
    composer = "Composer"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
