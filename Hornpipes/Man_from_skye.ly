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
%    \bagpipeKey
    \hideKeySignature
    \bar ".|:"
    		
    % Part 1
    \repeat volta 2 {
    \partial 8 {\grg b32 [ d16. ]} 
 \dble e8 [ \gra e16. d32 ] \grg d16. [ e32 \gra e16. d32 ] 
 \grg b16. [ e32 \gra e16. d32 ] \dblb b8 [ \gre a8 ] 
 \grg G16. [ \grd G32 \gre G16. \grd b32 ] \grg G8 [ \grd b8 ] 
 \grg G16. [ \grd b32 \grG b16. d32 ] \dblb b8 [ \thrwd d8 ]  \break

 \set Score.repeatCommands = #'((volta "2. --1,2"))  
 \dble e8 [ \gra e16. d32 ] \grg d16. [ e32 \gra e16. d32 ] 
 \grg b16. [ e32 \gra e16. d32 ] \dblb b8 [ \grg a32 \grd G16. ] 
 \grg a16. [ \grd a32 \gre a16. \grd b32 ] \dble e8 [ \dbld d16. b32 ] 
 \grg a4 \wbirl a8 
 \set Score.repeatCommands = #'((volta #f)) 
 \break
    } %end repeat

    % Part 2
    \repeat volta 2 {
 \grg b32 [ d16. ] 
 \dble e8 [ \dblg g8 ] \dblA A8 [ e16. f32 ] 
 \grA g16. [ f32 \grg e16. d32 ] \dblb b8. [ \gre a16 ] 
 \grg G16. [ \grd G32 \gre G16. \grd b32 ] \grg G8 [ \grd b8 ] 
 \grg G16. [ \grd b32 \grG b16. d32 ] \dblb b8 [ \thrwd d8 ]  \break

 \set Score.repeatCommands = #'((volta "1"))  
 \grg e16. [ f32 \grA g16. e32 ] \dblA A8 [ \grip A8 ] 
 g16. [ f32 \grg e16. d32 ] \dblb b8 [ \grg a32 \grd G16. ] 
 \grg a16. [ \grd a32 \gre a16. \grd b32 ] \dble e8 [ \dbld d16. b32 ] 
 \grg a4 \wbirl a8 
 \set Score.repeatCommands = #'((volta #f)) 
\break
    } %end repeat
    
    % Part 3
    \repeat volta 2 {
 \grg b32 [ d16. ] 
 \dble e8 [ \grg a8 ] \wbirl a8 [ \grg b32 d16. ] 
 \grg e32 [ g16. \grA e16. d32 ] \dblb b8 [ \gre a32 \grd b16. ] 
 d32 [ \gre G16. \dblG G8 ] \grg b32 [ \grd a16. \grg b32 \grd G16. ] 
 \grg b32 [ d16. \grg G16. d32 ] \dblb b8 [ \thrwd d8 ]  \break

 \set Score.repeatCommands = #'((volta "2 --3,4"))  
 \dble e16. [ a32 \dbla a8 ] \grg b32 [ \grd a16. \grg b32 d16. ] 
 \grg e32 [ g16. \grA d32 e16. ] \dblb b8 [ \grg a32 \grd G16. ] 
 \grg a16. [ \grd a32 \gre a16. \grd b32 ] \dble e8 [ \dbld d16. b32 ] 
 \grg a4 \wbirl a8 
 \set Score.repeatCommands = #'((volta #f)) 
 \break
    } %end repeat
    
    % Part 4
    \repeat volta 2 {
 \grg b32 [ d16. ] 
 \dble e8 [ \gra e16. d32 ] \dble e8 [ \gra e16 f16 ] 
 \grA g16. [ f32 \grg e16. g32 ] \tdblb b8 [ \gre a8 ] 
 \grg G16. [ \grd G32 \gre G16. \grd b32 ] \grg G8 [ \grd b8 ] 
 \grg G16. [ \grd b32 \grG b16. d32 ] \dblb b8 [ \thrwd d8 ]  \break

 \set Score.repeatCommands = #'((volta "1"))  
 \dble e8 [ \gra e16. d32 ] \dble e8 [ \gra e16 f16 ] 
 \grA g16. [ f32 \grg e16. d32 ] \dblb b8 [ \grg a32 \grd G16. ] 
 \grg a16. [ \grd a32 \gre a16. \grd b32 ] \dble e8 [ \dbld d16. b32 ] 
 \grg a4 \wbirl a8 
 \set Score.repeatCommands = #'((volta #f)) 
 \break
    } %end repeat

    } %end staff
    
  \header {
    meter = "Hornpipe"
    piece = "The Man From Skye"
    composer = "P/M Donald MacLeod Q.O.H."
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
