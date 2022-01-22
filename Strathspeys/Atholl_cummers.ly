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
    \time 4/4	    
    \tempo 4 = 80   
    \hideKeySignature
    \bar ".|"
    		
    % Part 1
 \grg a4 \taor a8. [ \grd b16 ] \grg a8. [ \grd c16 ] \dble e8. [ c16 ] 
 \grg a4 \taor a8. [ \grd b16 ] \grg G8. [ b16 ] \thrwd d8. [ b16 ] 
 \grg a4 \taor a8. [ \grd b16 ] \grg a8. [ \grd b16 ] \dble e8. [ d16 ] 
 \grg e16 [ f16 g8 ] \thrwd d8. [ g16 ] \hdblb b16 [ \gre G8. ] \Gthrwd d8. [ b16 ]  
 \break

 \grg a4 \taor a8. [ \grd b16 ] \grg a8. [ \grd c16 ] \dble e8. [ c16 ] 
 \gbirl a4 \dblc c16 [ \gre a8. ] \dblb b16 [ \gre G8. ] \Gthrwd d8. [ b16 ] 
 \grg a4 \taor a8. [ \grd b16 ] \grg a8. [ \grd b16 ] \dble e8. [ d16 ] 
 \grg e16 [ f16 g8 ] \thrwd d8. [ g16 ] \hdblb b16 [ \gre G8. ] \Gthrwd d8. [ b16 ] 
 \bar "|.-.|" \break 

    % Part 2
 \dble e8. [ a16 ] \dble e8. [ d16 ] \dble e8. [ a16 ] \grg e16 [ A8. ] 
 \hdble e8. [ a16 ] \dble e8. [ d16 ] \dblb b16 [ \gre G8. ] \Gthrwd d8. [ b16 ] 
 \dble e8. [ a16 ] \dble e8. [ d16 ] \grg a8. [ \grd b16 ] \dble e8. [ d16 ] 
 \grg e16 [ f16 g8 ] \thrwd d8. [ g16 ] \hdblb b16 [ \gre G8. ] \Gthrwd d8. [ b16 ]  
 \break

 \dble e8. [ a16 ] \dble e8. [ d16 ] \dble e8. [ a16 ] \grg e16 [ A8. ] 
 \birl a4 \dble e8. [ d16 ] \dblb b16 [ \gre G8. ] \Gthrwd d8. [ b16 ] 
 \dble e8. [ a16 ] \dble e8. [ b16 ] \thrwd d8. [ e16 ] \grg f16 [ g16 A8 ] 
 g16 [ f16 e8 ] \dblg g8. [ d16 ] \dblb b16 [ \gre G8. ] \Gthrwd d8. [ c16 ] 
 \bar "|.-.|" \break 
 
    % Part 3
 \grg b4 \taor b8. [ \grd c16 ] \grg b8. [ \grd c16 ] \dblf f8. [ e16 ] 
 \grg b4 \taor b8. [ \grd c16 ] \grg a8. [ \grd c16 ] \dble e8. [ c16 ] 
 \grg b4 \taor b8. [ \grd c16 ] \grg b8. [ \grd c16 ] \dblf f8. [ e16 ] 
 \grg f16 [ g16 A8 ] \hdble e8. [ A16 ] \hdblc c16 [ \gre a8. ] \dble e8. [ c16 ]  
 \break

 \grg b4 \taor b8. [ \grd c16 ] \grg b8. [ \grd c16 ] \dblf f8. [ e16 ] 
 \grg f16 [ b16 \grG b8 ] \dblc c8. [ b16 ] \grg a8. [ \grd c16 ] \dble e8. [ c16 ] 
 \darodo b4 \dblc c16 [ \gre a8. ] \grg b8. [ \grd c16 ] \dblf f8. [ e16 ] 
 \grg f16 [ g16 A8 ] \hdble e8. [ A16 ] \hdblc c16 [ \gre a8. ] \dble e8. [ c16 ] 
 \bar "|.-.|" \break 
 
    % Part 4
 \dblf f8. [ b16 ] \dblf f8. [ e16 ] \dblf f8. [ b16 ] \grg f16 [ A8. ] 
 \hdblf f8. [ b16 ] \dblf f8. [ e16 ] \dblc c16 [ \gre a8. ] \dble e8. [ c16 ] 
 \dblf f8. [ b16 ] \dblf f8. [ e16 ] \grg f16 [ b16 \grG b8 ] \dblf f8. [ e16 ] 
 \grg f16 [ g16 A8 ] \hdble e8. [ A16 ] \hdblc c16 [ \gre a8. ] \dble e8. [ c16 ]  
 \break

 \dblf f8. [ b16 ] \dblf f8. [ e16 ] \dblf f8. [ b16 ] \grg f16 [ A8. ] 
 \catchb b4 \dblf f8. [ e16 ] \dblc c16 [ \gre a8. ] \dble e8. [ c16 ] 
 \dblf f8. [ b16 ] \dblf f8. [ e16 ] \thrwd d8. [ e16 ] \grg f16 [ g16 A8 ] 
 g16 [ f16 e8 ] \grg f16 [ g16 A8 ] \hdblb b16 [ \gre G8. ] \dblb b16 [ A8. ] 
 \bar "|.-.|:" \break

    % Part 5
 \set Score.repeatCommands = #'(start-repeat)
 \birl a4 \dble e8. [ d16 ] \dble e4 \birl a16 [ A8. ] 
 \birl a4 \dble e8. [ d16 ] \dblb b16 [ \gre G8. ] \Gthrwd d8. [ b16 ] 
 \gbirl a4 \dble e8. [ d16 ] \dblc c16 [ \gre a8. ] \dble e8. [ d16 ]
 \set Score.measureLength = #(ly:make-moment 5/4)
 \grg e16 [ f16 g8 ] \thrwd d8. [ g16 ] \hdblb b16 [ \gre G8. ] 
 \set Score.repeatCommands = #'((volta "1")) 
  \Gthrwd d8. [ b16 ] 
 \once \hide Score.BarLine
 \once \hide Score.SpanBar
 \set Score.repeatCommands = #'((volta #f)(volta "2.") end-repeat)
  \Gthrwd d8. [ c16 ] 
 \set Score.repeatCommands = #'((volta #f)) 
 \bar ":|.-.|"
 \break
  \set Score.measureLength = #(ly:make-moment 4/4) 
 
    % Part 6
 \dblb b16 [ A8. ] \hdblf f8. [ e16 ] \dblf f8. [ \grg b16 ] \grG b8. [ \grd c16 ] 
 \dblb b16 [ A8. ] \hdblf f8. [ e16 ] \dblc c16 [ \gre a8. ] \dble e8. [ c16 ] 
 \dblb b16 [ A8. ] \hdblf f8. [ e16 ] \grg f16 [ b16 \grG b8 ] \dblf f8. [ e16 ] 
 \grg f16 [ g16 A8 ] \hdble e8. [ A16 ] \hdblc c16 [ \gre a8. ] \dble e8. [ c16 ]  
 \break

 \dblb b16 [ A8. ] \hdblf f8. [ e16 ] \dblf f8. [ \grg b16 ] \grG b8. [ \grd c16 ] 
 \dblb b16 [ A8. ] \hdblf f8. [ e16 ] \dblc c16 [ \gre a8. ] \dble e8. [ c16 ] 
 \dblb b16 [ A8. ] \hdblf f8. [ e16 ] \thrwd d8. [ e16 ] \grg f16 [ g16 A8 ] 
 g16 [ f16 e8 ] \grg f16 [ g16 A8 ] \hdblb b16 [ \gre G8. ] \dblb b16 [ A8. ] 
 \bar "|." \break 

    } %end staff
    
  \header {
    meter = "Strathspey"
    piece = "Atholl Cummers"
    composer = "Trad."
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
