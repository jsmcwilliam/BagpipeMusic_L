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
    \time 6/8	    
    \tempo 4 = 80   
    \hideKeySignature
    \bar ".|:"
    		
    % Part 1
    \repeat volta 2 {
    \grg b4. \grip b |\grg f4 \grip f8 \grg f8. e16 c8
    \grg a4. \wbirl a |\grg c8. \gre b16 \grd c8 \dblb b8. \grG a16 b8
    \thrwd d4. \dble e |\grg f8. g16 A8 \hdblc c8. \grg b16 \grd a8
    \grg b8. \grd c16 f8 \grg e8. d16 c8 |
    \once \override Score.VoltaBracket.shorten-pair = #'(0 . 0.3)
    \set Score.repeatCommands = #'((volta "1."))
    \grg b4. \grip b 
    \once \override Score.VoltaBracket.shorten-pair = #'(0.5 . 0)
    \set Score.repeatCommands = #'((volta #f)(volta "2."))
    \time 4/4
    \grg b4 b b b
    \set Score.repeatCommands = #'((volta #f))
    } %end repeat
    % Part 2
    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "Air"
    piece = "Mist Covered Mountains"
    composer = "Arr. A. Jones"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
