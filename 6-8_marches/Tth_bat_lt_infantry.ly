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
 \partial 8 \grg a8 |
 \thrwd d8. [ f16 \grg a8 ] \thrwd d4 f8 |
 \grg f8. [ g16 A8 ] \dblf f8. [ e16 d8 ] |
 \grg c4 \grip e8 \grg a8. [ \grd c16 e8 ] |
 \grg e8. [ f16 g8 ] \tdblf f8. [ e16 d8 ] |
 \dbld d8. [ f16 \grg a8 ] \thrwd d4 f8 |
 \grg f8. [ g16 A8 ] \dblf f8. [ e16 d8 ] |
 \grg c4 \thrwd e8 \grg a8. [ \grd c16 e8 ] |
    \thrwd d4. \wslurd d4 \break }
    
    % Part 2
    \repeat volta 2 {    
 \dblg g8 |
 \dblA A4 f8 \thrwd d4 f8 |
 \grg f16 [ A8. f8 ] \dblf f8. [ e16 d8 ] |
 \grg c4 \grip e8 \grg a8. [ \grd c16 e8 ] |
 \grg e8. [ f16 g8 ] \tdblf f8. [ e16 d8 ] |
 \dblA A4 f8 \thrwd d4 f8 |
 \grg f16 [ A8. f8 ] \dblf f8. [ e16 d8 ] |
 \grg c4 \thrwd e8 \grg a8. [ \grd c16 e8 ] |
    \thrwd d4. \wslurd d4 \break }
    
    % Part 3
    \repeat volta 2 {
 \grg a8 |
 \thrwd d4. \grg a8. [ d16 f8 ] |
 \grg f16 [ A8. f8 ] \dblf f8. [ e16 d8 ] |
 \dblc c4. \grg a8. [ \grd c16 e8 ] |
 \grg e8. [ f16 g8 ] \tdblf f8. [ e16 d8 ] |
 \dbld d4. \grg a8. [ d16 f8 ] |
 \grg f16 [ A8. f8 ] \dblf f8. [ e16 d8 ] |
 \grg c4 \thrwd e8 \grg a8. [ \grd c16 e8 ] |
    \thrwd d4. \wslurd d4 \break }
    
    % Part 4
    \repeat volta 2 {
 \dblg g8 |
 A4 \grip A8 a8. [ d16 f8 ] |
 \grg f16 [ A8. f8 ] \dblf f8. [ e16 d8 ] |
 \grg c4 \grip e8 \grg a8. [ \grd c16 e8 ] |
 \grg e8. [ f16 g8 ] \tdblf f8. [ e16 d8 ] |
 A4 \grip A8 a8. [ d16 f8 ] |
 \grg f16 [ A8. f8 ] \dblf f8. [ e16 d8 ] |
 \grg c4 \thrwd e8 \grg a8. [ \grd c16 e8 ] |
    \thrwd d4. \wslurd d4 \break }

    } %end staff
    
  \header {
    meter = "March"
    piece = "10th. Bat. Lt. Infantry crossing the Rhine"
    composer = "PM Donald Shaw Ramsay"
    parttagline = "Copied by John S. McWilliam"

  }
  
%Generation of midi files can be removed here.
%  \midi {}

} %end score
