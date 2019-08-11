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

#(allow-volta-hook "|")

\score {

    \new Staff  {
    \time 2/4	    
    \tempo 4 = 80   
    \hideKeySignature
    \quarterBeaming
    \bar ".|:"

    % Part 1
      \repeat volta 2 {
      \partial 8 \dble e16. d32
      \dblc c16. b32 \grg c32 \grd a16. \dble e8 \grg c32 \grd a16.      
      \wbirl a8 A16. [e32 \grg f16. e32] \grg c32 \grd a16.
      \dblc c16. b32 \grg c32 \grd a16. \dble e16. [a32 \grg c32 \grd a16.]
      \grg c32 [e16. \dbld d16. b32] \dblG G8[ \dble e16. d32]
      \break
      \dblc c16. b32 \grg c32 \grd a16. \dble e8 \grg c32 \grd a16.
      \wbirl a8 A16. [e32 \grg f16. e32] \grg c32 \grd a16.
      \grg b16.[ c32 \thrwd d16. e32] \grg f32[ A16. \hdble e16. b32]
      \dblc c8 \gre a \wbirl a \bar ":..:"
       \break }

    % Part 2
    \repeat volta 2 {
    \dblg g8
    A16. g32 A16. f32 \dble e8 \grg c32 \grd a16.
    \wbirl a8 A16. [e32 \grg f16. e32] \grg c32 \grd a16.
    A16. [g32 A16. e32] \grg c32 [e16. \grg a16. e32]
    \dblc c8 \grg b \taor b[ \dblg g]
    \break 

    \set Score.measureLength = #(ly:make-moment 5/8)	    
    A16. g32 A16. f32 \dble e8 
    \set Score.repeatCommands = #'((volta "1.")) 
    \grg c32 [\grd a16.]
    \once \hide Score.BarLine
    \once \hide Score.SpanBar
    \set Score.repeatCommands = #'((volta "2.") end-repeat) 
    \grg c32 [e16.]
    \set Score.repeatCommands = #'((volta #f))
    \set Score.measureLength = #(ly:make-moment 4/8)
    \wbirl a8 A16. e32 \grg f16. e32 \grg c32 \grd a16.
    \grg b16.[ c32 \thrwd d16. e32] \grg f32[ A16. \hdble e16. b32]
    \dblc c8 \gre a \wbirl a 
    \set Score.repeatCommands = #'(end-repeat)
    \break }

    % Part 3

    \repeat volta 2 {
      \dble e16. d32
      \set Score.measureLength = #(ly:make-moment 4/8)
      \dblc c16. b32 \grg c32 \grd a16. \wbirl a8 \dble e16. [a32]
      \grg c32 [e16. A16. e32] \grg f16. [e32 \grg c32 \grd a16.]
      \dblc c16. [b32 \grg c32 \grd a16.] \grg c32 [e16. \grg a16. e32]
      \dblc c8 \grg b \taor b \dble e16. [d32]
      \break
      \dblc c16. b32 \grg c32 \grd a16. \wbirl a8 \dble e16. [a32]
      \grg c32 [e16. A16. e32] \grg f16. [e32 \grg c32 \grd a16.]
      \grg b16.[ c32 \thrwd d16. e32] \grg f32[ A16. \hdble e16. b32]
      \dblc c8 \gre a \wbirl a \bar ":..:"
      \break }

    % Part 4
    \repeat volta 2 {
    \grg c16. d32
    \dble e16. c32 \grg a16. \grd c32 \dble e16. [a32 \grg c32 \grd a16.]
    \thrwd d8 \grg c32 [f16.] \dble e16. [a32 \grg c32 \grd a16.]
    \once \override Score.VoltaBracket.shorten-pair = #'(0 . 0.3)
    \set Score.repeatCommands = #'((volta "1."))
    \wbirl a8 \grg c32 [\grd a16.] \grg c32 [e16. \grg a16. e32]
    \once \override Score.VoltaBracket.shorten-pair = #'(0.5 . 0)
    \set Score.repeatCommands = #'((volta "2.")) 
    \dblf f16. [e32 \grg c32 e16.] \grg a16. [b32 \grd c32 A16.]
    \set Score.repeatCommands = #'((volta #f))
    \dblc c8 \grg b \taor b \grg c16. d32 

    \break
    \dble e16. c32 \grg a16. \grd c32 \dble e16. [a32 \grg c32 \grd a16.]
    \thrwd d8 \grg c32 [f16.] \dble e16. [a32 \grg c32 \grd a16.]
    \grg b16.[ c32 \thrwd d16. e32] \grg f32[ A16. \hdble e16. b32]
    \dblc c8 \gre a \wbirl a 
    }
 
  }%end Staff

  \header {
    meter = "March"
    piece = "Leaving Glenurquhart"
    composer = "W. MacDonald"
    parttagline = "Copied by John S. McWilliam"
    title = ##f
    subtitle = ##f
  }
  	
%Generation of midi files can be removed here.
%  \midi {}

} %end score
