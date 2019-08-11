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
\include "../Includes/BP_format16.ily" 	

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
    \partial 8 e8 |
 \dblf f4 a8 \grg a4 \taor a8 |
 \grg b16 [ \grd G8. \grd b8 ] \grg a8. [ e16 f8 ] |
 \dblg g4 e8 \tdblf f4 d8 |
 \grg e8. [ f16 ] d8 \dblc c8. [ b16 \grG a8 ] |
 \dblf f4 a8 \grg a4 \taor a8 |
 \grg b16 [ \grd G8. \grd b8 ] \dblg g4. |
 \hslurb b8. [ e16 d8 ] \dblc c8. [ b16 \grd c8 ] |
 \thrwd d4. \dbld d4 
    \break }

    % Part 2
    \repeat volta 2 {
     \dblg g8 |
 \dblA A4 f8 \dblg g4 e8 |
 \grg f16 [ A8. g8 ] \hdblf f8. [ e16 d8 ] |
 \dblg g4 e8 \dblf f4 d8 |
 \grg e8. [ f16 d8 ] \dblc c8. [ b16 \grG a8 ] |
 \dblA A4 f8 \dblg g4 e8 |
 \grg f16 [ A8. g8 ] \hdblf f8. [ e16 d8 ] |
 \slurb b8. [ e16 d8 ] \dblc c8. [ b16 \grd c8 ] |
 \thrwd d4. \dbld d4
    \break }

    % Part 3
    \repeat volta 2 {
     e8 |
 \dblf f8. [ e16 \grg f8 ] \grg a4 \taor a8 |
 \grg b16 [ d8. c8 ] \grg b16 [ \grd G8. \grd b8 ] |
 \grg a4 \taor a8 \dblf f8. [ e16 d8 ] |
 \grg e8. [ f16 d8 ] \dblc c8. [ b16 \grG a8 ] |
 \set Score.repeatCommands = #'((volta "2. --4."))  
 \dblf f8. [ e16 \grg f8 ] \grg a4 \taor a8 |
 \grg d16 [ \grd G8. \grd b8 ] \dblg g4. |
 \hslurb b8. [ e16 d8 ] \dblc c8. [ b16 \grd c8 ] |
 \thrwd d4. \dbld d4 \set Score.repeatCommands = #'((volta #f)) 
    \break }

    % Part 4
    \repeat volta 2 {
     \dblg g8 |
 A4 \grip A8 \hdblf f8. [ e16 d8 ] |
 \grg f16 [ A8. g8 ] \hdblf f8. [ e16 d8 ] |
 \dblg g8. [ A16 g8 ] \hdblf f8. [ e16 d8 ] |
 \grg e8. [ f16 d8 ] \dblc c8. [ b16 \grG a8 ] |
 \set Score.repeatCommands = #'((volta "1"))  
 A4 \grip A8 \hdblf f8. [ e16 d8 ] |
 \grg f16 [ A8. g8 ] \hdblf f8. [ e16 d8 ] |
 \slurb b8. [ e16 d8 ] \dblc c8. [ b16 \grd c8 ] |
 \thrwd d4. \dbld d4 \set Score.repeatCommands = #'((volta #f)) 
    \break }

    } %end staff
    
  \header {
    meter = "March"
    piece = "Redford Cottage"
    composer = "Traditional"
    parttagline = "Copied by John S. McWilliam"

  }
  
%Generation of midi files can be removed here.
%  \midi {}

} %end score
