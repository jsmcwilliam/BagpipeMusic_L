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
    
    \partial 4 {\grg a8. b16} |
    \thrwd d4 \wslurd d8 f \thrwd d4 \wslurd d8 b |
    \grg a4 \taor a8 \grd b \grG a4 \thrwd d8. e16 |
    \dblf f4 \dble e8 d \dblA A4 d8f |
    \grg e4 e8. f16 \dble e4 \grg a8. b16 | \break
    
    \thrwd d4 \wslurd d8 f \thrwd d4 \wslurd d8 b |
    \grg a4 \taor a8 \grd b \grG a4 \thrwd d8. e16 |
    \grg f8 A f16 A8. \birl a4 \grg f8. e16 |
    \set Score.measureLength = #(ly:make-moment 3/4)
    \thrwd d4 \wslurd d8. e16 \thrwd d4 \bar "|." \break

    % Part 2
    
    \set Score.measureLength = #(ly:make-moment 1/4)
    \grg d8. e16 |
    \set Score.measureLength = #(ly:make-moment 4/4)
    \grg f4 \gre f8 A \hdblf f4 \dble e8 d |
    \grg b4 \taor b8 d \gre a4 \thrwd d8. e16 |
    \dblf f4 \dble e8 d \dblA A4 d8f |
    \grg e4 e8. f16 \dble e4 \grg a8. b16 | \break

    \thrwd d8. e16 \gre f8 A \hdblf f4 \dble e8 d |
    \grg b8 d \grg b16 d8. \gre a4 \thrwd d8. e16 |
    \grg f8 A f16 A8. \birl a4 \grg f8. e16 |
    \set Score.measureLength = #(ly:make-moment 3/4)
    \thrwd d4 \wslurd d8. e16 \thrwd d4 \bar "|." \break

    
    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "March"
    piece = "Thistle_of_Scotland"
    composer = "Trad. Arr: J. Fischer"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
