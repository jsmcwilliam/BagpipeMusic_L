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

\defineBarLine "|.-.|" #'("|." ".|" "|.")
\defineBarLine ":|.-.|" #'(":|." ".|" "|.")
\defineBarLine "|.-.|:" #'("|." ".|:" "|.")

\score {

    \new Staff  {
    \time 2/2	    
    \tempo 4 = 80   
    \hideKeySignature
    \bar ".|"
    		
    % Part 1
    \partial 8 A8
    c16 e8. \gra e8. f16 \dble e8. c16 A8. c16 |
    \dblg g4 A8. e16 \grg f8. b16 \grG b8. d16 |
    \grg c16 e8. \gra e8. g16 \dble e8. c16 A8.c16 |
    \grg b8. c16 \dbld d8. b16 \grg c8. \grd a16 \gre a8. A16 | 
    
    c16 e8. \gra e8. f16 \dble e8. c16 \dblA A4 |
    \catchc c4 A8. e16 \grg f8. b16 \grG b8. d16 |
    \grg c4 \grip e16 f8. \dble e8. c16 A8.c16 |
    \grg b8. c16 \dbld d8. b16 \grg c8. \grd a16 \gre a8. A16 \bar "|.-.|" 
    \break
    
    % Part 2
    \birl a4 \grg c16 \grd a8. \grg b16 \grd a8. \grg c16 \grd a8. |
    \gbirl a4 \grg c16 \grd a8. \grg b8. \grd G16 \gre G8. A16 |
    \birl a4 \grg c16 \grd a8. \grg b16 \grd a8. \grg c16 \grd a8. |
    \grg e8. f16 \dble e8. d16 \grg c8. \grd a16 \gre a8. A16 |
    
    \birl a4 \grg c16 \grd a8. \grg b16 \grd a8. \grg c16 \grd a8. |
    \gbirl a4 \grg c16 \grd a8. \grg b8. \grd G16 \gre G8. A16 |
    e8. c16 \dbld d8. b16 \grg c16 \grd a8. \grg b16 \grd G8. |
    \grg a8. \grd a16 \gre a8. b16 \grg c8. \grd a16 \gre a8. b16 \bar "|.-.|:"
    \break
    
    % Part 3
    \repeat volta 2 {
    \thrwd d4 \grg d16 e8. \grg d8. b16 \dblg g4 |
    \catchb b4 \dblg g4 A \birl a8. b16 |
    \thrwd d4 \grg d16 e8. \grg d8. b16 g8. b16 |
    \set Score.measureLength = #(ly:make-moment 17/16)
    \grg a8. b16 \grg d16 a8. \grg b8. [\grd G16 \gre G8. 
    \set Score.repeatCommands = #'((volta "1."))
    b16] 
    \set Score.repeatCommands = #'((volta #f))
    \once \hide Score.BarLine
    \once \hide Score.SpanBar
    \set Score.repeatCommands = #'((volta #f)(volta "2.") end-repeat)
    A16
    \set Score.repeatCommands = #'((volta #f))
    \bar ":|.-.|" \break
    } %end repeat
    
    % Part
    \set Score.measureLength = #(ly:make-moment 2/2)
    a8. [d16 \grg f8. d16] \dble e8. [d16 \grg f8. d16] |
    a8. [d16 \grg f8. d16] \dble e8. [d16 \grg b16 d8.] |
    a8. [d16 \grg f8. d16] \dble e8. [d16 \grg f8. d16] |    
    A4 \grip A8. g16 \hdblf f8. d16 \grc d8. A16 |
    a8. [d16 \grg f8. d16] \dble e8. [d16 \grg f8. d16] |
    a8. [d16 \grg f8. d16] \dble e8. [d16 \grg b16 d8.] |
    \grg f8. e16 \dbld d16 c8. \grg d8. c16 \grg b16 \grd a8. |
    \grg b8. c16 \grg d8. e16 \grg f8. d16 \grc d8. A16 \bar "|."
    \break
    } %end staff
    
  \header {
    meter = "Reel"
    piece = "Lord MacDonald"
    composer = "Traditional"
    parttagline = "Copied by John S. McWilliam"
  }
% \midi {} %Generation of midi files option.

}%end score

