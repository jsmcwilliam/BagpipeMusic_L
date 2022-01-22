\version "2.22.1"

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
    \time 2/4	    
    \tempo 4 = 80   
    \hideKeySignature

    \bar ".|:"
    		
    % Part 1
    \repeat volta 2 {
    	\partial 8 {\dble e16. a32} 
    	\dblc c8 [ \dble e8 ] \gbirl a8 [ \dblA A8 ] 
    	\grg A16. [ g32 \hdblf f16. e32 ] \dblA A8 [ \birl a8 ] 
    	\dblc c8 [ \dble e8 ] \birl a16. [ A32 e16. c32 ] 
    	\thrwd d8 [ \grg b8 ] \taor b8 [ \dble e16. a32 ]  
    	\break

    	\dblc c8 [ \dble e8 ] \gbirl a8 [ \dblA A8 ] 
    	\grg A16. [ g32 \hdblf f16. e32 ] \dblA A8 [ \birl a8 ] 
    	\grg a16. [ \grd c32 \dble e16. c32 ] \grg b16. [ c32 \grg d32 e16. ] 
    	\dblc c8 [ \gre a8 ] \wbirl a8 %\bar ":|:" 
    	\break   	   
    } %end repeat

    % Part 2
    \repeat volta 2 {
    	\grg c32 [ d16. ] 
    	\dblc c8 [ e8 ] \dble e8 [ \grg c32 \grd a16. ] 
    	\thrwd d8 [ f8 ] \dblf f8 [ \grg e16. d32 ] 
    	\dblc c8 [ \dble e8 ] \grg f16. [ e32 \grg c32 \grd a16. ] 
    	\thrwd d8 [ \grg b8 ] \taor b8 [ \grg c32 d16. ]  
    	\break

    	\dblc c8 [ e8 ] \dble e8 [ \grg c32 \grd a16. ] 
    	\thrwd d8 [ f8 ] \dblf f8 [ \grg e16. d32 ] 
    	\grg c8 [ \grip e16. f32 ] \grg b16. [ c32 \grg d32 e16. ] 
    	\dblc c8 [ \gre a8 ] \wbirl a8 %\bar ":|:" 
    	\break	
    } %end repeat

    % Part 3
    \repeat volta 2 {
    	\dble e16. [ a32 ] 
    	\dblc c8 [ \dble e8 ] \gbirl a8 [ \dblA A8 ] 
    	\grg A16. [ g32 \hdblf f16. e32 ] \dblA A8 [ \birl a8 ] 
    	\dblA A8 [ \birl a8 ] \grg c16. [ d32 \dble e16. c32 ] 
    	\grg f16. [ e32 \dbld d16. c32 ] \grg b16. [ c32 \dbld d16. b32 ]  
    	\break

    	\grg c16. [ d32 \dble e16. c32 ] \grg d16. [ e32 \grg f16. d32 ] 
    	\grg e16. [ f32 g16. e32 ] \dblA A8 [ \birl a8 ] 
    	\grg a16. [ \grd c32 \dble e16. c32 ] \grg b16. [ c32 \grg d32 e16. ] 
    	\dblc c8 [ \gre a8 ] \wbirl a8 %\bar ":|:" 
    	\break	
    } %end repeat
    
    % Part 4
    \repeat volta 2 {
    	\dble e16. [ d32 ] 
    	\grg c8 [ \grip e16. f32 ] \grg e32 [ A16. e16. c32 ] 
    	\thrwd d16. [ e32 \grg f32 A16. ] f32 [ A16. \hdblf f16. d32 ] 
    	\grg c8 [ \grip e16. f32 ] \grg e32 [ A16. e16. c32 ] 
    	\grg f16. [ e32 \dbld d16. c32 ] \grg b16. [ c32 \dbld d16. b32 ]  
    	\break

    	\grg c16. [ d32 \dble e16. c32 ] \grg d16. [ e32 \grg f16. d32 ] 
    	\grg e16. [ f32 g16. e32 ] \dblA A8 [ \birl a8 ] 
    	\grg a16. [ \grd c32 e16. c32 ] \grg b16. [ c32 \grg d32 e16. ] 
    	\dblc c8 [ \gre a8 ] \wbirl a8 %\bar ":|:" 
    	\break	
    } %end repeat
    
    % Part 5
    \repeat volta 2 {
    	\dble e16. [ a32 ] 
    	\dblc c8 [ \dble e8 ] \gra e8 [ \dblA A8 ] 
    	\hdblc c8 [ \dble e8 ] \gra e8 [ \dblA A8 ] 
    	\hdblc c8 [ \dble e8 ] \birl a16. [ A32 e16. c32 ] 
    	\thrwd d8 [ \grg b8 ] \taor b8 [ \dble e16. a32 ]  
    	\break

    	\dblc c8 [ \dble e8 ] \gra e8 [ \dblA A8 ] 
    	\hdblc c8 [ \dble e8 ] \dblA A8. [ e16 ] 
    	\grg f16. [ e32 \dbld d16. c32 ] \grg b16. [ c32 \grg d32 e16. ] 
    	\dblc c8 [ \gre a8 ] \wbirl a8 
    	\bar ":..:" \break	
    } %end repeat

    % Part 6
    \set Score.repeatCommands = #'(start-repeat)
    	\grg c16. [ d32 ] 
    	\dble e16. [ c32 \grg a16. \grd c32 ] A16. [ c32 \grg a16. \grd c32 ] 
    	\dble e16. [ c32 \grg a16. \grd c32 ] A16. [ c32 \grg a16. \grd c32 ] 
    	\grg f16. [ d32 c16. d32 ] \dble e16. [ c32 A16. c32 ] 
    	\thrwd d8 [ \grg b8 ] \taor b8 [ \grg c16. d32 ]  \bar "|"
    	\break
    
    	\set Score.repeatCommands = #'((volta "1."))
    	\dble e16. [ c32 \grg a16. \grd c32 ] A16. [ c32 \grg a16. \grd c32 ] 
    	\dble e16. [ c32 \grg a16. \grd c32 ] A16. [ c32 \grg a16. \grd c32 ] 
    	\grg f16. [ e32 \dbld d16. c32 ] \grg b16. [ c32 \grg d32 e16. ] 
    	\set Score.measureLength = #(ly:make-moment 3/8)
    	\dblc c8 [ \gre a8 ] \wbirl a8 \bar "|"
    	\set Score.repeatCommands = #'((volta #f))
    	\bar ":|." 
    \set Score.repeatCommands = #'(end-repeat)
    \break 
   
    
    	\set Score.measureLength = #(ly:make-moment 2/4)
    	\set Score.repeatCommands = #'((volta "2."))
    	\dble e8 [ \grg a16. \grd c32 ] \dblA A8 [ a16. \grd c32 ] \bar "|"
    	\grg f16. [ e32 \grg a16. \grd c32 ] \dblA A8 [ a16. \grd c32 ] 
    	\grg f16. [ e32 \dbld d16. c32 ] \grg b16. [ c32 \grg d32 e16. ] 
    	\dblc c8 [ \gre a8 ] \wbirl a8 
    	\set Score.repeatCommands = #'((volta #f))
    	\bar "|." 
    \break 		

    } %end staff
    
  \header {
    meter = "March"
    piece = "The Highland Wedding"
    composer = "Angus MacKay"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score

