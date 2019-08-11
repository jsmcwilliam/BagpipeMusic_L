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
    \time 6/8	  
    \tempo 4 = 80   
%    \bagpipeKey
    \hideKeySignature
    \bar ".|:"
    		
    % Part 1
    \repeat volta 2 {
 \partial 8 b8 
 \thrwd d4. A4. 
 \hdblf f4 e8 \grg f8 [ e8 d8 ] 
 b4 e8 \grg e8 [ d8 e8 ] 
 \grg b8 [ \grd b8 \gre b8 ] \dblc c8 [ b8 \grG a8 ] % \break

 \thrwd d4. A4. 
 \hdblf f4 e8 \grg f8 [ e8 d8 ] 
 b4 e8 \grg e8 [ d8 \gre b8 ] 
 \thrwd d4. \grg a4 
 \break
    } %end repeat
    
    % Part 2
    \repeat volta 2 {
 b8 
 \thrwd d4. \grg d8 [ \gre a8 d8 ] 
 \grg d8 [ \gre a8 d8 ] \grg f8 [ e8 d8 ] 
 b4 e8 \grg e8 [ d8 e8 ] 
 \grg b8 [ \grd b8 \gre b8 ] \dblc c8 [ b8 \grG a8 ]  % \break
 
 \thrwd d4. \grg d8 [ \gre a8 d8 ] 
 \grg d8 [ \gre a8 d8 ] \grg f8 [ e8 d8 ] 
 b4 e8 \grg e8 [ d8 \gre b8 ] 
 \thrwd d4. \grg a4 
 \break
    } %end repeat

    % Part 3
    \repeat volta 2 {
 b8 
 \thrwd d4. A4. 
 d8 [ f8 \grg d8 ] e8 [ \grg d8 \grG d8 ] 
 b4 e8 \grg e8 [ d8 e8 ] 
 \grg b8 [ \grd b8 \gre b8 ] \dblc c8 [ b8 \grG a8 ] % \break

 
 \thrwd d4. A4. 
 d8 [ f8 \grg d8 ] e8 [ \grg d8 \grG d8 ] 
 b4 e8 \grg e8 [ d8 \gre b8 ] 
 \thrwd d4. \grg a4 
 \break
    } %end repeat

    % Part 4
    \repeat volta 2 {
 b8 
 \thrwd d4. \grg a8 [ d8 \gre a8 ] 
 d8 [ \gre a8 d8 ] \grg f8 [ e8 d8 ] 
 b4 e8 \grg e8 [ d8 e8 ] 
 \grg b8 [ \grd b8 \gre b8 ] \dblc c8 [ b8 \grG a8 ]  %\break

 
 \thrwd d4. \grg a8 [ d8 \gre a8 ] 
 d8 [ \gre a8 d8 ] \grg f8 [ e8 d8 ] 
 b4 e8 \grg e8 [ d8 \gre b8 ] 
 \thrwd d4. \grg a4 
 \break
    } %end repeat

    } %end staff
    
  \header {
    meter = "Jig"
    piece = "Barbara's Jig"
    composer = "Traditional"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
