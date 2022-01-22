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

\defineBarLine ":|.-.|" #'(":|." ".|" ":|.")

\score {

    \new Staff  {
    \time 3/4	    
    \tempo 4 = 80   
    \hideKeySignature
    \bar ".|:"
    		
    % Part 1
    \repeat volta 2 {
    \partial 4 {\grg a4} 
 \thrwd d4 \grg f4 A8 [ g8 ] 
 \grA f4 d4 \grG d4 
 \dble e4 g8 [ f8 ] \grg e8 [ d8 ] 
 \dblc c4 \gre a4 \wbirl a4 
 \thrwd d4 \grg f8 [ e8 ] \grg d8 [ c8 ] 
 \dblb b4 \gre G4 \grd b4 
 \grg a4 \thrwd d4 c4 
 \set Score.measureLength = #(ly:make-moment 2/4)
 \thrwd d2 
 \bar ":|.-.|"
 \break
    } %end repeat

    % Part 2

 \set Score.measureLength = #(ly:make-moment 1/4)    
 \grg f8 [ g8 ] 
 \set Score.measureLength = #(ly:make-moment 3/4) 
 \dblA A4 f8 [ g8 ] A4 
 \grg A4 \grf g4 f4 
 \dblg g4 e8 [ f8 ] g4 
 \grf g4 f4 e4 
 \dblf f4 d8 [ e8 ] f4 
 \grg f4 e4 d4 
 \dblc c4 A4 g4 
 \set Score.measureLength = #(ly:make-moment 2/4)
 \dblA A2 
 \break

 \set Score.measureLength = #(ly:make-moment 1/4)
  a4
 \set Score.measureLength = #(ly:make-moment 3/4)
 \thrwd d4 \grg f4 A8 [ g8 ] 
 \grA f4 d4 \grG d4 
 \dble e4 g8 [ f8 ] \grg e8 [ d8 ] 
 \dblc c4 \gre a4 \wbirl a4 
 \thrwd d4 \grg f8 [ e8 ] \grg d8 [ c8 ] 
 \dblb b4 \gre G4 \grd b4 
 \grg a4 \thrwd d4 c4 
 \thrwd d2 \bar "|." \break 

    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "Air"
    piece = "Ash Grove"
    composer = "Traditional (Arr. Ed Krintz)"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
