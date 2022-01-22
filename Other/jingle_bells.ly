\version "2.22.1"

% When ready to include in collection:	
%	1. Comment out top section with \Include file(s)
%					
%	2. \midi section if present.
%	3. Option to comment out "meter" from title e.g. if first tune following
%	   section title.
                                    
%Comment out from here
%
\include "bagpipe.ly" %(default Lilypond formats)
\include "../Includes/BP_format_portrait.ily" 	

%to here..........................................................
%}

\score {
   \new Staff {
      \time 2/4
      \tempo 4 = 80	
      \hideKeySignature
      \bar ".|:"

 \repeat volta 2 {
    \grg \partial 8 a8
    \wbirl a8 f \grg e d
    \grg a4. \grg a8
    \wbirl a8 f \grg e d
    \grg b4. \grg b8

    \grip b8 g \grA f e
    \grg c4. \grip c8
    A8 \grg A g e
    \grg f4. \grg a8
    \break

    \wbirl a8 f \grg e d
    \grg a4. \grg a8
    \wbirl a8 f \grg e d
    \grg b4. \grg b8

    \grip b8 g \grA f e
    A8. \grg A16 \grg A8 g
    A8 g \grA f e
    \thrwd d2
    \bar "||" \break

    \grg f8 \gre f \grg f4
    \grg f8 \gre f \grg f4
    \grg f8 A d8. e16
    \grg f2

    \grA g8 \grf g \grA g8. A16
    g8 f \gre f8. \grg f16
    \gre f8 e \grg e f
    \dble e4 \dblA A
    \break

    f8 \gre f \grg f4
    \grg f8 \gre f \grg f4
    \grg f8 A d8. e16
    \grg f2

    \grA g8 \grf g \grA g8. A16
    g8 f \gre f8. \grg f16
    A8 \grg A g e
    \thrwd d2
  } %end repeat
  } % end staff

  \header {
    meter = "Christmas carol"
    piece = "Jingle Bells"
    composer = "James Pierpoint"
  }

% \midi {} %Generation of midi files option.

}%end score
