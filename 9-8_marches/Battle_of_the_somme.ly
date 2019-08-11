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
    \time 9/8	   
    \tempo 4 = 80   
    \hideKeySignature
    \bar ".|:"
    		
    % Part 1
    \repeat volta 2 {
 \partial 8 a8 
 \grg f16 [ A8. f8 ] \thrwd d4. \dbld d8. [ c16 d8 ] 
 \grg e8. [ d16 \gre G8 ] \dblb b4. \grG a4. 
 \grg b16 [ \grd G8. \grd b8 ] \grG a4. \thrwd d4. 
 \grg f16 [ A8. f8 ] \dble e4. \gra e4 a8  \break

 \grg f16 [ A8. f8 ] \thrwd d4. \dbld d8. [ c16 d8 ] 
 \grg e8. [ d16 \gre G8 ] \dblb b4. \grG a4. 
 \grg b16 [ \grd G8. \grd b8 ] \grG a4. \grip f4. 
 \set Score.measureLength = #(ly:make-moment 11/8)
 \grg e8. [ f16 \grg e8 ] \thrwd d4. 
 \set Score.repeatCommands = #'((volta "1"))  \wslurd d4 
 \once \hide Score.BarLine
 \once \hide Score.SpanBar
 \set Score.repeatCommands = #'((volta #f) (volta "2.") end-repeat) \wslurd d4.  
 \set Score.repeatCommands = #'((volta #f)) 
 \break
    } % end repeat

    % Part 2
    \repeat volta 2 {
    \set Score.measureLength = #(ly:make-moment 9/8)
 \dbld d8. [ c16 d8 ] \dble e4. \wbirl a4. 
 \grg e8. [ f16 g8 ] \grA f16 [ A8.~ A8 ] \thrwd d4. 
 \dblf f8. [ e16 f8 ] \dblg g4. \wbirl a4. 
 \grg f16 [ A8. f8 ] \dble e4. \gra e4 a8  \break

 f16 [ A8. f8 ] \thrwd d4. \dbld d8. [ c16 d8 ] 
 \grg e8. [ d16 \gre G8 ] \dblb b4. \grG a4. 
 \grg b16 [ \grd G8. \grd b8 ] \grG a4. \grip f4. 
 \grg e8. [ f16 \grg e8 ] \thrwd d4. \wslurd d4. 
 \break
     } % end repeat
 
    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "March"
    piece = "Battle of the Somme"
    composer = ""
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
