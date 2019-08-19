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
    \time 6/8	    
    \tempo 4 = 80   
    \hideKeySignature
    \bar ".|:"
    		
    % Part 1
    \repeat volta 2 {
      \partial 8 {e8} |
      \grg a8.[ b16 \grip c8] \dble e4 \dblA A8 |
      \hdblf f8. e16 c8 \dble e4.
      \grg a8.[ b16 \grip c8] \dble e4 \grg f8 |
      \dblf f8. e16 \grg c8 \dblb b4. |
 
      \set Score.repeatCommands = #'((volta "2.--2."))
      \grg a8.[ b16 \grip c8] \dble e4 \dblA A8 |
      \hdblf f8. e16 \grg c8 \dble e4. |
      \gra e8. f16 A8 \hdblc c4 \grg b8 |
      \dblc c8 b16 \grG a8. \wbirl a4. |
      \set Score.repeatCommands = #'((volta #f))
      \break
    }

    % Part 2

    \repeat volta 2 {
      A4 \grip A8 \hdblf f4 \grg e8 |
      \grg f8. e16 c8 \dble e4.
      A4 \grip A8 \hdblf f4 \grg e8 |
      \grg f8. e16 \grg c8 \dblb b4. |

      \set Score.repeatCommands = #'((volta "1."))
        A4 \grip A8 \hdblf f4 \grg e8 |
        \grg f8. e16 \grg c8 \dble e4.
        \gra e8. f16 A8 \hdblc c4 \grg b8
        \dblc c8 b16 \grG a8. \wbirl a4.
        \set Score.repeatCommands = #'((volta #f))
%        \break
    }
    
    } %end staff
    
  \header {
    meter = "Slow Air"
    piece = "Leaving Lismore"
    composer = "Arr: Mrs Martin Hardie"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
