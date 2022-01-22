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

#(allow-volta-hook "|") % enables volta hook outside repeat context

\score {

    \new Staff  {
    \time 4/4	    
    \tempo 4 = 80   
    \hideKeySignature
    \bar ".|:"
    		
    % Part 1
    \repeat volta 2 {
    	    \partial 8 
    	    \set Score.repeatCommands = #'((volta "2."))
    	    A8
    	    \set Score.repeatCommands = #'((volta #f))
    	    \grg e8.a16 \dble e8. c16 \thrwd d8. G16 \grg b16 d8. |
    	    \grg e8. a16 \dble e8. d16 \grg e8. f16 \dblg g8. A16 |
    	    \grg A8. f16 \dblg g8. e16 \thrwd d8. G16 \grg b16 d8. |
    	    \grg e8. d16 \dblg g8. b16 \grg a4 \taor a8 
    } %end repeat
    
    % Part 2
    \repeat volta 2 {
	b8
	\grg a16 A8. \grg A8. f16 \dblg g8. G16 \grg b16 d8. |
	\grg a16 A8. \grg A8. f16 \dblA A8. a16 \dblA A8. e16 |
	\dblg g8. A16 \times 2/3 {e8 (f g)} \thrwd d8. G16 \grg b16 d8. |
    	\grg e8. d16 \dblg g8. b16 \grg a4 \taor a8 
    } %end repeat
    
    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "Strathspey"
    piece = "Yester House"
    composer = "Arr. A. Jones"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
