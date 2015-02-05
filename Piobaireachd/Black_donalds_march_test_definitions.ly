\version "2.18.0"

common = {
  \bagpipeKey
  \time 2/4
  \override TextScript.staff-padding = #2
  \override Script #'padding = #1
  \override TextScript #'padding = #2 % horizontal text alignment
}
tr = ^\markup {\italic tr}

written =   { \common \set Staff.instrumentName = #"Written"
	     c4\mordent f4\mordent
	     A4\trill
	     a4^\txleum s4
	     a4^\txtaor
	     a4^\txcrun s4
	     b4^\txcrunam s4
	     c4^\txcrunam s4
}

played =    { \common \set Staff.instrumentName = #"Played"
	     c16 [\grip c8.] \dare f4 \bar "|"
	     \dblA A4 \bar "|"
	     \grg a4 \grip e \bar "|"
	     \grg a8. [\taor a16] \bar "|"
	     \grg a4 \crun e \bar "|"
	     \grg b4 \crunamb e \bar "|"
	     \grg c4 \crunamc e \bar "|."
}	     

VarII =     { \set Score.repeatCommands = #'((volta "1")) 
              f\mordent 
              \set Score.measureLength = #(ly:make-moment 5 8)
              \grg e4. 
              \once \hide Score.BarLine
              \once \hide Score.SpanBar
              \set Score.repeatCommands = #'((volta #f)(volta "2.") end-repeat)
              A4\mordent  
              \set Score.measureLength = #(ly:make-moment 4 4)      
              e4.
              \once \hide Score.BarLine
              \once \hide Score.SpanBar
      	      \set Score.repeatCommands = #'((volta #f) end-repeat) }


VarIIIa =   { \set Score.measureLength = #(ly:make-moment 3 4)
	      \set Score.repeatCommands = #'((volta "S")) 
	      \grg c8\fermata [\grG a]\fermata
	      \once \hide Score.BarLine
	      \once \hide Score.SpanBar
	      \set Score.repeatCommands = #'((volta #f)(volta "D") end-repeat)
	      c4_\txleumtaorcrun
	      \set Score.repeatCommands = #'((volta #f))
	      \set Score.measureLength = #(ly:make-moment 2/4) }
	      
VarIIIb =   { \set Score.measureLength = #(ly:make-moment 3 4)
	      \set Score.repeatCommands = #'((volta "S")) 
	      \grg b8\fermata [\grG a]\fermata
	      \once \hide Score.BarLine
	      \once \hide Score.SpanBar
	      \set Score.repeatCommands = #'((volta #f)(volta "D") end-repeat)
	      b4_\txleumtaorcrun
	      \set Score.repeatCommands = #'((volta #f))
	      \set Score.measureLength = #(ly:make-moment 2/4) }

VarIVa =   { \set Score.measureLength = #(ly:make-moment 3 4)
	      \set Score.repeatCommands = #'((volta "S")) 
	      \grg c8\fermata [\grG a]\fermata
	      \once \hide Score.BarLine
	      \once \hide Score.SpanBar
	      \set Score.repeatCommands = #'((volta #f)(volta "D") end-repeat)
	      c4_\txtaor
	      \set Score.repeatCommands = #'((volta #f))
	      \set Score.measureLength = #(ly:make-moment 2/4) }
	      
VarIVb =   { \set Score.measureLength = #(ly:make-moment 3 4)
	      \set Score.repeatCommands = #'((volta "S")) 
	      \grg b8\fermata [\grG a]\fermata
	      \once \hide Score.BarLine
	      \once \hide Score.SpanBar
	      \set Score.repeatCommands = #'((volta #f)(volta "D") end-repeat)
	      b4_\txtaor
	      \set Score.repeatCommands = #'((volta #f))
	      \set Score.measureLength = #(ly:make-moment 2/4) }

VarVa =   { \set Score.measureLength = #(ly:make-moment 3 4)
	      \set Score.repeatCommands = #'((volta "S")) 
	      \grg c8\fermata [\grG a]\fermata
	      \once \hide Score.BarLine
	      \once \hide Score.SpanBar
	      \set Score.repeatCommands = #'((volta #f)(volta "D") end-repeat)
	      c4_\txcrun
	      \set Score.repeatCommands = #'((volta #f))
	      \set Score.measureLength = #(ly:make-moment 2/4) }
	      
VarVb =    {  \set Score.measureLength = #(ly:make-moment 3 4)
	      \set Score.repeatCommands = #'((volta "S")) 
	      \grg b8\fermata [\grG a]\fermata
	      \once \hide Score.BarLine
	      \once \hide Score.SpanBar
	      \set Score.repeatCommands = #'((volta #f)(volta "D") end-repeat)
	      b4_\txcrun
	      \set Score.repeatCommands = #'((volta #f))
	      \set Score.measureLength = #(ly:make-moment 2/4) }
