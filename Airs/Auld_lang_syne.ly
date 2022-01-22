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
    \time 4/4	    
    \tempo 4 = 80   
    \hideKeySignature
    \bar ".|:"
    		
    % Part 1

    \repeat volta 2 {
      \partial 8 e8
      \grg a4. \wbirl a8 \grg a4 \grd c
      \grg b4. a8 \grg b4 \grd c8 b
      \grg a4. \wbirl a8 \grg c4 e
      \grg f2. \gre f4
%      \break
      \grg e4. c8 \grip c4 \grG a
      \grg b4. a8 \grg b4 \grd c8 b
      \grg a4. f8 \grg f4 e
      \grg a2. f4
    }
    \break

    % Part 2
    
    \repeat volta 2 {
      \grg e4. c8 \grip c4 \grG a
      \grg b4. a8 \grg b4 f
      \grg e4. c8 \grip c4 e
      \grg f2. A4
%      \break
      e4. c8 \grip c4 \grG a
      \grg b4. a8 \grg b4 \grd c8 b
      \grg a4. f8 \grg f4 e
      \grg a2. ~ a8
    }

    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = ""
    piece = "Auld Lang Syne"
    composer = "Trad."
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
