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

#(allow-volta-hook "|") % enables volta hook outside repeat context

\score {

    \new Staff  {
    \time 6/8	    
    \tempo 4 = 80  
    \hideKeySignature
    \bar ".|:"
    		
    % Part 1
    \repeat volta 2 {
    \partial 8 {
    	    \set Score.repeatCommands = #'((volta "2."))
    	    e8
    	    \set Score.repeatCommands = #'((volta #f))
    } 
    \grg a4.~ a8. [ \grd b16 \gre a8 ] 
    \thrwd d4 f8 \dblA A4. 
    e8. [ f16 \grg d8 ] \dblc c4 \gre a8 
    \dblc c4 e8~ e8. [ d16 \gre b8 ] 
    \set Score.repeatCommands = #'((volta "2. --2,4"))  
    \grg a4.~ a8. [ \grd b16 \gre a8 ] 
    \thrwd d4 f8 \dblA A4. 
    e8. [ f16 \grg d8~ ] d8. [ \grg b16 e8 ] 
    \grg a4. \wbirl a4 
    \set Score.repeatCommands = #'((volta #f)) 
    \break
    } %end repeat

    % Part 2
    \repeat volta 2 {
    e8 
    \dblA A4.~ A4 \birl a8 
    \grg f8. [ d16 f8 ] \dblA A4. 
    e8. [ f16 \grg d8 ] \dblc c4 \gre a8 
    \dblc c4 e8~ e8. [ d16 \gre b8 ] 
    \set Score.repeatCommands = #'((volta "1"))  
    \dblA A4.~ A4 \birl a8 
    \grg f8. [ d16 f8 ] \dblA A4. 
    e8. [ f16 \grg d8~ ] d8. [ \grg b16 e8 ] 
    \grg a4. \wbirl a4 
    \set Score.repeatCommands = #'((volta #f)) 
    \break
    } %end repeat

    % Part 3
    \repeat volta 2 {
    e8 
    \grg a8. [ \grd c16 \gre b8 ] \grg c4 \taor a8 
    \thrwd d8. [ \grg f16 A8 ] \grg A4. 
    e8. [ f16 \grg d8 ] \dblc c4 \gre a8 
    \dblc c4 e8~ e8. [ d16 \gre b8 ] 
    \grg a8. [ \grd c16 \gre b8 ] \grg c4 \taor a8 
    \thrwd d8. [ \grg f16 A8 ] \grg A4. 
    e8. [ f16 \grg d8~ ] d8. [ \grg b16 e8 ] 
    \grg a4. \wbirl a4 
    \break
    } %end repeat

    % Part 4
    \repeat volta 2 {
    e8 
    A4 \birl a8 \grg a8. [ d16 A8 ] 
    \grg A8. [ f16 d8 ] \dblA A4. 
    e8. [ f16 \grg d8 ] \dblc c4 \gre a8 
    \dblc c4 e8~ e8. [ d16 \gre b8 ] 
    \set Score.repeatCommands = #'((volta "1"))  A4 
    \birl a8 \grg a8. [ d16 A8 ] 
    \grg A8. [ f16 d8 ] \dblA A4. 
    e8. [ f16 \grg d8~ ] d8. [ \grg b16 e8 ] 
    \grg a4. \wbirl a4 \set Score.repeatCommands = #'((volta #f)) 
    \break
    } %end repeat

    } %end staff
    
  \header {
%    meter = "6/8 March"
    piece = "The Bind"
    composer = ""
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
