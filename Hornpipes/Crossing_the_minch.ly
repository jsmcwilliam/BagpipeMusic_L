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
    \partial 8 {\grg a16. [ d32 ]} 
 \dblf f16. [ a32 \gbirl a8 ] \dblf f8 [ \grg e16. f32 ] 
 \grA g16. [ b32 \shakeb b8 ] \dblg g8 [ A16. g32 ] 
 \tdblf f16. [ a32 \gbirl a8 ] \dblf f8 [ \grg e16. f32 ] 
 \grA g16. [ b32 \dble e16. d32 ] \dbld d16. [ c32 \grg d16. e32 ]  \break

 \dblf f16. [ a32 \gbirl a8 ] \dblf f8 [ \grg e16. f32 ] 
 \grA g16. [ b32 \shakeb b8 ] \dblg g8 [ A16. g32 ] 
 \grA f16. [ g32 A16. f32 ] \grA g16. [ e32 \grg c16. d32 ] 
 \dble e8 [ d8 ] \wslurd d8 
 \break
    } %end repeat

    % Part 2
    \repeat volta 2 {
 \grg a16. [ d32 ] 
 \dblf f16. [ a32 \gbirl a8 ] \grg f16. [ g32 A16. f32 ] 
 \grA g16. [ b32 \shakeb b8 ] \grA g16. [ A32 \grg A16. g32 ] 
 \tdblf f16. [ a32 \gbirl a8 ] \grg f16. [ g32 A16. f32 ] 
 \grA g16. [ b32 \dble e16. d32 ] \dbld d16. [ c32 \grg d16. e32 ]  \break

 \dblf f16. [ a32 \gbirl a8 ] \grg f16. [ g32 A16. f32 ] 
 \grA g16. [ b32 \shakeb b8 ] \dblg g8 [ A16. g32 ] 
 \grA f16. g32 A16. f32 ] \grA g16. [ e32 \grg c16. d32 ] 
 \dble e8 [ d8 ] \wslurd d8 
 \break
    } %end repeat

    % Part 3
    \repeat volta 2 {
 \grg a16. [ d32 ] 
 \dblf f16. [ a32 \gbirl a8 ] \dblf f16. [ a32 \grg e16. f32 ] 
 \grA g16. [ b32 \shakeb b8 ] \grA g16. [ b32 A16. g32 ] 
 \dblf f16. [ a32 \gbirl a8 ] \dblf f16. [ a32 \grg e16. f32 ] 
 \grA g16. [ b32 \dble e16. d32 ] \dbld d16. [ c32 \grg d16. e32 ]  \break

 \dblf f16. [ a32 \gbirl a8] \dblf f16. [a32 \grg e16. f32 ] 
 \grA g16. [ b32 \shakeb b8 ] \dblg g8 [ A16. g32 ] 
 \grA f16. [ g32 A16. f32 ] \grA g16. [e32 \grg c16. d32 ] 
 \dble e8 [ d8 ] \wslurd d8 
 \break
    } %end repeat

    % Part 4
    \repeat volta 2 {
    \set Score.measureLength = #(ly:make-moment 1/8)
 \grg a16. [ d32 ]
 \set Score.measureLength = #(ly:make-moment 4/8)
 \grg f16. [ a32 \gbirl a8 ] \grg f16. [ a32 \gbirl a8 ] 
 \grA g16. [ a32 \gbirl a8 ] \grA g16. [ a32 \gbirl a8 ] 
 \grg f16. [ a32 \gbirl a8 ] \grg f16. [ a32 \gbirl a8 ] 
 \grg e16. [ f32 \grg e16. d32 ] \dbld d16. [ c32 \grg d16. e32 ]  
 \break

 \grg f16. [ a32 \gbirl a8 ] \grg f16. [ a32 \gbirl a8 ] 
 \grA g16. [ b32 \shakeb b8 ] \dblg g8 [ A16. g32 ] 
 \grA f16. [ g32 A16. f32 ] \grA g16. [ e32 \grg c16. d32 ] 
 \set Score.measureLength = #(ly:make-moment 3/8)
 \dble e8 [ d8 ] \wslurd d8 
 \set Score.repeatCommands = #'((volta #f)) 
 \break 
     } %end repeat

 

    } %end staff
    
  \header {
%    meter = "Hornpipe"
    piece = "Crossing the Minch"
    composer = "P/M Donald MacLeod, M.B.E."
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
