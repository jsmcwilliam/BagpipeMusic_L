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
    \quarterBeaming
    \bar ".|:"

% Part 1
	\repeat volta 2 {
    		\grg G8 [ \grd a8 ] \wbirl a8. [ b16 ]
 \thrwd d8 [ e8 ] \grg f4 
 \dble e8 [ d8 ] \dblb b8 [ \thrwd d8 ] 
 \dblf f8 [ e8 ] \dblf f8 [ A8 ]  
% \break

 \set Score.repeatCommands = #'((volta "2. --2"))  \grg G8 [ \grd a8 ] 
 \wbirl a8. [ b16 ] 
 \thrwd d8 [ e8 ] \grg f4 
 \dble e8 [ d8 ] \dblb b8 [ \gre G8 ] 
 \grg a4 \wbirl a4 
 \set Score.repeatCommands = #'((volta #f)) 
 \break
 	} %end repeat
 	
% Part 2
	\repeat volta 2 {
 \grg f8 [ A8 ] \grg A4 
 \grip A8 [ g8 ] \hdblf f4 
 \dble e8 [ d8 ] \dblb b8 [ \thrwd d8 ] 
 \dblf f8 [ e8 ] \dblf f4  
% \break

 \set Score.repeatCommands = #'((volta "1."))
 \grg f8 [ A8 ] \grg A4 
 \grip A8 [ g8 ] \hdblf f4 
 \dble e8 [ d8 ] \dblb b8 [ \gre G8 ] 
 \grg a4 \wbirl a4 
 \set Score.repeatCommands = #'((volta #f))
 \break
 	} %end repeat
    } %end staff
    
  \header {
    meter = "March"
    piece = "Marie's Wedding"
    composer = "Composer"
    parttagline = "Copied by John S. McWilliam"
    title = ##f
    subtitle = ##f
  }
  	
%Generation of midi files can be removed here.

%  \midi {}

}%end score
