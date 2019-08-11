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

#(allow-volta-hook "||") % enables volta hook outside repeat context

\score {

    \new Staff  {
    \time 3/4	   
    \tempo 4 = 80   
    \hideKeySignature
    \bar ".|:"
    		
    % Part 1
    \repeat volta 2 {
\grg a8. [ b16 ] \grip c4. e8 
 \grg d16 [ c16 b8 ] \grG a2 
 \thrwd d8. [ e16 ] \dblf f4. A8 
 d8 [ f8 ] \dblf f8 [ e8 ] \gra e4  
% \break
    } %end repeat

    \alternative {{
 \grg c8. [ d16 ] \dble e4. f8 
 \dble e8 [ c8 ] \dblb b8 [ a8 ] \wbirl a4 
 \grg b8 [ \grip c8 ] \grg e8 [ f8 ] \dblA A8. [ f16 ] 
 \grg e8 [ a8 ] \dblc c8 [ \gre b8 ] \grG b4 
 	    \break }
 	    {
 \dblc c8 [ e8 ] \dblA A4. g8 
 A8. [ f16 ] \grg e8 [ a8 ] \wbirl a4 
 \grg f16 [ e16 d8 ] \dblc c4. e8 
 \grg d16 [ c16 b8 ] \grG a2 \bar "|."
     }}
 
      \override Score.BarLine.break-visibility = #end-of-line-invisible
      \stopStaff 
        % Increasing the unfold counter will expand the staff-free space
       \repeat unfold 6 { s4 s4 }  
      \break 	
      \startStaff  % Resume bar count and show staff lines again  +

    % Part 2
    \bar ".|"
 \grg e8. [ f16 ] \dble e4. c8 
 \grg a8 [ \grd c8 ] \dblf f8 [ e8 ] \gra e4 
 \dblA A8. [ g16 ] A4. f8 
 \grg d8 [ f8 ] \dblf f8 [ e8 ] \gra e4  
 \revert Score.BarLine.break-visibility
% \break

 \grg c8. [ d16 ] \dble e4. f8 
 \dble e8 [ c8 ] \dblb b8 [ a8 ] \wbirl a4 
 \grg b8_\markup {Tune ends with the 1st. part: 2nd. time.} 
 [ \grip c8 ] \grg e8 [ f8 ] \dblA A8. [ f16 ] 
 \grg e8 [ a8 ] \dblc c8 [ \gre b8 ] \grG b4 \bar "|." 
 \break 

    % Part 3
    % Part 4

    } %end staff
    
  \header {
%    meter = "March"
    piece = "Pipe Major J. K. Cairns"
    composer = ""
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
