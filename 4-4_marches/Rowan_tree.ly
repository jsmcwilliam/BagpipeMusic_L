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

\defineBarLine "|.-.|" #'("|." ".|" "|.")
 
\score {

    \new Staff  {
    \time 4/4	    
    \tempo 4 = 80  
%    \bagpipeKey
    \hideKeySignature
    \bar ".|"
    		
    % Part 1
    \partial 4 {\grg a8. [ b16 ]} 
 \grip c4. \grg c8 \grip c4 \gre b4 
 \dblc c8 e4. \gra e4 \dblA A4 
 \hdblf f4. e8 \grg f4 \dblA A4 
 \hdblf f8 e4. \gra e4 \grg a8. [ b16 ] 
 \grip c4. \grg c8 \grip c4 \gre b4 
 \dblc c8 e4. \dblf f4. e8 
 \dble e8 c4. \dblb b4. \grG a8 
 \grg a2 \wbirl a4. \bar "|.-.|" \break 

    % Part 2
 \grg e8 
 \gra e4 A4 \grg A4. \grf g8 
 \grA g4 f4 \dblf f4 \dblA A4 
 \hdble e4. f8 \grg f8 [ e8 ] \grg d8 [ c8 ] 
 \dblc c4. \grg b8 \grip b4 \grg a8. [ b16 ] 
 \grip c4. \grg c8 \grip c4 \gre b4 
 \dblc c8 e4. \dblf f4. e8 
 \dble e8 c4. \dblb b4. \grG a8 
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
