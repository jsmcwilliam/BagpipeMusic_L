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

#(allow-volta-hook "|") % enables volta hook outside repeat context

\score {

    \new Staff  {
    \time 2/2	  
    \tempo 4 = 80 
    \hideKeySignature
    \bar ".|:"
    		
    % Part 1
    \repeat volta 2 {
    	\partial 4 {
        \once \override Score.VoltaBracket.shorten-pair = #'(0 . 0.3)
    	\set Score.repeatCommands = #'((volta "2"))  \grg c8 [ d8 ] 
	} 
	
	\set Score.measureLength = #(ly:make-moment 5/4)
        \once \override Score.VoltaBracket.shorten-pair = #'(0.5 . 0)
        \dble e4 
        \once \hide Score.BarLine
        \set Score.repeatCommands = #'((volta #f)(volta "1.") end-repeat)
	\hdble e4 
        \once \hide Score.BarLine
	\set Score.repeatCommands = #'((volta #f) end-repeat)
	
	\gra e8 [ f8 ] \grg e8 [ a8 \grd c8 e8 ] 
 	\set Score.measureLength = #(ly:make-moment 4/4)
 	\grg f8 [ a8 \grg d8 f8 ] \dble e4 \grg c8 [ d8 ] 
 	\dble e4 \gra e8 [ f8 ] \grg e8 [ a8 \grd c8 e8 ] 
 	\grg c8 [ \grd a8 \grg d8 c8 ] \dblb b4 \grg c8 [ d8 ]  \break

 	\dble e4 \gra e8 [ f8 ] \grg e8 [ a8 \grd c8 e8 ] 
 	\grg f8 [ a8 \grg d8 f8 ] \dble e4 \grg c8 [ e8 ] 
 	\grg d8 [ c8 \grg c8 b8 ] \grg b8 [ f8 e8 b8 ] 
 	\dblc c4 \gre a4 \wbirl a4 \bar ":|.-.|:"
 	\break
    } %end repeat

    % Part 2
 \grg c8 [ e8 ] 
 \dblA A4 a8 [ A8 ] c8 [ A8 a8 A8 ] 
 f8 [ A8 d8 A8 ] \hdble e4 \grg c8 [ e8 ] 
 \dblA A4 a8 [ A8 ] c8 [ A8 a8 A8 ] 
 c8 [ \grd a8 \grg d8 c8 ] \dblb b4 \grg c8 [ e8 ]  \break

 \dblA A4 a8 [ A8 ] c8 [ A8 a8 A8 ] 
 f8 [ A8 d8 A8 ] \hdble e4 \grg c8 [ e8 ] 
 \grg d8 [ c8 \grg c8 b8 ] \grg b8 [ f8 \grg e8 b8 ] 
 \dblc c4 \gre a4 \wbirl a4 \bar "|.-.|" 
 \break 

    % Part 3
 \grg c8 [ e8 ] 
 \dblA A4 a8 [ A8 ] c8 [ A8 a8 A8 ] 
 f8 [ A8 d8 A8 ] \hdble e4 \grg c8 [ e8 ] 
 \dblA A4 a8 [ A8 ] c8 [ A8 a8 A8 ] 
 c8 [ \grd a8 \grg d8 c8 ] \dblb b4 \grg c8 [ d8 ]  \break

 \dble e4 \gra e8 [ f8 ] \grg e8 [ a8 \grg c8 e8 ] 
 \grg d8 [ \grc d8 A8 f8 ] \dble e4 \grg c8 [ e8 ] 
 \grg d8 [ c8 \grg c8 b8 ] \grg b8 [ f8 \grg e8 b8 ] 
 \dblc c4 \gre a4 \wbirl a4 \bar "|." \break 

    % Part 4

    } %end staff
    
  \header {
    meter = "Reel"
    piece = "Itchy Fingers"
    composer = "Rab Pinkman - Arr: R. Mathieson"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
