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

%#(allow-volta-hook "|") % enables volta hook outside repeat context

\score {

    \new Staff  {
    \time 3/4	   
    \tempo 4 = 80   
    \hideKeySignature
    \bar ".|:"
    		
    % Part 1
    
    \repeat volta 2 {
 \thrwd d8. [ e16 ] \grg f4 \dblf f8 [ A8 ] |
 \grf g8 [ e8 ] \dblf f4 \thrwd d4 |
 \dblA A8. [ f16 ] \thrwd d4 \wslurd d8. [ e16 ] |
 \grg f8 [ a8 ] \dblf f4 \dble e4 |
 
 \gra e8. [ d16 ] \dblc c4 \grip c8 [ A8 ] |
 \grf g8 [ e8 ] \thrwd d4 \gre a4 |
 \grg e8. [ f16 ] \dblg g4 \grf g8 [ b8 ] |
 \dblc c8 [ \gre a8 ] \thrwd d4 \wslurd d4 |
 \bar ":..:" \break
    } %end repeat

    % Part 2
    
    \repeat volta 2 {
 \wslurd d8. [ f16 ] \dblA A4 \grg A8. [ g16 ] |
 \hdblf f8. [ g16 ] \dblA A4 \hdblf f4 |
 \thrwd d8 [ \gre a8 ] \grip b4 \dblg g8. [ f16 ] |
 \dble e8 [ d8 ] \dblf f4 \dble e4 |
 \gra e8. [ d16 ] \dblc c4 \grip c8 [ A8 ] |
 \grf g8 [ e8 ] \thrwd d4 \gre a4 |
 \grg e8. [ f16 ] \dblg g4 \grf g8 [ b8 ] |
 \dblc c8 [ \gre a8 ] \thrwd d4 \wslurd d4 | \break
    } %end repeat

    % Part 3
    \repeat volta 2 {
 \dblc c4 \grG a4 \wbirl a8 [ \grd c8 ] 
 \dble e8 [ \hdblg g8 ] \hdblf f4 \thrwd d4 
 \dblc c8. b16  \grG a4 \wbirl a8 [ \grd c8 ] 
 \dblA A8. [ g16 ] \hdblf f4 \dble e8 [ \birl a8 ] 
 \thrwd d8 [ f8 ] \dblA A4 \hdblf f8 [ A8 ] 
 \grf g16. [ f32 \grg e16. d32 ] \dblc c4 \dblb b4 
 \grg e8. [ f16 ] \dblg g4 \grf g8 [ b8 ] 
 \dblc c8 [ \gre a8 ] \thrwd d4 \wslurd d4 \break
    } %end repeat

    % Part 4

    } %end staff
    
  \header {
    meter = "3/4 Retreat March"
    piece = "Lochanside"
    composer = "P/M John MacLellan, Dunoon"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
