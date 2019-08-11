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
%    \bagpipeKey
    \hideKeySignature
    \bar ".|:"
    		
    % Part 1
    \repeat volta 2 {
    \partial 8 e8 
 \grg d8. [ b16 ] \shakeb b4 \grg G8. [ b16 ] \shakeb b4 
 \grg d8. [ b16 ] \shakeb b4 \grg f4 \slure f8. [ e16 ] 
 \grg d8. [ b16 ] \shakeb b4 \grg G8. [ b16 b8. ] d16 ] 
 \grg c8. [ \grd a16 a8. ] \grd c16 ] \dble e4 \grg f8
 \break
    } %end repeat

    % Part 2
    \repeat volta 2 {
 e8 
 \thrwd d8. [ e16 f8. ] g16 ] A8. [ d16 ] \shaked d4 
 \grg f8. [ d16 ] \shaked d4 \grg f4 \slure f8. [ e16 ] 
 \thrwd d8. [ e16 f8. ] g16 ] A8. [ d16 ] \shaked d4 
 \grg e8. [ a16 ] \gbirl a4 \dble e4 \grg f8 
 \break
    } % end repeat

    % Part 3
     \repeat volta 2 {
  e8 
 \grg d8. [ b16 ] \shakeb b4 \grg b8. [ d16 ] \shaked d4 
 \grg c8. [ e16 ] \shakee e4 \grg e4 \grg f8. [ e16 ] 
 \grg d8. [ b16 ] \shakeb b4 \grg b8. [ d16 d8. ] b16 ] 
 \grg c8. [ \grd a16 a8. ] \grd c16 ] \dble e4 \grg f8 
 \break
     } % end repeat

    % Part 4
 \repeat volta 2 {
 e8 
 \grg f8. [ d16 ] \shaked d4 \shaked d4 A8. [ d16 ] 
 \grg f8. [ d16 ] \shaked d4 \grg f4 \slure f8. [ e16 ] 
 \grg f8. [ d16 ] \shaked d4 \shaked d4 A8. [ d16 ] 
 \grg c8. [ \grd a16 a8. ] \grd c16 ] \dble e4 \grg f8 
 \break
 } %end repeat


    } %end staff
    
  \header {
    meter = "Reel"
    piece = "Twisted Fingers"
    composer = "Duncan Johnstone"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
