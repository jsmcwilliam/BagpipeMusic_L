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
    \quarterBeaming
    \bar ".|:"

    % Part 1
    \repeat volta 2 {
    \partial 8 e8 |
 \grg a8. [ b16 \grip c8 ] \grg c16 [ e8. \grg c8 ] |
 \dblb b4. \grG a4 \dble e8 |
 \grg a8. [ b16 \grip c8 ] \grg c16 [ e8. A8 ] |
 \hdblf f4. \dble e4 \dblg g8 | 

 A4 \grip A8 \hdblf f4 A8 |
 \hdble e8. [ c16 \grd a8 ] \dblb b4 \grd c8 |
 \grg a8. [ b16 \grip c8 ] \grg e8. [ f16 \grg c8 ] |
    \dblb b4. \grG a4 \bar ":..:" \break }

    % Part 2
     \set Score.repeatCommands = #'(start-repeat) 
 \dblg g8 |
 \dblA A4. \hdble e4. |
 \grg f16 [ A8. f8 ] \dble e4. |
 \grg a8. [ b16 \grip c8 ] \grg c16 [ e8. A8 ] |
 \hdblf f4. \dble e4 

     \set Score.repeatCommands = #'((volta "1."))
 \dblg g8 |
 \dblA A4. \hdble e4. |
 \grg f16 [ A8. f8 ] \dble e4. |
 \grg a8. [ b16 \grip c8 ] \grg e8. [ f16 \grg c8 ] |
 \dblb b4. \grG a4 
 \break 	
 
     \set Score.repeatCommands = #'((volta #f) (volta "2. --2,4") end-repeat)	 
 \dblA A8 |
 a8. [ \grd c16 e8 ] \grg e8. [ f16 g8 ] |
 A8. [ g16 f8 ] \dble e4. |
 \grg a8. [ b16 \grip c8 ] \grg e8. [ f16 \grg c8 ] |
 \dblb b4. \grG a4 
 \bar "|."
 \set Score.repeatCommands = #'((volta #f))

      \override Score.BarLine.break-visibility = #end-of-line-invisible
       \stopStaff 
        % Increasing the unfold counter will expand the staff-free space
       \repeat unfold 6 { s4 s4 }  
      \break
      \startStaff  % Resume bar count and show staff lines again  
 

    % Part 3
    \repeat volta 2 {
    b8 |
 \grg c16 [ \grd a8. \grd c8 ] \grg c16 [ e8. \grg c8 ] |
 \dblb b4. \grG a4 b8 |
 \grg c16 [ \grd a8. \grd c8 ] \grg c16 [ e8. A8 ] |
 \hdblf f4. \dble e4 \dblg g8 | 

 A4 \grip A8 \hdblf f4 A8 |
 \hdble e8. [ c16 \grd a8 ] \dblb b4 \grd c8 |
 \grg a8. [ b16 \grip c8 ] \grg e8. [ f16 \grg c8 ] |
 \dblb b4. \grG a4 
 \revert Score.BarLine.break-visibility
 \bar ":..:" \break }

    % Part 4
    	\set Score.repeatCommands = #'(start-repeat)
 \dblg g8 |
 A4 \grip A8 \hdble e4 A8 |
 \hdblf f8. [ e16 \grg c8 ] \dble e4 \dblg g8 |
 A4 \grip A8 e8. [ \grg f16 A8 ] |
 \hdblf f4. \dble e4 

 	\set Score.repeatCommands = #'((volta "1."))
 \dblg g8 |
 A4 \grip A8 \hdble e4 A8 |
 \hdblf f8. [ e16 \grg c8 ] \dble e4 \dblA A8 |
 a8. [ b16 \grip c8 ] \grg e8. [ f16 \grg c8 ] |
 \dblb b4. \grG a4
 	\set Score.repeatCommands = #'((volta #f) end-repeat) 	
 

    } %end staff
    
  \header {
    meter = "March"
    piece = "Leaving Port AsKaig"
    composer = "PM Willie Ross"
    parttagline = "Copied by John S. McWilliam"

  }
  
  \layout {
  	  ragged-last = ##t
  	}
  	
%Generation of midi files can be removed here.

%  \midi {}

}%end score
