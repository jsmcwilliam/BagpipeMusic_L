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
    \partial 8 {
    \set Score.repeatCommands = #'((volta "2."))
    a8 |
    \set Score.repeatCommands = #'((volta #f)) }
 \thrwd d4 \grg a8. [ d16 ] \grg b16 [ d8. ] \grg a8. [ b16 ] |
 \thrwd d4 \grg f8. [ d16 ] \dble e8. [ d16 ] \grg b8. [ c16 ] |
 \thrwd d4 \grg a8. [ d16 ] \grg b16 [ d8. ] \grg a8. [ g16 ] |
 \set Score.measureLength = #(ly:make-moment 7/8)
 \grA f16 [ A8. ] {e16 [ ( f16^\markup {3} g8 ] )} \hdblf f8 [ e8 ] \thrwd d8 |
 \break
    } %end repeat

    % Part 2
    \set Score.measureLength = #(ly:make-moment 1/8)
 a8 
    \set Score.measureLength = #(ly:make-moment 4/4)
 \thrwd d4 \grg f8. [ d16 ] A8. [ d16 ] \grg f8. [ d16 ] |
 \grg c16 [ \grd a8. ] \grg e8. [ a16 ] \grg f8. [ a16 ] \grg e8. [ c16 ] |
 \thrwd d4 \grg f8. [ d16 ] A8. [ d16 ] \grg f8. [ d16 ] |
 \dble e4 \grip e8. [ g16 ] \hdblf f8 [ e8 ] \thrwd d8 [ a8 ]  
 \break

 \thrwd d4 \grg f8. [ d16 ] A8. [ d16 ] \grg f8. [ d16 ] |
 \grg c16 [ \grd a8. ] \grg e8. [ a16 ] \grg f8. [ a16 ] \grg e8. [ c16 ] |
 \thrwd d4 {e16 [ ( f16^\markup {3} g8 ] )} A8. [ e16 ] \grg f8. [ d16 ] |
 \dble e4 \grip e8. [ g16 ] \hdblf f8 [ e8 ] \thrwd d8 
 \bar "|." \break 

    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "Strathspey"
    piece = "Inverness Rant"
    composer = "Traditional"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
