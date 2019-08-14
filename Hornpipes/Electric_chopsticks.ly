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
    \grg c8. [ d16 ] \grg c [ b \grg a b ] 
    c [ \gre c \grG c d ] \grg c [ b \grg a c ] 
    \grd d8. [ e16 ] \grg d [ c \grg b c ] 
    \grg d [ G \grg b d ] \dble e [ d \grg b A ]  \break

    \grg c8. [ d16 ] \grg c [ b \grg a b ] 
    c [ \gre c \grG c d ] \grg c [ b \grg a8 ] 
    \grg G16 [ d \gra d G ] \shakee d8 [ \grg G16 d ] 
    \set Score.measureLength = #(ly:make-moment 5/8)
    \grg b [ e \gra e G ] 
    \set Score.repeatCommands = #'((volta "1"))  \grg a4 
    \once \hide Score.BarLine
    \once \hide Score.SpanBar
    \set Score.repeatCommands = #'((volta #f)(volta "2.") end-repeat) \grg a8 
    \set Score.repeatCommands = #'((volta #f)) 
    \break
    } %end repeat

    % Part 2
    \repeat volta 2 {
     \set Score.measureLength = #(ly:make-moment 1/8)
     c16 [ e ] 
     \set Score.measureLength = #(ly:make-moment 2/4)
     \dble e8. [ A16 ] f [ A e8~ ]
     e [ \dblA A ] f16 [ A e A ] 
     \grc d8. [ e16 ] \grg d [ c \grg b c ] 
     \grg d [ G \grg b d ] \dble e [ d \grg b d ]  \break

     \dble e8. [ A16 ] f [ A e A ] 
     c [ A e A ] f [ A e A ] 
     c [ d \gra d G ] \shakee d8 [ \grg G16 d ] 
     \grg b [ e \gra e G ] \grg a8
     \break
    } %end repeat

    % Part 4

    } %end staff
    
  \header {
    meter = "Hornpipe"
    piece = "Electric Chopsticks"
    composer = "R.S. MacDonald"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
