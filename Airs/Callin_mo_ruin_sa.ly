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
    \bar ".|"
    		
    % Part 1
    \grg a8 [ b8 d8 ] \grg f4. \dble e4 f8 
    \dble e8 [ d8 b8 ] \grg a4.~ a4 f8 
    \dblg g8 [ \grA f8 g8 ] \dblA A4. \hdblf f4 e8 
    \grg d8 [ b8 d8 ] \dble e4.~ e4 A8  
    \break

    \grg A4 \grip A8 \hdblf f4. \dble e4 d8 
    \dble e8 [ d8 b8 ] \grg a4.~ a4 f8 
    \dblg g8 [ \grA f8 g8 ] \dblA A4. \hdblf f4 d8 
    \dble e8 [ d8 b8 ] \thrwd d4.~ d4 a8 \bar "|.-.|" 
    \break 

    % Part 2
     \wbirl a8 [ b8 \grG a8 ] \thrwd d4. \dble e4 f8 
     \dble e8 [ d8 b8 ] \grg a4.~ a4 f8 
    \dblg g8 [ \grA f8 g8 ] \dblA A4. \hdblf f4 e8 
    \grg d8 [ b8 d8 ] \dble e4.~ e4 A8  
    \break

    \grg A4 \grip A8 \hdblf f4. \dble e4 d8 
    \dble e8 [ d8 b8 ] \grg a4.~ a4 f8 
    \dblg g8 [ \grA f8 g8 ] \dblA A4. \hdblf f4 d8 
    \dble e8 [ d8 b8 ] \thrwd d4.~ d4. \bar "|." 

    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "Gaelic Air"
    piece = "Callin Mo Ruin Sa"
    composer = "Trad."
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
