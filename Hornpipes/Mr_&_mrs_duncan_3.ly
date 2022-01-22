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
    \partial 8 {\grg d16 b}
    \grg a d \grG d e \grg e d \grG d f
    g a \grg f a \grg e d \grG d b
    \grg G b \grg d b \grg a d \grG d a~
    a \grg c \grG c d \dble e8
    \set Score.repeatCommands = #'((volta "2. --2"))
    \grg d16 b \break

    \grg a d \grG d e \grg e d \grG d f
    g a \grg f a \grg e d \grG d b
    \grg G b \grg d b \grg a d \grG d a
    \grg c d \grG d c \thrwd d8
    \set Score.repeatCommands = #'((volta #f)) 
    \break
    } %end repeat

    % Part 2
    \repeat volta 2 {
    \grg f16 g
    A a \grA g a \grg f d \grG d f
    \dblg g8 \grA f16 d \grg e d \grG d b
    \grg G b \grg d b \grg a d \grG d a~
    a \grg c \grG c d \dble e8
    \set Score.repeatCommands = #'((volta "1."))
    \grg f16 g \break

    A a \grA g a \grg f d \grG d f
    \dblg g8 f16 d \grg e d \grG d b
    \grg G b \grg d b \grg a d \grG d a
    \grg c d \grG d c \thrwd d8
    \set Score.repeatCommands = #'((volta #f)) 
    \break
    } %end repeat
%{    
    % Part 3
    \repeat volta 2 {
    \grg d16 e
    \grg e [ f \gre f \gbirl a~ ] a f \grg f a
    g a \grg f a \grg e d \grG d e
    \grg e [ f \gre f \gbirl a~ ] a f \grg f a
    \grg e [ a \gbirl a8 ] \grg e16 a \grg d e
    \break

    \grg f a \grG a \grg a~ a f \grg f b
    \dblg g8 \grA f16 d \grg e d \grG d b
    \grg G b \grg d b \grg a d \grc d a
    \grg c d \grG d c \thrwd d8
    \break
    } %end repeat

    % Part 4
    \grg f16 g
    A f \grG f \grg f~ f A \grg A f
    \dblg g8 \grA f16 d \grg e d \grg e f
    \grA g d a \grg f d a \grg e d
    a e \grg d a \grg e a \grg d e
    \break
    
    A f \grG f \grg f~ f A \grg A f
    \dblg g8 \grA f16 d \grg e d \grG d b
    \grg G b \grg d b \grg a d \grG d a
    \grg c d \grG d c \thrwd d8 \grg f16 g
    \break

    A f \gre f \grg f~ f A \grg A f
    \dblg g8 \grA f16 d \grg e a \grg d b
    \grg G \grd b \grG b a \grd c \grG c \grg b d
    \grc d c \grg e \grG e \grg d f \gre f g
    \break

    A g \grf g \grA g f \gre f \grg f e
    \gra e \grg e d \grc d \grg d c \grG c b
    \grg G b d b \grg a d \grc d a
    \grg c d \grc d c \thrwd d8
    \bar "|."
%}    
    } %end staff
    
  \header {
    meter = "Hornpipe"
    piece = "Mr. & Mrs. Duncans Golden Wedding"
    composer = "Gordon Duncan"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
