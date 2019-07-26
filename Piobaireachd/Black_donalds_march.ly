\version "2.18.0"

% When ready to include in collection: 1. Comment out paper.
% 				       2. Create include file of score and
%					  header.
%Comment out from here

%
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a4") % option 'landscape
#(set-global-staff-size 16)
#(allow-volta-hook "|") % enables volta hook outside repeat context

\include "../../Includes/bagpipe_new.ly" 	%(Replaces bagpipe.ly)
\include "../../Includes/bagpipe_extra.ly"	%(Extras)
\include "../../Includes/BP_format_piobaireachd.ly" 	
				%(Tagline: Copied by John McWilliam, date)
				%(Paper format A4, Portrait  ))
%...to here
%}

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
%{	     
written =   { \common \set Staff.instrumentName = #"Written" 
	      c8\mordent s8 f4\mordent \bar "|" 
	      A4\trillill \bar "|" 
	      a4^\txleum s4 \bar "|"
	      a4^\txtaor s16. \bar "|"
	      a4^\txcrun s4 \bar "|" 
	      b4^\txcrunam s4 \bar "|"
	      c4^\txcrunam s4 \bar "|."	      
}

played =    { \common \set Staff.instrumentName = #"Played"
	      c32 [\grip c16.] s4 \thrwf f 
	      \dblA A4 
	      \grg a4 \grip e 
	      \grg a8. [\taor a16]
	      \grg a4 \crun e
	      \grg b4 \crunamb e 
	      \grg c4 \crunamc e 
}
%}
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
	      
\book {

  \header {
    title = "Black Donald's March"
    subtitle = "MacDhomhnuill Duibh"
    composer = "Traditional ca 1431"
  }

% ---------------------------------------------------------------------------

% Ground (Urlar)
  \score {

    {
      \common
      \time 4/4
      \bar ".|:"
      
      \repeat volta 2 {      
      \grg e4. c8\mordent \grg c4 \grGcad a |\grg e4. c8\mordent \grg b4 \grGcad a
      \grg e4. c8\mordent \grg c4 
      \VarII
      c8\mordent \grg c4 \grGcad a 
      \grg e4. c8\mordent \grg b4 
      \VarII
      c8\mordent \grg b4      %^\markup {\halign #-2 \italic Fine.} 
      \grGcad a 
      \break
      \markTextEol \markup {\italic "Fine"}
      
      \grg e4. c8\mordent \grg c4 
      \VarII
      c8\mordent \grg c4 \grGcad a 
      \grg e4. c8\mordent \grg b4 \grGcad a    |\grg e4. c8\mordent \grg c4 \grGcad a 
      \grg e4. c8\mordent \grg b4 
      \VarII
      c8\mordent \grg b4 \grGcad a |
      \break
      
      \grg e4. c8\mordent \grg c4 
      \VarII
      c8\mordent \grg c4 \dre e |
      \grg e4. c8\mordent \grg b4 
      \VarII
      c8\mordent \grg b4 \grGcad a 
      \break
      } %end repeat
    } %end staff

    \header {
      piece = "Urlar with repeat into Var. I. - Thumb Var. "
    } %end header

  } %end score

% ---------------------------------------------------------------------------
% Var. II
  \score {

    {
      \common
      
	\grg e8	A\trill c \grG a\fermata |\grg e A\trill b \grG a\fermata
	\grg e8 A\trill c A\trill |f A\trill c \grG a\fermata
	\grg e8 A\trill c A\trill |f A\trill b \grG a\fermata
	\break
	\grg e8 A\trill c A\trill |f A\trill c \grG a\fermata
	\grg e8 A\trill b \grG a\fermata |\grg e8	A\trill c \grG a\fermata 
	\grg e A\trill c A\trill |f A\trill b \grG a\fermata
	\break
	\grg e8	A\trill c A\trill |f A\trill c A\trill
	e8 A\trill c A\trill |f A\trill b \grG a\fermata
	\bar "|." \break
    } %end Staff

    \header {
      piece = "Var. II"
    } %end Header

    \layout {
%      ragged-last = ##t
    } %end Layout

  } %end score

  % ---------------------------------------------------------------------------
% Var. III
  \score {

    {
      \common
      \bar ".|:"
      
      \repeat Volta 2 {
	e4_\txleumtaorcrun \VarIIIa
	e4_\txleumtaorcrun \VarIIIb
	e4_\txleumtaorcrun c_\txleumtaorcrun
	f4_\txleumtaorcrun \VarIIIa
	e4_\txleumtaorcrun c_\txleumtaorcrun
	f4_\txleumtaorcrun \VarIIIb
	\break
	e4_\txleumtaorcrun c_\txleumtaorcrun
	f4_\txleumtaorcrun \VarIIIa
	e4_\txleumtaorcrun \VarIIIb
	e4_\txleumtaorcrun \VarIIIa
	e4_\txleumtaorcrun c_\txleumtaorcrun
	f4_\txleumtaorcrun \VarIIIb	
	\break
	e4_\txleumtaorcrun c_\txleumtaorcrun
	f4_\txleumtaorcrun c_\txleumtaorcrun
	e4_\txleumtaorcrun c_\txleumtaorcrun
	f4_\txleumtaorcrun \VarIIIb
      } %end repeat
    } %end staff

    \header {
      piece = "Var. III - Leumluath, IV. Taorluath [S & D] and V. Crunluath [S & D]: "
%      breakbefore = ##t
    } %end header

  } %end score

  % ---------------------------------------------------------------------------
\pageBreak
% Var. VI
  \score {

    {
      \common
      
      e4_\txcrun c_\txcrunam
      e4_\txcrun b_\txcrunam
      e4_\txcrun c_\txcrunam
      f4_\txcrun c_\txcrunam
      e4_\txcrun c_\txcrunam
      f4_\txcrun b_\txcrunam
      \break
      e4_\txcrun c_\txcrunam
      f4_\txcrun c_\txcrunam
      e4_\txcrun b_\txcrunam
      e4_\txcrun c_\txcrunam
      e4_\txcrun c_\txcrunam
      f4_\txcrun b_\txcrunam
      \break
      e4_\txcrun c_\txcrunam
      f4_\txcrun c_\txcrunam
      e4_\txcrun c_\txcrunam
      e4_\txcrun
      b_\txcrunam    %_\markup {\lower #2 \halign #-2 \italic {"D.C. al Fine"}} 
      \bar "|." \break
      \markTextEol \markup {\italic "D.C. al Fine"}

    } %end staff

    \header {
      piece = "Var. VI Crunluath-a-Mach"
    } %end header

  } %end score

  % ---------------------------------------------------------------------------

% Movements
  \score { \new StaffGroup {
  	   \cadenzaOn
  	  <<
  	  \new Staff {	\written }
  	  \new Staff { 	\played  }
  	  >>
  	  \cadenzaOff 
}

    \header {
      piece = "Abreviations used:"
    } %end header
    \layout {
    	    indent = 2.0\cm  
  	      \context {
    \Staff
    \remove "Time_signature_engraver"
}
    }
  } %end score
\markup {S = Singling. D = Doubling}
% ---------------------------------------------------------------------------

} % end book

 % --------------------------------------------------------------------------
%{
Useful Commands:
      \set Score.repeatCommands = #'((volta "2"))  
      \set Score.repeatCommands = #'((volta #f)) 
      \set Score.measureLength = #(ly:make-moment 3 4)
 
%}