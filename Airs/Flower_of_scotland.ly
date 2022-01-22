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
    \bar ".|:"
    		
    % Part 1

    \repeat volta 2 {
        \partial 8 f8
    \grg f4 e8 \thrwd d4.
    \gre a4. ~ a4 \grg a8
    \thrwd d4 f8 \dble e4. ~
    e4 \gre d8 \grg d4 e8
    \grg f4. ~ f4 \gre f8
    \dblg g8 f g \dblA A4.
    \thrwd d4. ~ d4 \gre a8
    \grg e4 \gra e8 \grg e d e
    \break

    \grg f4 g8 \tdblf f4 e8
    \thrwd d4. \gre a4. ~
    a4 f8 \dblg g f g
    \dblA A4. \thrwd d4. ~
    d4 f8 \dblg g f e
    \dblf f4 e8 \thrwd d4. ~
    d4 \grG d8 \grg c4 e8
    \thrwd d4. ~ d4
    }

    % Part 2
    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "Air"
    piece = "Flower of Scotland"
    composer = "Trad."
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
