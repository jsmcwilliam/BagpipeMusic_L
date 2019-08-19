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
    \time 4/4	    
    \tempo 4 = 80   
    \hideKeySignature
    \bar ".|:"
    		
    % Part 1
    
    \repeat volta 2 {
    \partial 4 {\grg a8. b16} | \grip c4. e8 \grg d c \grg b a |
    \dblc c4 a \wbirl a c8 e   | \dblA A4. \grg A8 \grg A8 g \grg f e |
    \grg f2 \grg e4 \grg f8 g  | \break
    
    A4 \grg A \grg A4. c8      | \thrwd d4 f \dble e4. \gra e8  |
    \grg f4 \grg e \dblA A c   | \set Score.measureLength = #(ly:make-moment 3/4)
    \dblb b2 \grG a4 | 
 
    }
    % Part 2
    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "Air"
    piece = "Were No Awa Tae Bide Awa"
    composer = "Trad."
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
