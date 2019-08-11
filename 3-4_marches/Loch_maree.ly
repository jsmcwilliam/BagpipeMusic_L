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
    \time 3/4	    
    \tempo 4 = 80  
    \hideKeySignature
    \bar ".|:"
    		
    % Part 1
    	\set Score.repeatCommands = #'(start-repeat)
\dblc c8 [ e8 ] \grg a4 \taor a8. [ c16 ] 
 \gre a8 [ \grd c8 ] \dble e4 \gra e4 
 \dblc c8 [ e8 ] \dblf f4 \grg a8. [ d16 ] 
 \grg f8 [ A8 ] \hdblf f4 \grg e4 
 
 	\set Score.repeatCommands = #'((volta "1"))  
 \dblc c8 [ e8 ] \grg a4 \taor a8. [ c16 ] 
 \gre a8 [ \grd c8 ] \dble e4 \gra e4 
 \dblc c8 [ e8 ] \dblf f4 \grg a8. [ c16 ] 
 \dble e8. [ c16 ] \dblc c4 \gre b4 \break
 
 	\set Score.repeatCommands = #'((volta #f) (volta "2. --1,2") end-repeat)  
 \dblc c8 [ e8 ] \dblf f4 \grg a4 
 \grg b8 [ \grip c8 ] \dble e4 \birl a4 
 \grg a8. [ b16 ] \grip c4 \gre a8. [ c16 ] 
 \dble e8. [ c16 ] \dblb b4 \grG a4 
 \set Score.repeatCommands = #'((volta #f)) 
 \bar "|."
 
     	\override Score.BarLine.break-visibility = #end-of-line-invisible
 	\stopStaff 
        % Increasing the unfold counter will expand the staff-free space
        \repeat unfold 6 { s4 s4 s4 } 
        \break
        \startStaff  % Resume bar count and show staff lines again 

    % Part 2
    	\set Score.repeatCommands = #'(start-repeat) 
 \dblc c8 [ e8 ] \dblA A4 \grg A8 [ f8 ] 
 \dblA A8. [ f16 ] \grg e4 \gra e4 
 \dblc c8 [ e8 ] \dblf f4 \dble e8 [ c8 ] 
 \dblA A8 [ f8 ] \dblf f4 \grg e4 
 	\revert Score.BarLine.break-visibility
 
 	\set Score.repeatCommands = #'((volta "1"))  
 \dblc c8 [ e8 ] \dblA A4 \grg A8 [ f8 ] 
 \dblA A8. [ f16 ] \grg e4 \gra e4 
 \dblc c8 [ e8 ] \dblf f4 \grg a8. [ c16 ] 
 \dble e8. [ c16 ] \dblc c4 \gre b4
 	\set Score.repeatCommands = #'((volta #f) end-repeat)

    % Part 3
    % Part 4

    } %end staff
    
  \header {
%    meter = "3/4 Retreat March"
    piece = "Loch Maree"
    composer = "P/M G.S.MacLennan 1884-1929 (Arr. Ed Krintz)"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
