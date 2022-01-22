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
    \time 9/8	    
    \tempo 4 = 80   
    \hideKeySignature
    \bar ".|:"
    		
    % Part 1
    \partial 8 e8
    \repeat volta 2 {
      \grg a8.[ b16 \grip c8] \dble e4. \dblc c4 e8
      \dblf f8. d16 f8 \dble e4. \dblc c4.
      \dblA A8. g16 \grA f8 \dble e4. \grg a8. \grd c16 e8
      \dblf f8. e16 c8 \grg b4. \taor b4 e8
      \break
      \grg a8.[ b16 \grip c8] \dble e4. \dblc c4 e8
      \dblf f8. d16 f8 \dble e4. \dblc c4.
      \dblA A8. g16 \grA f8 \dble e4. \slurb b4 e8
      \dblc c8. \gre b16 \grd c8 \grG a4. \wbirl a4.
    }
    \break

    % Part 2
    \repeat volta 2 {
      \grg a8. \grd c16 e8 \grg f4. \dblf f8. d16 f8
      A8. g16 \grA f8 \dble e4. \dblc c4.
      \dblA A8. g16 \grA f8 \dble e4. \grg a8. \grd c16 e8
      \dblf f8. e16 c8 \grg b4. \taor b4.
      \break
      \grg a8. \grd c16 e8 \grg f4. \dblf f8. d16 f8
      A8. g16 \grA f8 \dble e4. \dblc c4.
      \dblA A8. g16 \grA f8 \dble e4. \slurb b4 e8
      \dblc c8. \gre b16 \grd c8 \grG a4. \wbirl a4.
    }

    % Part 3
    % Part 4

    } %end staff
    
  \header {
%    meter = "March"
    piece = "The Heights of Dargai"
    composer = "J. Wallace"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
