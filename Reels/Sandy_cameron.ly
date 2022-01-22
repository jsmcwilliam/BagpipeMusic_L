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

\defineBarLine ":|.-.|" #'(":|." ".|" "|.")
\defineBarLine "|.-.|" #'("|." ".|" "|.")

\score {

    \new Staff  {
    \time 2/2	   
    \tempo 4 = 80  
%    \bagpipeKey
    \hideKeySignature
    		
    % Part 1
    \partial 4 {\grg f8. e16}
    \bar ".|:"
    \grg c16 \grd a8. \grg a16 \grd a8. \grg c8. \grd a16 \gre a8. A16 |
    c8. \grd a16 \gre a8. \grd c16 \grg b16 \grd b8. \grg f8. e16 |
    \grg c16 \grd a8. \grg a16 \grd a8. \dble e8. a16 \grd c16 g8. |
    \grA b8. \grd G16 \gre G8. \grd b16 \thrwd d4 \grg f8. d16
    \bar ":|.-.|" \break
    
    % Part 2
    \dblA A4 e8. f16 \dble e8. d16 \grg c16 \grd a8. |
    \dblA A4 e8. f16 \grg f8.e16 \grg f8. g16 |
    \dblA A4 e8. f16 \dble e8. d16 \grg c16 g8. |
    \grA b8. \grd G16 \gre G8. \grd b16 \thrwd d4 \grg f8. d16 |
    \break
    
    \dblA A4 e8. f16 \dble e8. d16 \grg c16 \grd a8. |
    \dblA A4 e8. f16 \grg f8.e16 \grg f8. g16 |
    \dblA A4 e16 A8. d16 A8. c16 A8. |
    \grA b8. \grd G16 \gre G8. \grd b16 \thrwd d4 \grg f8. d16 \bar "|.-.|"
    \break
    
    % Part 3
    \grg c16 e8. \grg a8. e16 \grg c16 e8. \grg a8. A16 |
    c16 e8. \grg a8. \grd c16 \grg b16 \grd b8. \grg  f8. e16 |
    \grg c16 e8. \grg a8. e16 \grg c16 e8. \grg a8. A16 |
    \grA b8. \grd G16 \gre G8. \grd b16 \thrwd d4 \grg f8. d16 |
    
    \grg c16 e8. \grg a8. e16 \grg c16 e8. \grg a8. A16 |
    c16 e8. \grg a8. \grd c16 \grg b16 \grd b8. \grg  f8. e16 |
    \grg c16 e8. \gra e8. f16 \dble e8. a16 \grd c16 g8. |
    \grA b8. \grd G16 \gre G8. \grd b16 \thrwd d4 \grg f8. d16 \bar "|.-.|" 
    \break
    
    % Part 4
    \catchc c4 A8. c16 \catchc c4 \dble e8. c16 |
    \catchc c4 A8. c16 \catchc c4 \dblg g4 |
    \catchc c4 A8. c16 \catchc c4 \dble e8. c16 |
    \grA b8. \grd G16 \gre G8. \grd b16 \thrwd d4 \grg f8. d16 |

    \catchc c4 A8. c16 \catchc c4 \dble e8. c16 |
    \catchc c4 A8. c16 \catchc c4 \dblg g4 |
    A8. f16 \grA g8. e16 \grg f8. [d16 \dble e8. c16] |     
    \grA b8. \grd G16 \gre G8. \grd b16 \thrwd d4 \grg f8. d16 \bar "|." 
    \break

    } %end staff
    
  \header {
    meter = "Reel"
    piece = "Sandy Cameron"
    composer = "Traditional"
    parttagline = "Copied by John S. McWilliam from The Scots Guards Collection."
  }

% \midi {} %Generation of midi files option.

}%end score
