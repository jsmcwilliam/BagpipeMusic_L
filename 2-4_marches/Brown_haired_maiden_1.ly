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

	{
    \set Staff.midiInstrument = #"bagpipe"	  
%    \bagpipeKey
    \quarterBeaming
    \time 2/4

    % Part 1

    \repeat volta 2 {
      \partial 8 a8
      \thrwd d8. c16 \dblb b8 \grG a
      \thrwd d4 \gre a8[ \thrwd d]
      \grg f d \dblg g8. f16
      \dblf f8 e \gra e[ \dblg g]
      \break
      f16 A8. \hdblf f8 A
      \birl a4 \thrwd d8. e16
      \grg f4 \dblg g8 e
      \thrwd d4 \slurd d8
    }
    \break

    % Part 2

    \repeat volta 2 {
      \dblg g8
      f16 A8. \hdblf f8 A
      \birl a4 \thrwd d8. e16
      \grg f8 d \dblg g8. f16
      \dblf f8 e \gra e[ \dblg g]
      \break
    }
    \alternative {
      {
        f16 A8. \hdblf f8 A
        \birl a4 \thrwd d8. e16
        \grg f4 \dblg g8 e
        \thrwd d4 \slurd d8 s
        \break
      }
      {
        \dblA A8. g16 \tdblf f8 A
        \birl a4 \thrwd d8. e16
        \grg f4 \dblg g8 e
        \thrwd d4 \slurd d8
      }
    }
    \bar "|."
  }

  \header {
    meter = "March"
    piece = "The Brown Haired Maiden"
    arranger = "Trad. arr. MPD"

  }

} %end score
