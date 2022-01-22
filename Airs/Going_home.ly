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
    \bar ".|"
    		
    % Part 1
    
    \dblc c4 e8 \gra e4.
    \dblc c4 b8 \grG a4.
    \grg b4 \grd c8 \dble e4 c8
    \grg b4. \grip b4.
%    \break
    \dblc c4 e8 \gra e4.
    \dblc c4 b8 \grG a4.
    \grg b4 \grd c8 \dblb b4 \grG a8
    \grg a4. \wbirl a4.
    \bar "|." \break

    % Part 2
    
    \grg f4 A8 \grg A4.
    \grf g4 e8 \dblf f4.
    \grg f4 A8 \grf g4 e8
    \grg f4. \grip f4.
%    \break
    \grg f4 A8 \grg A4.
    \grf g4 e8 \dblf f4.
    \grg f4 A8 \grf g4 e8
    \grg f4. \dble e4.
    \bar "|." \break
    
    % Part 3
    
    \dblc c4 e8 \gra e4.
    \dblc c4 b8 \grG a4.
    \grg b4 \grd c8 \dble e4 c8
    \grg b4. \grip b4.
%    \break
    \dblc c4 e8 \gra e4.
    \grg f4 \dblg g8 \dblA A4.
    b4 \grd c8 \dblb b4 \grG a8
    \grg a4. \wbirl a4.
    \bar "|."
    
    % Part 4

    } %end staff
    
  \header {
    meter = "Air"
    piece = "Going Home"
    composer = "Trad."
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
