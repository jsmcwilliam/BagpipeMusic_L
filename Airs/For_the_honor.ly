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

#(allow-volta-hook "|") % enables volta hook outside repeat context

\score {

    \new Staff  {
    \time 4/4	    
    \tempo 4 = 80   
    \hideKeySignature
%    \bar ".|:"
    		
    % Part 1
 \thrwd d2^\markup {\left-align \bold \large {Solo piper slowly, 
			full band drones only.}} A2 
 \thrwd d2 e2 
 \thrwd d4 e4 \grg f4 d4 
 \gre b1^\markup {\left-align \bold \large {Accel. Full band, a tempo}} 
 \thrwd d2 A2 
 \thrwd d2 e2 
 \thrwd d4 e4 \grg f4 d4 
 \gre b2. \grg d8 [ e8 ] 
 \bar "||" \break

    % Part 2
    \bar ".|:"
    \repeat volta 2 {
 \grg f4. \gre f8 \dblA A4. f8 
 \grg f2 e4 \grg d8 [ e8 ] 
 \grg f4 g4 \hdblf f4 d4 
 \dblb b2. a4 
 \grG a4 d4 \slurd d4. b8 
 \grG a4 e4 \gra e4 \grg d8 [ e8 ] 
 \grg f4 g4 \hdblf f4 d4
 \set Score.measureLength = #(ly:make-moment 6 4)
 \dblb b2.
 \set Score.repeatCommands = #'((volta "1"))  \grg d8 [ e8 ]
 \once \hide Score.BarLine
 \once \hide Score.SpanBar
 \set Score.repeatCommands = #'((volta #f) (volta "2.") end repeat) 
 \grG a2 
 \set Score.repeatCommands = #'((volta #f)) 
 \break
    } %end repeat

    % Part 3
 \set Score.measureLength = #(ly:make-moment 4 4)
 \thrwd d2 A2 
 \thrwd d2 e2 
 \thrwd d4 e4 \grg f4 d4 
 \gre b1 
 \thrwd d2 A2 
 \thrwd d2 e2 
 \thrwd d4 e4 \grg f4 d4 
 \gre b2. a4 \bar "||" \break

    % Part 4
    \bar ".|:"
    \repeat volta 2 {
 \wbirl a2 d2 
 \dble e2. d4 
 \dblg g2 f2 
 \dble e2. a4 
 \wbirl a2 d2 
 \dble e2. d4
 \time 3/4
 \once \override Score.VoltaBracket.shorten-pair = #'(0 . 0.3)
 \set Score.repeatCommands = #'((volta "1"))  \slurd d2 a4 
 \set Score.repeatCommands = #'((volta #f))  
 \once \override Score.VoltaBracket.shorten-pair = #'(0.5 . 0)
 \set Score.measureLength = #(ly:make-moment 4/4)
 \set Score.repeatCommands = #'((volta "2"))  
 \slurd d1^\markup {\left-align \bold \large {Band stops after 4}} \fermata 
 \set Score.repeatCommands = #'((volta #f)) 
 \break
    } %end repeat

    % Part 5
 \time 4/4
 \set Score.measureLength = #(ly:make-moment 1 4)
 \grg d8^\markup {\left-align \bold \large {Solo piper, Rit}} [ e8 ]
 \set Score.measureLength = #(ly:make-moment 4 4)
 \grg f4. \gre f8 \dblA A4. f8 
 \grg f2 e2 
 \grg f4 g4 \hdblf f4 d4 
 \time 6/4
 \dblb b2 a2 d2 \bar "|." \break 


    } %end staff
    
  \header {
    meter = "Hymn"
    piece = "For the Honor"
    composer = "Traditional (Arr. S. MacKay)"
    parttagline = "Copied by John S. McWilliam"
  }
% added layout options. See bagpipe_new.ly (\layout) for default settings
  \layout {
 	ragged-last = ##t
        \context {
        \Score
%    	\override MetronomeMark #'extra-offset = #'(-9 . 0)
        \override MetronomeMark #'padding = #'3
  }
}

% \midi {} %Generation of midi files option.

}%end score
