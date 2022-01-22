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
    \time 2/4	    
    \tempo 4 = 80   
    \hideKeySignature

    \bar ".|:"
    		
    % Part 1
    \repeat volta 2 {
    \partial 8 e8 
 \grg f8. [ g16 ] \hdblf f8. [ e16 ] 
 \thrwd d8 [ f8 ] \birl a8 [ d8 ] 
 \dblc c8 [ e8 ] \birl a8. [ e16 ] 
 \grg f8 [ a8 ] \thrwd d8. [ e16 ] 
 \grg f8. [ g16 ] \hdblf f8. [ e16 ] 
 \thrwd d8 [ f8 ] \birl a8 [ d8 ] 
 \dblc c8 [ e8 ] \birl a8 [ \grg f16. e32 ] 
 \thrwd d4 \slurd d8 \break
    } %end repeat

    % Part 2
    \repeat volta 2 {
 \grg f16. [ g32 ] 
 \dblA A8. [ f16 ] \thrwd d8. [ f16 ] 
 \grg e8 [ f8 ] \birl a8 [ \grg e16. f32 ] 
 \dblg g8 [ e8 ] \dblc c8 [ e8 ] 
 \thrwd d8 [ f8 ] \birl a8 [ \grg f16. g32 ] 
 \dblA A8. [ f16 ] \thrwd d8. [ f16 ] 
 \grg e8 [ f8 ] \birl a8 [ \grg e16 f16 ] 
 \dblg g8 [ e8 ] \dblc c8 [ \gre a8 ] 
 \thrwd d4 \slurd d8 \break
    } %end repeat

    % Part 3
    % Part 4

    } %end staff
    
  \header {
%    meter = "2/4 March"
    piece = "Barren Rochs of Aden"
    composer = "P/M Angus McKellar ca 1850"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score

