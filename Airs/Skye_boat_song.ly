\version "2.18.0"

% When ready to include in collection:	
%	1. Comment out top section with \Include file(s)
%					
%	2. \midi section if present.
%	3. Option to comment out "meter" from title e.g. if first tune following
%	   section title.
                                    
%Comment out from here
%
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
      \grg a8. \grd b16 \gre a8 \thrwd d8. \grg c16 d8
      \grg e8. f16 \grg e8 \dblA A4.
      \dblf f8. \grg e16 f8 \grg b4 \taor b8
      \grg a4. \wbirl a4.
    }
    \break

    % Part 2
    \repeat volta 2 {
    \grg f8. \grg d16 f8 \dblf f4.
    \dble e8. \grg c16 e8 \dble e4.
    \thrwd d8. \grg b16 d8 \slurd d4 c8
    \set Score.measureLength = #(ly:make-moment 9/8)
    \grg b4. 
    \set Score.repeatCommands = #'((volta "1.")) \taor b4.
    \once \hide Score.BarLine
    \once \hide Score.SpanBar
    \set Score.repeatCommands = #'((volta "2.") end-repeat)
    \grG a4.
    \set Score.repeatCommands = #'((volta #f))
    \set Score.measureLength = #(ly:make-moment 6/8)
    \break }

    % Part 3
    \repeat volta 2 {
    \grg a8. \grd b16 \gre a8 \thrwd d8. \grg c16 d8
    \grg e8. f16 \grg e8 \dblA A4.
    \dblf f8. \grg e16 f8 \grg b4 }
    
    \alternative {
    	    { \taor b8 \grg a4. \wbirl a4. }
    	    { \set Score.measureLength = #(ly:make-moment 1/8) \grd c8
    	      \set Score.measureLength = #(ly:make-moment 6/8)   
    	      \thrwd d4. \slurd d4. \bar "|." }
}

    % Part 4

    } %end staff
    
  \header {
    meter = "Air"
    piece = "Skye Boat Song"
    composer = "Trad."
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
