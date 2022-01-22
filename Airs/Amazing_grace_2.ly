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
    \time 3/4	    
    \tempo 4 = 80  
    \hideKeySignature
    \bar ".|:"
    		
    % Part 1
    \set Score.repeatCommands = #'(start-repeat)
    \partial 4 {\grg a8 [ d8 ]} 
    \dbld d2 \times 2/3 {\grg f8. [ e16 d8 ]} 
    \grg f2 \grg f8 [ e8 ] 
    \thrwd d2 \grg b4 
    \grG a2 \grg a8 [ d8 ] 
    \slurd d2 \times 2/3 {\grg f8. [ e16 d8 ]} 
    \grg f2 \grg e8 [ f8 ] 
    \dblA A2. 
    \grg A2 f8 [ A8 ]  \break

    \grg A2 \times 2/3 {f8. [ e16 d8 ]} 
    \grg f2 \grg f8 [ e8 ] 
    \thrwd d2 \grg b4 
    \grG a2 \grg a8 [ d8 ] 
    \slurd d2 \grg \times 2/3 {f8. [ e16 d8 ]} 
    \grg f2 e4 
    \set Score.repeatCommands = #'((volta "1"))  
    \thrwd d2. 
    \slurd d2 \set Score.repeatCommands = #'((volta #f)) 
%    \break
    \set Score.repeatCommands = #'((volta "2") end-repeat)  
    \dble e2.
    \override Staff.BarLine #'break-visibility = #'#(#t #f #t)
    \thrwd d2 \set Score.repeatCommands = #'((volta #f)) 
    \revert Staff.BarLine.break-visibility
    \bar "|." \break 

    % Part 2
    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "Hymn"
    piece = "Amazing Grace"
    composer = "Traditional"
    parttagline = "Copied by John S. McWilliam"
  }
% added layout options. See bagpipe_new.ly (\layout) for default settings
  \layout {
  	  ragged-last = ##t
  	}

% \midi {} %Generation of midi files option.

}%end score
