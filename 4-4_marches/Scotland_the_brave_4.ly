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
\include "../Includes/BP_format16.ily" 	

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
    \partial 8 { e8 } |
 \grg a4 \taor a8. [ b16 ] \dblc c8 [ \gre a8 ] \dblc c8 [ e8 ] |
 \dblA A4 \grg A4 \grip A8 [ e8 ] \dblc c8 [ \gre a8 ] |
 \thrwd d4 \grg f8. [ d16 ] \dblc c4 \grg e8. [ c16 ] |
 \dblb b4 e \grip e8. [ f16 ] \grg e16. [ d32 \grg c16. b32 ]  \break

 \grg a4 \taor a8. [ b16 ] \dblc c8 [ \gre a8 ] \dblc c8 [ e8 ] |
 \dblA A4 \grg A4 \grip A8 [ e8 ] \dblc c8 [ \gre a8 ] |
 \thrwd d4 \grg f8. [ d16 ] \dblc c8 [ e8 ] \dblc c8 [ \grd a8 ] |
 \dblb b4 \grG a8. [ b16 ] \grG a4 \dblc c8 e | \bar "|.-.|" \break 

    % Part 2
 
 \dblA A4 \grg A4 \grip A8 [ e8 ] \dblc c8 [ \gre a8 ] |
 \dblA A4 \grg A4 \grip A8 [ e8 ] \dblc c8 [ e8 ] |
 \thrwd d4 \grg f8. [ d16 ] \dblc c4 \grg e8. [ c16 ] |
 \dblb b4 e \grip e8. [ f16 ] \grg e16. [ d32 \grg c16. b32 ] | \break

 \grg a4 \taor a8. [ b16 ] \dblc c8 [ \gre a8 ] \dblc c8 [ e8 ] |
 \dblA A4 \grg A4 \grip A8 [ e8 ] \dblc c8 [ \gre a8 ] |
 \thrwd d4 \grg f8. [ d16 ] \dblc c8 [ e8 ] \dblc c8 [ \gre a8 ] |
 \dblb b4 \grG a8. [ b16 ] \grG a2  \bar "|." \break 

    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "March"
    piece = "Scotland the Brave"
    composer = "Traditional"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
