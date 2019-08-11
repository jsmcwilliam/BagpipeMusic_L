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
    \time 2/4	    %adjust time to suit specific tunes
    \tempo 4 = 80   % adjust speed accordingly for playback
    \hideKeySignature

    \bar ".|:"
    		
    % Part 1
    \repeat volta 2 {
    \grg f8. [ e16 ] \thrwd d8 [ \gre a8 ] 
    \grg b8 [ d8 ] \grg b8 [ \grG a8 ] 
    \grg f8. [ e16 ] \thrwd d8 [ \gre a8 ] 
    \grg b8 [ d8 ] \dble e4  
    %\break

    \grg f8. [ e16 ] \thrwd d8 [ \gre a8 ] 
    \grg b8 [ d8 ] \grg b8 [ \grG a8 ] 
    \grg f8. g16 \dblA A8. [ g16 ] 
    \grg f8 [ e ] \thrwd d4 
    \break 
    } %end repeat

    % Part 2
    \repeat volta 2 {
     \grg f8. [ g16 ] \dblA A8 [ a8 ] 
     \grg b8 [ d8 ] \grg b8 [ \grG a8 ] 
     \grg f8. [ g16 ] \dblA A8 [ a8 ] 
     \grg b8 [ d8 ] \dble e4  
     %\break

     \grg f8. [ g16 ] \dblA A8 [ a8 ] 
     \grg b8 [ d8 ] \grg b8 [ \grG a8 ] 
     \grg f8. g16 \dblA A8. [ g16 ] 
     \grA f8 [ e8 ] \thrwd d4 
     \break
    } %end repeat

    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "March"
    piece = "Barnyards O Delgaty"
    composer = "Trad."
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
