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
    \time 2/4	    
    \tempo 4 = 80   
    \hideKeySignature

    \bar ".|:"
    		
    % Part 1
    \repeat volta 2 {
    	    \partial 8 a8
    	    \thrwd d8 [ \gre a8 ] \thrwd d8. [ e16 ] 
    	    \dblf f8 [ A8 ] \hdblf f8 [ d8 ] 
    	    \dblg g8. [ f16 ] \dble e8. [ d16 ] 
    	    \dblc c8 [ e8 ] \dblc c8 [ \gre a8 ]  %\break

    	    \set Score.repeatCommands = #'((volta "2. --2"))  
    	    \thrwd d8 [ \gre a8 ] \thrwd d8. [ e16 ] 
    	    \dblf f8 [ A8 ] \hdblf f8 [ d8 ] 
    	    \dblg g8. [ f16 ] \dble e8 [ A8 ] 
    	    \hdblf f8 [ d8 ] \dbld d8 %\bar ":|:" 
    	    \set Score.repeatCommands = #'((volta #f)) 
    	    \break	
    } %end repeat

    % Part 2
    	\repeat volta 2 {
    	\dblg g8 
    	\dblA A4 \grip A8. [ g16 ] 
    	\hdblf f8 [ A8 ] \hdblf f8 [ d8 ] 
    	\dblg g8. [ f16 ] \dble e8. [ d16 ] 
    	\dblc c8 [ e8 ] \dblc c8 [ \gre a8 ]  %\break

    	\set Score.repeatCommands = #'((volta "1"))  
    	\dblA A4 \grip A8. [ g16 ] 
    	\hdblf f8 [ A8 ] \hdblf f8 [ d8 ] 
    	\dblg g8. [ f16 ] \dble e8 [ A8 ] 
    	\hdblf f8 [ d8 ] \dbld d8 
    	\set Score.repeatCommands = #'((volta #f)) 
    	%\bar ":|" 
    	\break
     	} %end repeat
 	
    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "March"
    piece = "Teribus"
    composer = "Trad."
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score

