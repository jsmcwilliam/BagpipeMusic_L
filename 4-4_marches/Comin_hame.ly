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
    \time 4/4	    
    \tempo 4 = 80 
    \hideKeySignature
%    \bar ".|:"
    		
    % Part 1
    \partial 4 \grg c8 [ d8 ] 
    \repeat volta 2 {
 \grg e4. c8 \grg b16 [ \grd a8. ] A8 [ e8 ] 
 \grg f2 \gre f4 \grg f16 [ g16 A8 ] 
 \hdble e4. c8 \grg d16 [ c8. ] \grg b16 [ \grG a8. ] 
     } %end repeat
     \alternative {{
     	     \grg c8 b4. \grG b4 \grg c8 [ d8 ] }
                   
 	    {\grg a2 \wbirl a4 \grg f16 [ g16 A8 ] 
 	     \bar "|."
 	     \break
		  }}

    % Part 2
 \hdble e4. a8 \grG a4 \grg f16 [ g16 A8 ] 
 \grg f4. b8 \grG b4 \grg f16 [ g16 A8 ] 
 \hdble e4. c8 \grg d16 [ c8. ] \grg b16 [ \grG a8. ] 
 \grg c8 b4. \grG b4 \grg c8 [ d8 ]  \break

 \grg e4. c8 \grg b16 [ \grd a8. ] A8 [ e8 ] 
 \grg f2 \gre f4 \grg f16 [ g16 A8 ] 
 \hdble e4. c8 \grg d8. [ c16 ] \grg b8. [ \grG a16 ] 
 \grg a2 \wbirl a4 \bar "|." \break 

    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "March"
    piece = "Comin' Hame"
    composer = "Phil Coulter"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
