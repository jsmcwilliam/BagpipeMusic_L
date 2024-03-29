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
    \partial 8 \grg f16. [ e32 ] |
 \thrwd d8 [ \grg b8 ] \taor b8 [ \thrwd d16. e32 ] |
 \dblf f8 [ A8 ] \hdblf f8 [ \grg e16. d32 ] |
 \dblc c8 [ \gre a8 ] \wbirl a8. [ b16 ] |
 \grg c32 [ \grd a16. \grg c16. d32 ] \dble e8
 \set Score.repeatCommands = #'((volta "2. --2."))
 \grg f16. e32  | 
 \break

 \thrwd d8 [ \grg c16. d32 ] \dblb b8 [ \thrwd d16. e32 ] |
 \dblf f8 [ A8 ] \hdblf f8 [ \grg d16. e32 ] |
 \grg f16. [ e32 \grg f32 A16. ] \hdblc c8 [ \gre a8 ] |
 \grg b4 \taor b8 
    \set Score.repeatCommands = #'((volta #f) )
    \break }

    % Part 2
    \repeat volta 2 {
 \dblg g8 |
 \dblA A8 [ \thrwd d8 ] \dblf f8 [ e32 d16. ] |
 \dblf f8 [ A8 ] \hdblf f8 [ \grg c16. d32 ] |
 \dble e8 [ \grg a8 ] \dblc c8. [ d16 ] |
 \dble e16. [ c32 ] \grg a16. [ \grd c32 ] \dble e8  
 \set Score.repeatCommands = #'((volta "1."))
 \dblg g8
 \break 

 \dblA A8 [ \thrwd d8 ] \dblf f8 [ e32 d16. ] |
 \dblf f8 [ A8 ] \hdblf f8 [ \grg d16. e32 ] |
 \grg f16. [ e32 \grg f32 A16. ] \hdblc c8 [ \gre a8 ] |
 \grg b4 \taor b8
 \set Score.repeatCommands = #'((volta #f) )
    \break }

    % Part 3
    \repeat volta 2 {
  f8 |
 \grg b8. [ \grd c16 ] \grg b8 [ \grd c32 e16. ] |
 \grg f16. [ e32 \grg f32 A16. ] \hdblf f8 [ e32 c16. ] |
 \grg a8. [ \grd b16 ] \grg a8 [ \grg a16. b32 ] |
 \grg c32 [ \grd a16. \grg c32 e16. ] \grg f16. [ e32 \grg c32 \grd a16. ] | 
 \break

 \grg b8. [ \grd c16 ] \grg b8 [ \grd c32 e16. ] |
 \grg f16. [ e32 \grg f32 A16. ] c32 [ e16. \grg a16. \grd c32 ] |
 \grg f16. [ e32 \grg f32 A16. ] \hdblc c8 [ \gre a8 ] |
 \grg b4 \taor b8 
  \bar ":..:"  \break }

        % Part 4
    \set Score.repeatCommands = #'(start-repeat)
    \set Score.measureLength = #(ly:make-moment 1 8)   
 \grg c32 [ e16. ] |
    \set Score.measureLength = #(ly:make-moment 4 8)
 \dblf f8 [\slurb b8 ] \dblf f8. [ e16 ] |
 \grg f16. [ e32 \grg f32 A16. ] \hdblf f8 [ e32 c16. ] |
 \dble e8 [ \birl a8 ] \dble e8. [ f16 ] |
 \dble e16. [ c32 \grg b32 \grd c16. ] \grg a16. [ b32 \grg c32 e16. ] | 
 \break 

 \set Score.repeatCommands = #'((volta "1."))
 \dblf f8 [ b8 ] \dblf f8. [ e16 ] |
 \grg f16. [ e32 \grg f32 A16. ] c32 [ e16. \grg a16. \grd c32 ] |
 \grg f16. [ e32 \grg f32 A16. ] \hdblc c8 [ \gre a8 ] |
 \set Score.measureLength = #(ly:make-moment 3/8)
 \grg b4 \taor b8
 \set Score.repeatCommands = #'((volta #f) (volta "2.") end-repeat)
 \break

  \set Score.measureLength = #(ly:make-moment 4 8)	 	 
 \grg c32 [ f16. \grg e16. c32 ] \slurb b8 [ \grd c32 e16. ] |
 \grg f16. [ e32 \grg f32 A16. ] c32 [ e16. \grg a16. \grd c32 ] |
 \grg f16. [ e32 \grg f32 A16. ] \hdblc c8 [ \gre a8 ] |
 \grg b4 \taor b8 
 \set Score.repeatCommands = #'((volta #f) )
 \bar "|."	 \break 
    } %end staff
    
  \header {
    meter = "March"
    piece = "Men of Argyll"
    composer = "PM John McLellan"
    parttagline = "Copied by John S. McWilliam"

  }
  	
%Generation of midi files can be removed here.
%  \midi {}

} %end score
