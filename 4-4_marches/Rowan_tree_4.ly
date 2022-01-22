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
%    \bagpipeKey
    \hideKeySignature
    \bar ".|"
    		
    % Part 1
    \partial 4 {\grg a8. [ b16 ]} |
 \grip c4. \grd c8 \gre c4 b |
 \grg c8 e4. \gra e4 \dblA A4 | 
 \hdblf f4. e8 \grg f4 \dblA A4 |
 \hdblf f4. e8 \gra e4 \grg a8. [ b16 ] |
 
 \grip c4. \grd c8 \gre c4 b | 
 \grg c8 e4. \grg f4. e8 |
 \grg e8 c4. \grg b4. \grG a8 |
 \grg a2 \wbirl a4. e8 | \bar "|.-.|" \break 

    % Part 2
 
 \gra e4. A8 \grg A4. g8 |
 \grA g4 f \grg f \dblA A | 
 \hdble e4. f8 \dblf f8 e \grg d c  |
 \dblc c2 \gre b4 \grg a8. [ b16 ] |
 
 \grip c4. \grd c8 \gre c4 b |
 \grg c8 e4. \grg f4. e8 |
 \grg e8 c4. \grg b4. \grG a8 
 \grg a2 \wbirl a4. \bar "|." \break 

    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "March"
    piece = "Rowan Tree"
    composer = "Traditional"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
