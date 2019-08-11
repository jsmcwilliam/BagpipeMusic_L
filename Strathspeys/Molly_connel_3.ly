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
\dblc c4 \gre a8. [ \grd c16 ] \grg e8. [ f16 ] \dblA A8. [ e16 ] 
 \grg f16 [ A8. ] f16 ([ e16^\markup {3} c8-- ]) \dble e8. [ c16 ] \slurb b4 
 \set Score.repeatCommands = #'((volta "2. --2"))  
 \dblc c4 \gre a8. [ \grd c16 ] \grg e8. [ f16 ] \dblA A8. [ e16 ] 
 \grg f16 ([ e16^\markup {3} c8-- ]) \dble e8. [ c16 ] \dblb b4 \grG a4 
 \set Score.repeatCommands = #'((volta #f)) 
 \break
    } %end repeat

    % Part 2
    \repeat volta 2 {
 \dblA A4 e16 [ A8. ] f16 ([ e16^\markup {3} c8-- ]) \dble e4 
 \grg c16 [ e8. ] \gra e8. [ f16 ] \dble e8. [ c16 ] \slurb b4 
 \set Score.repeatCommands = #'((volta "1"))  
 \dblA A4 e16 [ A8. ] f16 ([ e16^\markup {3} c8-- ]) \dble e4 
 \grg f8. [ e16 ] \gra e8. [ c16 ] \dblb b4 \grG a4 
 \set Score.repeatCommands = #'((volta #f)) 
 \break
    } %end repeat

    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "Strathspey"
    piece = "Molly Connel"
    composer = "James Walk"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
