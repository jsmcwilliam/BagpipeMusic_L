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
\include "../Includes/BP_format16.ily" 	

%to here..........................................................
%}

\score {

    \new Staff  {
    \time 3/4	    
    \tempo 4 = 80   
    \hideKeySignature
    \bar ".|:"
    		
    % Part 1
    \repeat volta 2 {
    \grg a8. [ \grd c16 ] \dble e4 \gra e4 
    \dblf f8. [ d16 ] \dble e4 \grd c4 
    \dbld d8. [ c16 ] \grG a4. \grd c8 
    \dble e8. [ c16 ] \dblb b2  %\break
 
    \grg a8. [ \grd c16 ] \dble e4 \gra e4 
    \dblf f8. [ d16 ] \dble e4 \grd c4 
    \grg a8. [ \grd c16 ] \dble e4. b8 
    \dbld d16 [ c8. ] \grG a2 %\bar ":|:" 
    \break	    
    } %end repeat
    
    % Part 2
    \repeat volta 2 {
     \grg f8. [ e16 ] \grg f4. \dblg g8 
     \dblA A8. [ f16 ] \dble e4 \grd c4 
     \dbld d8. [ c16 ] \grG a4. \grd c8 
     \dble e8. [ c16 ] \dblb b2  %\break
 
     \dble e8. [ d16 ] \dblc c4. d8 
     \grg e8. [ f16 ] \dble e4 \grd c4 
     \grg a8. [ \grd c16 ] \dble e4. b8 
     \dbld d16 [ c8. ] \grG a2 %\bar ":|:" 
     \break	    
    } %end repeat
    
    % Part 3
    \repeat volta 2 {
     \grg b8. [ c16 ] \thrwd d4 \dbld d4 
     \dble e8. [ d16 ] d4 \gre c4 
     \dblc c4 a4. \grd c8 
     \dble e8. [ c16 ] \dblb b2  %\break

     \thrwd d8. [ e16 ] \grg f4 \gre f4 
     \dble e4 \dbld d4 \gre c4 
     \grg a8. [ \grd c16 ] \dble e4. b8 
     \dbld d16 [ c8. ] \grG a2 %\bar ":|:" 
     \break  	    
    } %end repeat
    
    % Part 4
    \repeat volta 2 {
     \dblA A8. [ g16 ] \grA f4. \dblg g8 
     \dblA A8. [ f16 ] \dble e4 \grd c4 
     \grg f8. [ e16 ] \grg c4. f8 
     \dble e8. [ c16 ] \dblb b2  %\break

 
     \dblc c4 a4. \grd c8 
     \grg e8. [ f16 ] \dble e4 \grd c4 
     \grg a8. [ \grd c16 ] \dble e4. b8 
     \dbld d16 [ c8. ] \grG a2 %\bar ":|" 
     \break	    
    } %end repeat

    } %end staff
    
  \header {
    meter = "March"
    piece = "Kilworth Hills"
    composer = "P/M G.S. McLennan"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score

