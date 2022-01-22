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
    \time 3/4	    
    \tempo 4 = 80  
    \hideKeySignature
    \bar ".|:"
    		
    % Part 1
 \partial 4 {\grg a8. d16} |
 \wslurd d2 \grg f8 [ e32 d16. ] |
 \grg f2 \grg f8. e16 | 
 \thrwd d2 \grg b4 |
 \grG a2 \grg a8. d16 |
 \wslurd d2 \grg f8 [ e32 d16. ] |
 \grg f2 \grg e8. f16 | 
 \dblA A2.~ | 
 \grg A2 f8. A16 |  \break

    % Part 2
    
 \grg A2 f8 [ e32 d16. ] |
 \grg f2 \grg f8. e16 | 
 \thrwd d2 \grg b4 | 
 \grG a2 \grg a8. d16 |
 \wslurd d2 \grg f8 [ e32 d16. ] | 
 \grg f2 \grg e4 
 \thrwd d2.~ 
 \wslurd d2 \bar "|." \break 

    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = ""
    piece = "Amazing Grace - Gospel Version"
    composer = ""
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
