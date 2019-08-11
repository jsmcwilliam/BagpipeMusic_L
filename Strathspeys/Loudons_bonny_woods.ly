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

\score {

    \new Staff  {
    \time 4/4	     
    \tempo 4 = 100   
%    \bagpipeKey
    \hideKeySignature
    \bar ".|:"
    		
    % Part 1
  	\repeat volta 2 {
  	\partial 8 a8
 \thrwd d4 \dbld d4 \grg f16 [ A8. ] \grg A4
 \grf g8. [ e16 ] \dblf f8. [ d16 ] \dble e8. [ d16 ] \dblc c16 [ \gre a8. ]
 \thrwd d4 \dbld d4 \grg f16 [ A8. ] \grg  A4
 \times 2/3 {b8 [  (c8 d8) ]}  \dblc c16 [ \gre a8. ] \thrwd d4 \wslurd d8. 
 \break
 	}

    % Part 2
    	\repeat volta 2 { 
     a16
 \thrwd d8. [ e16 ] \dblf f8. [ d16 ] \dble e8. [ d16 ] \dblc c16 [ \gre a8. ]
 \grg b8. [ c16 ] \thrwd d8. [ c16 ] \grg b8. [ \grd c16 ] \grg a8. [ b16 ]
 \thrwd d8. [ e16 ] \dblf f8. [ d16 ] \dble e8. [ d16 ] \dblc c16 [ \gre a8. ] 
 \times 2/3 {\grg  b8 [  (c8 d8) ]}  \dblc c16 [ \gre a8. ] \thrwd d4 \wslurd d8.
 \break
 	}

    % Part 3
    % Part 4

    } %end staff
    
  \header {
%    meter = "Strathspey"
    piece = "Loudons Bonny Woods and Braes"
    composer = "Trad."
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
