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
    \partial 8 { e8 }
 \grg a4 \taor a8. [ b16 ] \dblc c8 [ \gre a8 ] \dblc c8 [ e8 ] 
 \dblA A4 \grg A4 \grip A8 [ e8 ] \dblc c8 [ \gre a8 ] 
 \thrwd d4 \grg f8. [ d16 ] \dblc c8 [ e8 ] \dblc c8 [ \gre a8 ] 
 \grip b4 \dble e4 \gra e8. [ f16 ] \grg e16. [ d32 \grg c16. b32 ]  \break

 \grg a4 \taor a8. [ b16 ] \dblc c8 [ \gre a8 ] \dblc c8 [ e8 ] 
 \dblA A4 \grg A4 \grip A8 [ e8 ] \dblc c8 [ \gre a8 ] 
 \thrwd d4 \grg f8. [ d16 ] \dblc c8 [ e8 ] \dblc c8 [ \gre a8 ] 
 \grip b4 \grg a8. [ b16 ] \grG a4 \bar "|.-.|" \break 

    % Part 2
 \dblc c8 [ e8 ] 
 \dblA A4 \grg A4 \grip A8 [ e8 ] \dblc c8 [ \gre a8 ] 
 \dblA A4 \grg A4 \grip A8 [ e8 ] \dblc c8 [ e8 ] 
 \dblA A4 \grg A8. [ g16 ] \grA f4 \dblA A8. [ g16 ] 
 \grA f8 [ A8 ] \grf g8 [ f8 ] \dble e8 [ d8 ] \dblc c8 [ b8 ]  \break

 \grg a4 \taor a8. [ b16 ] \dblc c8 [ \gre a8 ] \dblc c8 [ e8 ] 
 \dblA A4 \grg A4 \grip A8 [ e8 ] \dblc c8 [ \gre a8 ] 
 \thrwd d4 \grg f8. [ d16 ] \dblc c8 [ e8 ] \dblc c8 [ \gre a8 ] 
 \grip b4 \grg a8. [ b16 ] \grG a4. \bar "|." \break 

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
