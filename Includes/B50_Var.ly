\version "2.22.1"

%Mackintoshs Lament variables: Kilberry Book No. 50 (Variable prefix = B)


B_common = {
% \hideKeySignature
  \bagpipeKey
  \time 2/4
  \override TextScript.staff-padding = #2
  \override Script #'padding = #1
  \override TextScript #'padding = #2 % horizontal text alignment
  \override Score.VoltaBracket.shorten-pair = #'(0.5 . 0)
  \override Score.VoltaBracket.shorten-pair = #'(0 . 0.5)
} %end common

tr = ^\markup {\italic tr}

B_Secondtime = {
	  \once \override Staff.TextSpanner.outside-staff-priority = #650
          \once \override TextSpanner.bound-details.left.text = 
          \markup\concat {
              \draw-line #'(0 . -2)
              \hspace #-.1
              \column {
                \draw-line #'(20 . 0)
                \line { \hspace #1 \raise #.7 "2." }
              }
            }
          %\once \override TextSpanner.font-size = #-2
          \once \override TextSpanner.style = #'line
          \once \override TextSpanner.thickness = #1.5
          \once \override TextSpanner.bound-details.left.padding = #-1
          \once \override TextSpanner.bound-details.right.padding = #-3.2
          \once \override TextSpanner.bound-details.right.text = 
          \markup \draw-line #'(0 . -2)
            } %end Secondtime

B_VarIIIfd = { 
      \set Score.measureLength = #(ly:make-moment 3 4)
      f4_\txtaorcrun
      \set Score.repeatCommands = #'((volta "S"))  
      \grg d4
      \once \hide Score.BarLine
      \once \hide Score.SpanBar
      \set Score.repeatCommands = #'((volta #f)(volta "D.") end-repeat)
      d4_\txtaorcrun
      \set Score.repeatCommands = #'((volta #f)) 
      \set Score.measureLength = #(ly:make-moment 2 4) 
           }

B_VarIIIeb = { 
      \set Score.measureLength = #(ly:make-moment 3 4)
      e4_\txtaorcrun
      \set Score.repeatCommands = #'((volta "S"))  
      \grg b4
      \once \hide Score.BarLine
      \once \hide Score.SpanBar
      \set Score.repeatCommands = #'((volta #f)(volta "D.") end-repeat)
      b4_\txtaorcrun
      \set Score.repeatCommands = #'((volta #f)) 
      \set Score.measureLength = #(ly:make-moment 2 4) 
           }

B_VarIIIfb = { 
      f4_\txtaorcrun\startTextSpan f_\txtaorcrun 
      \set Score.measureLength = #(ly:make-moment 3 4)
      f4_\txtaorcrun
      \set Score.repeatCommands = #'((volta "S"))  
      \grg b4
      \once \hide Score.BarLine
      \once \hide Score.SpanBar
      \set Score.repeatCommands = #'((volta #f)(volta "D.") end-repeat)
      b4_\txtaorcrun\stopTextSpan
      \set Score.repeatCommands = #'((volta #f)) 
      \set Score.measureLength = #(ly:make-moment 2 4) 
           }
      
B_VarIIIda = { 
      \set Score.measureLength = #(ly:make-moment 3 4)
      d4_\txtaorcrun
      \set Score.repeatCommands = #'((volta "S"))  
      \grg a4
      \once \hide Score.BarLine
      \once \hide Score.SpanBar
      \set Score.repeatCommands = #'((volta #f)(volta "D.") end-repeat)
      a4_\txtaorcrun
      \set Score.repeatCommands = #'((volta #f)) 
      \set Score.measureLength = #(ly:make-moment 2 4) 
           }
      
B_written = {
           \B_common \set Staff.instrumentName = #"Written"
	   d8\tr \bar "|"
	   b4\tr \bar "|"
	   f4\mordent s8 \bar "|."
          }

B_played =  {
           \B_common \set Staff.instrumentName = #"Played"
	   \pthrwd d8 s8
	   \grip b4 
	   \thrwf f4
          }
