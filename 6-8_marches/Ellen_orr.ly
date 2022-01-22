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
    \time 6/8	    
    \tempo 4 = 80   
    \hideKeySignature
    \quarterBeaming
    \bar ".|:"

    % Part 1
    \repeat volta 2 {
    \partial 8	A8 |
    \hdblc c8. [ b16 \grG a8 ] \grg c16 [ e8. \gra e8 ] |
    \grg f8. [ g16 A8 ] \hdblc c8. [ b16 \grG a8 ] |
    \grg d8. [ b16 \grG b8 ] \dblb b4 \grg c8 |
    \thrwd d8. [ e16 \grg c8 ] \dbld d8. [ c16 ] b8 
%    \break
    \set Score.repeatCommands = #'((volta "2. --2."))  
    \hdblc c8. [ b16 \grG a8 ] \grg c16 [ e8. \gra e8 ] |
    \grg f8. [ g16 A8 ] \hdblc c8. [ b16 \grG a8 ] |
    \grg e8. [ c16 a8 ] \dblb b4 e8 |
    \grg a4. \wbirl a4 \set Score.repeatCommands = #'((volta #f)) \break }

    % Part 2
    \repeat volta 2 {
    \dblg g8 |
    \dblA A4. \hdblc c4 e8 |
    \grg f8. [ A16 e8 ] \dblc c8. [ b16 \grG a8 ] |
    \dblA A4 e8 \dblc c4 e8 |
    \thrwd d8. [ e16 \grg c8 ] \dbld d8. [ c16 b8 ] 
%    \break

    \set Score.repeatCommands = #'((volta "1"))  \dblA A4. \hdblc c4 e8 |
    \grg f8. [ A16 e8 ] \dblc c8. [ b16 \grG a8 ] |
    \grg e8. [ c16 a8 ] \dblb b4 e8 |
    \grg a4. \wbirl a4 \set Score.repeatCommands = #'((volta #f)) \break }

    % Part 3
    \repeat volta 2 {
    e8 |
    \grg c4 \taor c8 \dblc c4 d8 |
    \grg e8. [ f16 \grg e8 ] \dblc c8. [ b16 \grG a8 ] |
    \grg b4 \taor b8 \dblb b4 \grg c8 |
    \thrwd d8. [ e16 \grg c8 ] \dbld d8. [ c16 b8 ] 
%    \break

    \set Score.repeatCommands = #'((volta "2. ..4."))  
    \grg c4 \taor c8 \dblc c4 d8 |
    \grg e8. [ f16 \grg e8 ] \dblc c8. [ b16 \grG a8 ] |
    \grg e8. [ c16 a8 ] \dblb b4 e8 |
    \grg a4. \wbirl a4 \set Score.repeatCommands = #'((volta #f)) \break }

    % Part 4
    \repeat volta 2 {
    \dblg g8 |
    A4 \grip A8 c16 [ e8. \gra e8 ] |
    \grg f8. [ A16 e8 ] \dblc c8. [ b16 \grG a8 ] |
    \grg e8. [ c16 a8 ] \wbirl a4 \grg c8 |
    \thrwd d8. [ e16 \grg c8 ] \dbld d8. [ c16 b8 ] 
%    \break

    \set Score.repeatCommands = #'((volta "1"))  
    A4 \grip A8 c16 [ e8. \gra e8 ] |
    \grg f8. [ A16 e8 ] \dblc c8. [ b16 \grG a8 ] |
    \grg e8. [ c16 a8 ] \dblb b4 e8 |
    \grg a4. \wbirl a4 \set Score.repeatCommands = #'((volta #f)) \break }

    } %end staff
    
  \header {
    meter = "March"
    piece = "Ellen Orr"
    composer = "W. Bryson (G.U.O.T.C)"
    parttagline = "Copied by John S. McWilliam"

  }
  
%Generation of midi files can be removed here.
%  \midi {}

} %end score
