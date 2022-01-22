\version "2.22.1"

#(allow-volta-hook "") % enables volta hook in mid bar context

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
    \tempo 4 = 160   
%    \bagpipeKey
    \hideKeySignature
    \bar ".|:"
    		
    % Part 1
    \repeat volta 2 {
 \grg b8  \grd b8 \gre b8  \dblf f4 e8 
 \grg f8  b8 \grG b8  \dblf f4 e8 
 \grg b8  \grd b8 \gre b8  \dblf f4 e8 
 \grg c8  \grd a8 \gre a8  \grg f8  e8 c8   
% \break

 \grg b8  \grd b8 \gre b8  \dblf f4 e8 
 \grg f8  b8 \grG b8  \dblf f4 e8 
 \grg f8  g8 A8  e8  f8 A8  
 c8  \grd a8 \gre a8  \grg f e c
 \break
    }
    % Part 2
        \repeat volta 2 {
 \dblA A4. \hdblf f4 e8 
 \grg f8  b8 \grG b8  \dblf f4 e8 
 \dblA A4. \hdblf f4 e8 
 \grg c8  \grd a8 \gre a8  \grg f8  e8 c8  
% \break

 \dblA A4. \hdblf f4 e8 
 \grg f8  b8 \grG b8  \dblf f4 e8 
 \grg f8  g8 A8  e8  f8 A8  
 c8  \grd a8 \gre a8 \grg f e c
 \break
 	}
    % Part 3
        \repeat volta 2 {
     \grg b8  \grd b8 \gre b8  \grg c8  \grd c8 \gre c8  
 \grg b8  \grd b8 \gre b8  \dblf f4 e8 
 \grg c8  \grd c8 \gre c8  \grg b8  \grd b8 \gre b8  
 \grg a8  \grd a8 \gre a8  \grg f8  e8 c8   
% \break

 \grg b8  \grd b8 \gre b8  \grg c8  \grd c8 \gre c8  
 \grg b8  \grd c8 e8  \dblf f4 e8 
 \grg f8  g8 A8  e8  f8 A8  
 c8  \grd a8 \gre a8  \grg f e c
 \bar ":..:"
 \break
 	}
    % Part 4
        \set Score.repeatCommands = #'(start-repeat)
  A8  g8 A8  \hdblf f4 e8 
 \grg f8  b8 \grG b8  \dblf f4 e8 
 A8  g8 A8  \hdblf f4 e8 
 \grg c8  \grd a8 \gre a8  \grg f8  e8 c8   
% \break

 \set Score.measureLength = #(ly:make-moment 9/8)
 \set Score.repeatCommands = #'((volta "1"))
  A8  g8 A8  
 \once \hide Score.BarLine
 \once \hide Score.SpanBar
 \set Score.repeatCommands = #'((volta #f)(volta "2.") end-repeat)
 A4.
 \set Score.repeatCommands = #'((volta #f) ) 
 \hdblf f4 e8
 \set Score.measureLength = #(ly:make-moment 6/8)
 
 \grg f8  b8 \grG b8  \dblf f4 e8 
 \grg f8  g8 A8  e8  f8 A8  
  c8  \grd a8 \gre a8  \dble e4 c8
 \set Score.repeatCommands = #'(end-repeat)
 	
    } %end staff
    
  \header {
    meter = "Jig"
    piece = "Paddy's Leather Breeches"
    composer = "Trad."
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score

