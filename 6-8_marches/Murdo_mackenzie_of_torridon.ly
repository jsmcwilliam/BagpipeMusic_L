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
    \time 6/8	    
    \tempo 4 = 80  
    \hideKeySignature
    \bar ".|:"
    		
    % Part 1
    \repeat volta 2 {
	\partial 8 e8
	\grg a8. [ e16 \gra e8 ] \dble e4.  
	\grg a8. [ e16 \gra e8 ] \dbld d8. [ b16 g8 ]  
	\grA G8. [ b16 d8 ] \dbld d8. [ b16 d8 ]  
	\grg e16 [ g8. \grA G8 ] \dblb b8. [ \grg a16 \grd G8 ]   
	%\break
 
	\grg a8. [ e16 \gra e8 ] \dble e4. 
	\grg a8. [ e16 \gra e8 ] \dbld d8. [ b16 A8 ] 
	\grf g8. [ f16 \grg e8 ] \thrwd d8. [ \grg e16 g8 ] 
	\grA e8. [ d16 b8 ] \grG a4 \bar ":..:" 
	\break	
    } % end repeat
       
    % Part 2
      \set Score.repeatCommands = #'(start-repeat)
      \set Score.measureLength = #(ly:make-moment 1/8)
    	 \grd b8 
      \set Score.measureLength = #(ly:make-moment 6/8)
    	 \grg a8. [ A16 \grg A8 ] \grg A4. 
    	 a8. [ A16 \grg A8 ] \grf g8. [ e16 A8 ] 
    	 g8. [ f16 \grg e8 ] \thrwd d8. [ \grg e16 f8 ] 
    	 \dblg g8. [ G16 d8 ] \dblb b8. [ \grg a16 \grd G8 ]  

    	 \set Score.repeatCommands = #'((volta "1."))
    	 \grg a8. [ A16 \grg A8 ] \grg A4. 
    	 a8. [ A16 \grg A8 ] \grf g8. [ e16 A8 ] 
    	 g8. [ f16 \grg e8 ] \thrwd d8. [ \grg e16 g8 ] 
         \set Score.measureLength = #(ly:make-moment 5/8)
    	 \grA e8. [ d16 b8 ] \grG a4
    	 \set Score.repeatCommands = #'((volta #f) (volta "2. --2,4") end-repeat)       
    	 \break    	    
    
         \set Score.measureLength = #(ly:make-moment 6/8)
         \dble e4. \birl a4 e8
         \grg a8. b16 d8 \dble e4 A8
         \grf g8. f16 \grg e8 \thrwd d8. \grg e16 g8
         \set Score.measureLength = #(ly:make-moment 5/8)
         \grA e8. d16 b8 \grG a4 \bar "|."
         \set Score.repeatCommands = #'((volta #f)) 

         \override Score.BarLine.break-visibility = #end-of-line-invisible
         \stopStaff 
        % Increasing the unfold counter will expand the staff-free space
        \repeat unfold 3 { s4 s4 }  
%      	\once \hide Score.BarLine
      	\break 	
      	\startStaff  % Resume bar count and show staff lines again  
    
    % Part 3
    \repeat volta 2 {
    	 \set Score.measureLength = #(ly:make-moment 1/8)
    	 e8 
    	 \set Score.measureLength = #(ly:make-moment 6/8)
    	 \gbirl a4. \dble e4. 
    	 \birl a4 e8 \dbld d8. [ b16 g8 ] 
    	 \tdblb b4. \gre G4. 
    	 \grg e16 [ g8. G8 ] \dblb b8. [ \grg a16 \grd G8 ]  
    	 \revert Score.BarLine.break-visibility
    	 %\break
 
    	 \gbirl a4. \dble e4. 
    	 \birl a4 e8 \dbld d8. [ b16 A8 ] 
    	 \grf g8. [ f16 e8 ] \thrwd d8. [ \grg e16 g8 ] 
    	 \grA e8. [ d16 b8 ] \grG a4 %\bar ":|:" 
    	 \break    	       	    
    } %end repeat
    
    % Part 4
    \repeat volta 2 {
    	 b8 
    	 \grg a8. [ A16 a8 ] g8. [ \grA a16 A8 ] 
    	 a8. [ g16 \grA a8 ] A8. [ a16 A8 ] 
    	 \grf g8. [ f16 \grg e8 ] \thrwd d8. [ \grg e16 f8 ] 
    	 \dblg g8. [ G16 d8 ] \dblb b8. [ \grg a16 \grd G8 ]  
    	 %\break

    	 \set Score.repeatCommands = #'((volta "1."))
    	 \grg a8. [ A16 a8 ] g8. [ \grA a16 A8 ] 
    	 a8. [ g16 \grA a8 ] A8. [ a16 A8 ] 
    	 \grf g8. [ f16 \grg e8 ] \thrwd d8. [ \grg e16 g8 ] 
    	 \grA e8. [ d16 b8 ] \grG a4 %\bar ":|" 
    	 \set Score.repeatCommands = #'((volta #f))
    	 \break
    } %end repeat

    } %end staff
    
  \header {
    meter = "March"
    piece = "Murdo MacKenzie of Torridon"
    composer = "Bobby MacLeod"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score

