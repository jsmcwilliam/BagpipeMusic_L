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
    \bar ".|:"
    		
    % Part 1
  \repeat volta 2 {
     \partial 8 a8 |
     \thrwd d4 \wslurd d8 e \thrwd d4~ d8 a8 |
     \thrwd d4 \wslurd d8 [ e ] \thrwd d2 | 
     \grg e4 \grg f8 [ g ] \dblA A4 \grf g8 [ f ] |
     \dble e4 a \wbirl a A8. [ g16 ] | \break
 
     \grA f4 \grip f8. [ g16 ] \dblA A4. a8 |
     \thrwd d8. [ e16 ] \dbld d8 [ b ] \grg G4~ G8. \grd b16 |
     \grG a4 \thrwd d \grg e8 [ d ] \dblc c8 [ b ] 
     \grG a4 \thrwd d \wslurd d4. \break
    } %end repeat

    % Part 2
    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "March"
    piece = "Bonnie Lass o' Fyvie"
    composer = "Traditional"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
