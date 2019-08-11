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
    \time 2/4	    
    \tempo 4 = 80   
    \hideKeySignature

    \bar ".|:"
    		
    % Part 1
    \set Score.repeatCommands = #'(start-repeat)
    \partial 8 e8
    \grg a16. [ e32 \grg c32 e16. ] \grg a16. [ e32 \grg c32 e16. ]  
    \dble e16. [ a32 f16. a32 ] \dble e8 [ \dbld d16. b32 ]  
    \grg G16. [ d32 \grg b32 d16. ] \grg G16. [ d32 \grg b32 d16. ]  
    \grg G16. [ a32 \grg b16. c32 ] \dbld d16. [ b32 \dble e16. c32 ]   
    \break

    \set Score.measureLength = #(ly:make-moment 3/4)
    \grg a16. [ e32 \grg c32 e16. ] 
    \set Score.repeatCommands = #'((volta "1."))
    \grg a16. [ e32 \grg c32 e16. ]
    \once \hide Score.BarLine
    \once \hide Score.SpanBar
    \set Score.repeatCommands = #'((volta #f)(volta "2.") end-repeat)
    \grg a16. [ e32 c16. d32 ] 
    \set Score.repeatCommands = #'((volta #f))    
    \set Score.measureLength = #(ly:make-moment 2/4)
    \dble e16. [ a32 f16. a32 ] \dble e8 [ \dbld d16. c32 ]  
    \grg b32 [ d16. G16. \grd b32 ] \grA g16. [ f32 \grg e16. d32 ]  
    \set Score.measureLength = #(ly:make-moment 3/8)
    \dblc c8 [ \gre a8 ] \wbirl a8 
    \set Score.repeatCommands = #'(end-repeat)
    \break
    
    % Part 2
    \repeat volta 2 {
    	\set Score.measureLength = #(ly:make-moment 1/8)
    	\dble e8  
    	\set Score.measureLength = #(ly:make-moment 2/4)
    	\grg c32 [ e16. \dblA A8 ] c32 [ e16. \dblA A8 ]  
    	c32 [ e16. A16. f32 ] \dble e8 [ \dbld d16. c32 ]  
    	\gcatchb b8 [ \dblg g8 ] \tcatchb b8 [ \dblg g8 ]  
    	\tcatchb b8 [ \dblg g8 ] A16. [ g32 \grA f16. d32 ]   
    	\break

    	\grg c32 [ e16. \dblA A8 ] g32 [ \grA e16. \dblA A8 ]  
    	g16. [ e32 \grg f16. d32 ] \dble e8 [ \dbld d16. c32 ]  
    	\grg b32 [ d16. \gre G16. \grd b32 ] \grA g16. [ f32 \grg e16. d32 ]  
    	\dblc c8 [ \gre a8 ] \wbirl a8 
    	\break	
    } %end repeat
    
    % Part 3 
    \repeat volta 2 {
    	\dble e8  
    	\grg a16. [ \grd a32 a16. \grd c32 ] \grg a16. [ \grd a32 a16. \grd c32 ]  
    	\grg a16. [ \grd a32 a16. \grd c32 ] \dble e8 [ \dbld d16. b32 ]  
    	\grg G16. [ \grd G32 G16. \grd b32 ] \grg G16. [ \grd G32 G16. \grd b32 ]  
    	\grg G16. [ \grd G32 G16. b32 ] \thrwd d16. [ b32 \dble e16. c32 ]   
    	\break

    	\grg a8 [ \taor a16. d32 ] \grg c32 [ e16. \grg a16. \grd c32 ]  
    	\dble e16. [ a32 \grg f16. a32 ] \dble e8 [ \dbld d16. c32 ]  
    	\grg b32 [ d16. \gre G16. \grd b32 ] \grA g16. [ f32 \grg e16. d32 ]  
    	\dblc c8 [ \gre a8 ] \wbirl a8 
 \break
	
    } %end repeat
    
    % Part 4
    \repeat volta 2 {
    	\grg e16. [ d32 ]  
    	\grg c32 [ e16. A16. e32 ] \dblg g16. [ e32 \dblA A8 ]  
    	c32 [ e16. A16. g32 ] \grA f16. [ e32 \grg d16. c32 ]  
    	\gcatchb b8 [ \dblg g16. b32 ] A16. [ b32 \dblg g8 ]  
    	\tcatchb b8 [ \dblg g8 ] A16. [ g32 \grA f16. d32 ]   
    	\break

    	\grg c32 [ e16. \dblA A8 ] g32 [ \grA e16. \dblA A8 ]  
    	g16. [ e32 \grg f16. d32 ] \dble e8 [ \dbld d16. c32 ]  
    	\grg b32 [ d16. \gre G16. \grd b32 ] \grA g16. [ f32 \grg e16. d32 ]  
    	\dblc c8 [ \gre a8 ] \wbirl a8 %\bar ":|:" 
    	\break
	
    } %end repeat
%\pageBreak
    % Part 5
    \repeat volta 2 {
 e8  
 \dble e16. [ a32 \grg c32 e16. ] \dble e16. [ a32 \grg c32 \grd a16. ]  
 \dble e16. [ a32 \grg c32 e16. ] \grg f16. [ e32 \grg d16. c32 ]  
 \dbld d16. [ G32 \grg b32 d16. ] \dbld d16. [ G32 \grg b32 \grd G16. ]  
 \dbld d16. [ G32 \grg b32 e16. ] \thrwd d8 [ \dblc c16. b32 ]   
 \break

 \dble e16. [ a32 \grg c32 e16. ] \dble e16. [ a32 \grg c32 \grd a16. ]  
 \dble e16. [ a32 \grg c32 e16. ] \grg f16. [ e32 \grg d16. c32 ]  
 \grg b32 [ d16. \gre G16. \grd b32 ] \grA g16. [ f32 \grg e16. d32 ]  
 \dblc c8 [ \gre a8 ] \wbirl a8 %\bar ":|:" 
 \break
	
    } %end repeat
    
    % Part 6
    \repeat volta 2 {
 e8  
 A16. [ e32 \grg c32 e16. ] \dble e16. [ a32 \grg c32 \grd a16. ]  
 A16. [ e32 \grg c32 e16. ] \grg f16. [ e32 \grg d16. c32 ]  
 \grA g16. [ d32 \grg b32 d16. ] \dbld d16. [ G32 \grg b32 \grd G16. ]  
 \grA g16. [ d32 \grg b32 e16. ] \thrwd d8 [ \dblc c16. b32 ]   
 \break

 A16. [ e32 \grg c32 e16. ] \dble e16. [ a32 \grg c32 \grd a16. ]  
 \once \override Score.VoltaBracket.shorten-pair = #'(0 . 0.3)
 \set Score.repeatCommands = #'((volta "1."))  
 A16. [ e32 \grg c32 e16. ] \grg f16. [ e32 \grg d16. c32 ] 
 \once \override Score.VoltaBracket.shorten-pair = #'(0.5 . 0)
 \set Score.repeatCommands = #'((volta #f) (volta "2."))  
 A8 [ \grip A16. g32 ] \grA f16. [ e32 \grg d16. c32 ] 
 \set Score.repeatCommands = #'((volta #f))    
 \grg b32 [ d16. G16. \grd b32 ] \grA g16. [ f32 \grg e16. d32 ]  
 \dblc c8 [ \gre a8 ] \wbirl a8 
 \break	
    } %end repeat
    
    } %end staff

  \header {
    meter = "March"
    piece = "The Balmoral Highlanders"
    composer = "A. MacKay"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
