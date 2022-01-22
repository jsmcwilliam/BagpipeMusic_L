\version "2.22.1"

%Variables for Black Donalds March - coded 92 to avoid conflict with other tunes. 


A_common = {
  \bagpipeKey
  \time 2/4
  \allowVoltaHook ""
  \override TextScript.staff-padding = #2
  \override Script #'padding = #1
  \override TextScript #'padding = #2 % horizontal text alignment
         } %end common

tr = ^\markup {\italic tr}

A_written =   { 
             \A_common \set Staff.instrumentName = #"Written"
	     c4\mordent f4\mordent
	     A4\trill
	     a4^\txleum s4
	     a4^\txtaor
	     a4^\txcrun s4
	     b4^\txcrunam s4
	     c4^\txcrunam s4
            }

A_played =    { 
             \A_common \set Staff.instrumentName = #"Played"
	     c16 [\grip c8.] \dare f4 \bar "|"
	     \dblA A4 \bar "|"
	     \grg a4 \grip e \bar "|"
	     \grg a8. [\taor a16] \bar "|"
	     \grg a4 \crun e \bar "|"
	     \grg b4 \crunamb e \bar "|"
	     \grg c4 \crunamc e \bar "|."
            }	     

A_VarIII =    { 
              \barLength 5 4  
              \altBracketText "1" 
              f4\mordent 
%              \once \omit Score.BarLine
              \altBracketText "2"
              A4\trill 
              \altBracketEnd					
              \barLength 4 4  
            }

A_VarIVa =   { 
              \barLength 3 4  
%              \set Score.measureLength = #(ly:make-moment 3 4)  
              \altBracketText "S" 
              \grg c8\fermata [\grG a]\fermata
%              \once \omit Score.BarLine
              \altBracketText "D"
              c4_\txleumtaorcrun
              \altBracketEnd					
              \barLength 2 4  
%	      \set Score.measureLength = #(ly:make-moment 2/4) 
            }
	      
A_VarIVb =   { 
              \barLength 3 4  
              \altBracketText "S" 
	      \grg b8\fermata [\grG a]\fermata
              \altBracketText "D"
	      b4_\txleumtaorcrun
              \altBracketEnd					
              \barLength 2 4  
            }

A_VarIVa =    { 
              \set Score.measureLength = #(ly:make-moment 3 4)
              \altBracketText "S" 
	      \grg c8\fermata [\grG a]\fermata
	      \once \omit Score.BarLine
              \altBracketText "D"
	      c4_\txtaor
              \altBracketEnd					
	      \set Score.measureLength = #(ly:make-moment 2/4) 
            }
	      
A_VarIVb =    { 
              \set Score.measureLength = #(ly:make-moment 3 4)
              \altBracketText "S" 
	      \grg b8\fermata [\grG a]\fermata
	      \once \omit Score.BarLine
              \altBracketText "D"
	      b4_\txtaor
              \altBracketEnd					
	      \set Score.measureLength = #(ly:make-moment 2/4) 
            }
