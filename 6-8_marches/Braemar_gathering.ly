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
    \partial 8 e8 |
    \grg a4 \taor a8 \grg a8. [ b16 c8 ] |
    \grg a8. [ \grd c16 e8 ] \grg f8. [ e16 c8 ] |
    \grg b4 \taor b8 \grg b8. [ \grd c16 \gre a8 ] |
    \grg b8. [ \grd c16 e8 ] \grg f8. [ g16 A8 ]
%    \break

    a4 \taor a8 \grg a8. [ b16 c8 ] |
    \grg a8. [ \grd c16 e8 ] \grg f8. [ e16 c8 ] |
    \grg f16 [ A8. f8 ] \grg e8. [ b16 \grd c8 ] |
    \grg a4 \taor a8 \wbirl a4 \break }

    % Part 2
    \repeat volta 2 {
    e8 |
    \grg f4 f8 \grg f8. [ g16 A8 ] |
    f4 f8 \grg f4 c8 |
    e4 e8 \grg f8. [ g16 A8 ] |
    e4 e8 \dble e4 b8 
%    \break

    \grg c4 \taor c8 \dblc c8. [ b16 \grG a8 ] |
    \grg a4 \taor a8 \grg b8. [ \grd c16 e8 ] |
    \grg f16 [ A8. f8 ] \grg e8. [ b16 \grd c8 ] |
    \grg a4 \taor a8 \wbirl a4 \break }

    % Part 3
    \repeat volta 2 {
    e8 |
    \grg a4 \taor a8 \dblc c8. [ b16 \grG a8 ] |
    \grd c16 [ e8. \grg a8 ] \dblc c8. [ b16 \grG a8 ] |
    \grg b4 \taor b8 \grg b8. [ \grd c16 e8 ] |
    \grg f8. [ g16 A8 ] \hdblf f8. [ e16 c8 ] 
%    \break

    \grg a4 \taor a8 \dblc c8. [ b16 \grG a8 ] |
    \grd c16 [ e8. \grg a8 ] \grg c4 e8 |
    \grg f16 [ A8. f8 ] \grg e8. [ b16 \grd c8 ] |
    \grg a4 \taor a8 \wbirl a4 \break }

    % Part 4
    \repeat volta 2 {
    \dblg g8 |
    A8. [ f16 \gre f8 ] \grg f8. [ e16 f8 ] |
    \grg f16 [ A8. f8 ] \grg f8. [ e16 c8 ] |
    \grg f8. [ e16 \gra e8 ] \grg e8. [ c16 e8 ] |
    \grg f8. [ e16 b8 ] \dble e8. [ c16 b8 ] | 
%    \break

    \dblc c8. [ b16 \grG a8 ] \grg a4 \taor a8 |
    \grg b8. [ \grd c16 e8 ] \grg f4 e8 |
    \grg f16 [ A8. f8 ] \grg e8. [ b16 \grd c8 ] |
    \grg a4 \taor a8 \wbirl a4 \break }

    } %end staff
    
  \header {
    meter = "March"
    piece = "Braemar Gathering"
    composer = "Trad."
    parttagline = "Copied by John S. McWilliam"

  }
  
%Generation of midi files can be removed here.
%  \midi {}

} %end score
