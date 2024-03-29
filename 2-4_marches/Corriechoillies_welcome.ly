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
    \partial 8 e8
     \grg a8. [ b16 ] \grG a8 [ \thrwd d8 ] |
     \dble e8. [ d16 ] \dblb b8 [ \grG a8 ] |
     \thrwd d8. [ e16 ] \grg f8 [ A8 ] |
     \hdblf f8 [ e8 ] \gra e8 
     
     \set Score.repeatCommands = #'((volta "2. --2")) 
      f8 |
     \grg a8. [ b16 ] \grG a8 [ \thrwd d8 ] 
     \dble e8. [ d16 ] \dblb b8 [ \grG a8 ] 
     \thrwd d8. [ e16 ] \grg f8 [ A8 ] 
     \hdblf f8 [ d8 ] \wslurd d8
     \set Score.repeatCommands = #'((volta #f)) 
     \break
    } %end repeat

    % Part 2
    
  \repeat volta 2 {
 \dblg g8 
 \dblA A8. [ f16 ] \thrwd d8 [ f8 ] |
 \dble e8. [ d16 ] \dblb b8 [ \grG a8 ] |
 \thrwd d8. [ e16 ] \grg f8 [ A8 ] |
 \hdblf f8 [ e8 ] \grG e8 \dblg  
 
 \set Score.repeatCommands = #'((volta "1.")) 
  g8 |
 \dblA A8. [ f16 ] \thrwd d8 [ f8 ] |
 \dble e8. [ d16 ] \dblb b8 [ \grG a8 ] |
 \thrwd d8. [ e16 ] \grg f8 [ A8 ] |
 \set Score.measureLength = #(ly:make-moment 3/8)
 \hdblf f8 [ d8 ] \wslurd d8
 \set Score.repeatCommands = #'((volta #f)) \break
  }
  
    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "March"
    piece = "Corriechoillies Welcome"
    composer = "P/M Willie Ross"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score

