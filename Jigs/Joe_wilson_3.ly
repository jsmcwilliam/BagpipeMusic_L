\version "2.22.1"

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
    \hideKeySignature
    \bar ".|:"
    		
    % Part 1
    \repeat volta 2 {
    	\partial 8 f8
    	\grg a \grd a \gre a d \gre a d
    	f \grg d A f e d
    	\dblg g4 b8 \grg b \grd b \gre b
    	\dble e4 d8 \grg c e A
    
    	\set Score.repeatCommands = #'((volta "2.--2."))
    	a \grd a \gre a d \gre a d
    	f \grg d A f e d
    	\dblg g4 e8 \grg f e d
    	\dble e4. \gra e4
    	\set Score.repeatCommands = #'((volta #f))
    	\break
    } %end repeat
    
    % Part 2
	\repeat volta 2 {    	
	A8
    	f4. \dblf f8 d f
    	\dblA A4 d8 \grg f e d
     	\dblg g4 b8 \grg b \grd b \gre b
    	\dble e4 d8 \grg c e A

    	\set Score.repeatCommands = #'((volta "1."))
	f4. \dblf f8 d f
    	\dblA A4 d8 \grg f e d
    	\dblg g4 \grg e8 \grg f e d
    	\dble e4. \gra e4
    	\set Score.repeatCommands = #'((volta #f))
    	\break
    } %end repeat    	
%{    
    % Part 3
    \repeat volta 2 {
    	f8
    	\grg a4 f8 \grg a \grd a \gre a
    	d \gre a d \grg f e d
    	\dblg g4 b8 \grg b \grd b \gre b
    	\dble e4 d8 \grg c e A

    	\grg a4 f8 \grg a \grd a \gre a
    	d \gre a d \grg f e d
    	\dblg g4 e8 \grg f e d
    	\dble e4. \gra e4
    	\break
    } %end repeat
	    
    % Part 4
    \repeat volta 2 {
	A8
	\hdblf f4 A8 \thrwd d4 A8 
	f A \grg A f e d
    	\dblg g4 b8 \grg b \grd b \gre b
    	\dble e4 d8 \grg c e A

	\hdblf f4 A8 \thrwd d4 A8 
	f A \grg A f e d
    	\dblg g4 e8 \grg f e d
    	\dble e4. \gra e4	
    } %end repeat
%}    

    } %end staff
    
  \header {
    meter = "Jig"
    piece = "P/M Joe Wilson"
    composer = "P/M Angus MacDonald"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
