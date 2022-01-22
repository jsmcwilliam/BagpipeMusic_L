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
    \bar ".|"
    		
    % Part 1
 \grg b16 [ c16 d16 c16 ] \grg b8 [ f8 ] 
 \dbld d8 [ b8 ] \dblc c8 [ f8 ] 
 \grg e16 [ f16 e16 d16 ] \dblc c8 [ b8 ] 
 \dbld d8 [ b8 ] \dblc c4 \grg b16 [ c16 d16 c16 ] \grg b8 [ f8 ] 
 \dbld d8 [ b8 ] \dblc c8 [ f8 ] 
 \grg e16 [ f16 e16 d16 ] \dblc c8 [ b8 ] 
 \grg d16 [ b16 \grg c16 \grd a16 ] \grg b4 \bar "|.-.|" \break

    % Part 2
 \grg b16 [ c16 d16 e16 ] \grg f8 [ \grg f8 ] 
 \grg e8 [ \dblA A8 ] \hdblf f8 [ d8 ] 
 \grg b16 [ c16 d16 f16 ] \grg e8 [ f8 ] 
 \grg e16 [ f16 e16 d16 ] \dblc c4 
 \grg b16 [ c16 d16 e16 ] \grg f8 [ \grg f8 ] 
 \grg e8 [ \dblA A8 ] \hdblf f8 [ d8 ] 
 \grg b16 [ c16 d16 f16 ] \grg e8 [ c8 ] 
 \grg d16 [ b16 \grg c16 \grd a16 ] \grg b4 
 \bar "|." \break

    % Part 3
    % Part 4

    } %end staff
    
  \header {
%    meter = "Hornpipe"
    piece = "An Dro"
    composer = "Traditional Breton Melody"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
