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
    \bar ".|"
    		
    % Part 1
    \grg f16 d \grg a f \grg d a \grg f a
    \grg b d \grG d a \grg b d \grg e g
    \grA f d \grg a f \grg d a \grg f a
    \grg b d \grg e f \dblg g8 A
    \break
    f16 d \grg a f \grg d a \grg f a
    \grg b d \grG d a \grg b d \grg e g
    A f \grg a A g e \grg c d
    \grg e a \grd c e \thrwd d4
    \bar "|.-.|" 
    \break

    % Part 2
    \dblA A4 \grg A16 d \grg f A
    g e \grg c d \grg e a \grd c e
    \grg f A d f A d \grg f d
    \grg f a \grg c d \dble e8 [ \dblg g ]
    \break
    \dblA A4 \grg A16 d \grg f A
    g e \grg c d \grg e a \grd c e
    A f \grg a A g e \grg c d
    \grg e a \grd c e \thrwd d4
    \bar "|."

    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "Hornpipe"
    piece = "Airlies Big Day"
    composer = "Murray Blair"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
