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

\score {

    \new Staff  {
    \time 2/4	    
    \tempo 4 = 80 
    \hideKeySignature
    \bar ".|:"
    		
    % Part 1
    \repeat volta 2 {
    \partial 8 {a8} 
 \thrwd d8. [ c16 ] \grg b8 [ \grG a8 ] 
 \thrwd d4 \gre a8 [ \thrwd d8 ] 
 \grg f8 [ d8 ] \dblg g8 [ f8 ] 
 \grg f8 [ e8 ] \gra e8 [ \dblg g8 ] 
 f16 [ A8. ] \hdblf f8 [ A8 ] 
 a4 \thrwd d8. [ e16 ] 
 \grg f4 \dblg g8 [ e8 ] 
 \thrwd d4 \wslurd d8 
 \break \bar ":|.-.|"
    } %end repeat

    % Part 2
 \dblg g8 
 f16 [ A8. ] \hdblf f8 [ A8 ] 
 a4 \thrwd d8. [ e16 ] 
 \grg f8 [ d8 ] \dblg g8 [ f8 ] 
 \grg f8 [ e8 ] \gra e8 [ \dblg g8 ] 
 f16 [ A8. ] \hdblf f8 [ A8 ] 
 a4 \thrwd d8. [ e16 ] 
 \grg f4 \dblg g8 [ e8 ] 
 \thrwd d4 \wslurd d8 [ \dblg g8 ]
 \break

 f16 [ A8. ] \hdblf f8 [ A8 ] 
 a4 \thrwd d8. [ e16 ] 
 \grg f8 [ d8 ] \dblg g8 [ f8 ] 
 \grg f8 [ e8 ] \gra e8 [ \dblg g8 ] 
 A8. [ g16 ] \hdblf f8 [ A8 ] 
 a4 \thrwd d8. [ e16 ] 
 \grg f4 \dblg g8 [ e8 ] 
 \set Score.measureLength = #(ly:make-moment 3/8) 
 \thrwd d4 \wslurd d8 \bar "|.-.|:" \break

    % Part 3
 \set Score.repeatCommands = #'(start-repeat)
 \set Score.measureLength = #(ly:make-moment 1/8) 
 a8 
 \set Score.measureLength = #(ly:make-moment 2/4)
 \thrwd d8. [ c16 ] \grg b8 [ \thrwd d8 ] 
 \grg a4 \wbirl a8. [ b16 ] 
 \thrwd d8. [ e16 ] \grg f8 [ A8 ] 
 \hdble e4 \gra e8 [ \dblg g8 ] 
 f16 [ A8. ] \hdblf f8 [ A8 ] 
 a4 \thrwd d8. [ e16 ] 
 \grg f4 \dblg g8 [ e8 ] 
 \thrwd d4 \wslurd d8 
 \set Score.repeatCommands = #'(end-repeat)
 \break

    % Part 4
    \repeat volta 2 {
 \dblg g8 
 A4 \grip A8 [ f8 ] 
 \dblA A4 \hdblf f8. [ g16 ] 
 A4 \grip A8 [ f8 ] 
 \dble e4 \gra e8 [ \dblg g8 ] 
 f16 [ A8. ] \hdblf f8 [ A8 ] 
 a4 \thrwd d8. [ e16 ] 
 \grg f4 \dblg g8 [ e8 ] 
 \thrwd d4 \wslurd d8
 \break
    } %end repeat

    } %end staff
    
  \header {
    meter = "2/4 March"
    piece = "Brown Haired Maiden"
    composer = "Traditional (Arr. A. Jones)"
    parttagline = "Copied by John S. McWilliam"
  	}

% \midi {} %Generation of midi files option.

}%end score
