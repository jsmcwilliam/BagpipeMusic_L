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
    \time 6/8	    
    \tempo 4 = 80   
    \hideKeySignature
    \quarterBeaming
    \bar ".|:"		

    % Part 1
    \repeat volta 2 {
    \partial 8 f8 |
 \grg a4 \taor a8 \dblb b4 \grG a8 |
 \grg a8. [ d16 \grg f8 ] \dblA A4 g8 |
 \tdblf f8 [\grg e f] \grg a8. [ d16 \grg f8 ] |
 A8. [ f16 \grg d8 ] \dble e4 

 \set Score.repeatCommands = #'((volta "2. --2."))  \grg f8 |
 \grg a4 \taor a8 \dblb b4 \grG a8 |
 \grg a8. [ d16 \grg f8 ] \dblA A4 g8 |
 \grA f8. [ g16 A8 ] \hdble e8. [ c16 \grd a8 ] |
 \thrwd d4. \wslurd d4 
 \set Score.repeatCommands = #'((volta #f)) 
    \break }

    % Part 2
    \repeat volta 2 {
     \dblg g8 |
 \grA f8. [ g16 A8 ] \thrwd d4 e8 |
 \dblf f8. [ e16 \grg d8 ] \dblA A4 f8 |
 \dble e4 \grip e8 \grg a8. [ b16 \grip c8 ] |
 \grg e8. [ g16 f8 ] \dble e4 

 \set Score.repeatCommands = #'((volta "1"))  \dblg g8 |
 \grA f8. [ g16 A8 ] \thrwd d4 e8 |
 \dblf f8. [ e16 \grg d8 ] \dblA A4 g8 |
 \grA f8. [ g16 A8 ] \hdble e8. [ c16 \grd a8 ] |
 \thrwd d4. \wslurd d4 
 \set Score.repeatCommands = #'((volta #f)) 
 \break }

    % Part 3
    \repeat volta 2 {
     \grg f8 |
 \grg a8. [ d16 \grg f8 ] \dblf f8. [ e16 \grg f8 ] |
 \grg a8. [ d16 \grg f8 ] \dblA A4 g8 |
 \hdblf f8. [ e16 \grg d8 ] \grg a8. [ d16 \grg f8 ] |
 \dble e4. \gra e4 

 \set Score.repeatCommands = #'((volta "2. --4."))  \grg f8 |
 \grg a8. [ d16 \grg f8 ] \dblf f8. [ e16 \grg f8 ] |
 A8. [ f16 \grg d8 ] \slurb b4 g8 |
 \grA f8. [ g16 A8 ] \hdble e8. [ c16 \grd a8 ] |
 \thrwd d4. \wslurd d4 
 \set Score.repeatCommands = #'((volta #f)) 
 \break }

    % Part 4
    \repeat volta 2 {
     \dblg g8 |
 A8. [ f16 \grg d8 ] \grg a8. [ d16 f8 ] |
 \dblf f8. [ e16 \grg d8 ] \slurb b4 d8 |
 \grg a8. [ d16 \grg f8 ] A8. [ f16 \grg d8 ] |
 \dble e4. \gra e4 

 \set Score.repeatCommands = #'((volta "1"))  \dblg g8 |
 A8. [ f16 \grg d8 ] \grg a8. [ d16 \grg f8 ] |
 \dblf f8. [ e16 \grg d8 ] \slurb b4 g8 |
 \grA f8. [ g16 A8 ] \hdble e8. [ c16 \grd a8 ] |
 \thrwd d4. \wslurd d4 
 \set Score.repeatCommands = #'((volta #f)) 
    \break }

    } %end staff
    
  \header {
    meter = "March"
    piece = "Dovecote Park"
    composer = "J. Braidwood"
    parttagline = "Copied by John S. McWilliam"

  }

%Generation of midi files can be removed here.
%  \midi {}

} %end score
