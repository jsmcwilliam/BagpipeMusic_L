\version "2.22.1"

% When ready to include in collection:	
%	1. Comment out top section with \Include file(s)
%					
%	2. \midi section if present.
%	3. Option to comment out "meter" from title e.g. if first tune following
%	   section title.
                                    
%Comment out from here
%{
\include "bagpipe.ly" %(default Lilypond formats)
\include "../Includes/BP_format_portrait.ily" 	

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
    	\partial 8 {\grg f16. [ e32 ]  }
    	\thrwd d8 [ \gre a8 ] \dblb b8 [ \gre a8 ]  
    	\thrwd d8 [ \gre a16. d32 ] \grg f4  
    	\dble e8 [\grA g16. e32 ] \dblc c8 [ \grg e16. c32 ]  
    	\grg a16. [ \grd c32 \grg e16. f32 ] \dblg g8 [ \grA f16. e32 ]  
    	\break
  
    	\thrwd d8 [ \gre a8 ] \dblb b8 [ \gre a8 ]  
    	\thrwd d8 [ \gre a16. d32 ] \grg f8 [ \grg e16. f32 ]  
    	\dblg g8 [ \grA e16. c32 ] \grg a16. [ \grd c32 \grg e16. g32 ]  
    	\tdblf f8 [ d8 ] \slurd d8 
        \bar ":|.-.|:"
     	\break	
    } %end repeat
    
    % Part 2
    \set Score.repeatCommands = #'(start-repeat)
    	\grg f16 [ g16 ]  
    	\dblA A8. [ g16 ] \grA f8 [ \thrwd d ]  
    	\gre a8 [ \thrwd d16. f32 ] \dblA A8 [ e16. f32 ]  
    	\dblg g8. [ e16 ] \dblc c8 [ \grg e16. c32 ]  
    	\grg a16. [ \grd c32 \grg e16. f32 ] \dblg g8 [ \grA f16. g32 ]   
    	\break

        \set Score.repeatCommands = #'((volta "1."))
   	\dblA A8. [ g16 ] \grA f8 [ \thrwd d ]  
    	\gre a8 [ \thrwd d16. f32 ] \dblA A8 [ e16. f32 ]  
    	\dblg g8 [ \grA e16. c32 ] \grg a16. [ \grd c32 \grg e16. g32 ]  
    	\set Score.measureLength = #(ly:make-moment 3/8)
    	\tdblf f8 [ d8 ] \slurd d8  
        \set Score.repeatCommands = #'((volta #f) (volta "2.") end-repeat)
    	\break
  
    	\set Score.measureLength = #(ly:make-moment 2/4)
    	A16. [ g32 \grA g16. f32 ] \grg f16. [ e32 \grg e16. d32 ]  
    	\grg d16. [ c32 \grg c32 \grd b16. ] \dblA A8 [ e16. f32 ]  
    	\dblg g8 [ \grA e16. c32 ] \grg a16. [ \grd c32 \grg e16. g32 ]  
    	\set Score.measureLength = #(ly:make-moment 3/8)
    	\tdblf f8 [ d ] \slurd d8 
    	\set Score.repeatCommands = #'((volta #f))
    	\bar "|." 
    	\break	

    } %end staff
    
  \header {
    meter = "Polka"
    piece = "Royal Scots Polka"
    composer = "P/M Willie Denholm"
    parttagline = "Copied by John S. McWilliam"
  }
% added layout options. See bagpipe_new.ly (\layout) for default settings

% \midi {} %Generation of midi files option.

}%end score
