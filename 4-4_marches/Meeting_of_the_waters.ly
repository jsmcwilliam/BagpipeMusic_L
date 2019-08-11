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
    \tempo 4 = 80   
    \hideKeySignature
    \bar ".|"
    		
    % Part 1
    \partial 4 {\grg a8. [ b16 ] }
 \thrwd d4 \wslurd d8 [ f8 ] \birl a4 \thrwd d8. [ c16 ] 
 \grg b8 [ d8 ] \grg b8 [ G8 ] \grg a4 \thrwd d8. [ e16 ] 
 \grg f8 [ A8 ] \birl a8 [ A8 ] \grf g8 [ f8 ] \grg e8 [ d8 ] 
 \grg f4. g16 [ f16 ] \dble e4 \grg a8. [ b16 ]  \break

 \thrwd d4 \wslurd d8 [ f8 ] \birl a4 \thrwd d8. [ c16 ] 
 \grg b8 [ d8 ] \grg b8 [ \gre G8 ] \grg a4 \thrwd d8. [ e16 ] 
 \grg f8 [ A8 ] \grf g8 [ f8 ] \dblg g8 [ a8 ] \grg c8 [ e8 ] 
 \thrwd d2 \dbld d4 \dblA A8. [ g16 ] \bar "|.-.|:"
 \break

    % Part 2 
    \repeat volta 2 {
 \grA f4 \dblA A8. [ g16 ] \grA f8 [ A8 ] \hdblf f8 [ a8 ] 
 \grg b8 [ \thrwd d8 ] \dblg g8. [ b16 ] \grG a4 \thrwd d8. [ e16 ]
    } %end repeat
    \alternative {{
    	    \grg f8 [ A8 ] \birl a8 [ A8 ] \grf g8 [ f8 ] \dble e8 [ d8 ] 
    	    \grg f4. g16 [ f16 ] \dble e4 \dblA A8. [ g16 ]
    	    }
    	    {
    	    \grg f8 [ A8 ] \grf g8 [ f8 ] \dblg g8 [ \birl a8 ] \grg c8 [ e8 ] 
    	    \thrwd d2 \dbld d4 \bar "|."
    	    \break
    }}

    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "March"
    piece = "The Meeting of the Waters"
    composer = "Traditional"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
