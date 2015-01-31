\version "2.18.0"

#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "letter") % option 'landscape
#(set-global-staff-size 16)
#(allow-volta-hook "|") % enables volta hook outside repeat context


\include "bagpipe_new.ly" 	%(Replaces bagpipe.ly)
%\include "bagpipe_extra.ly"	%(Extras)
\include "BP_format_piobaireachd.ly" 	
				%(Tagline: Copied by John McWilliam, date)
				%(Paper format Letter, portrait)

common = {
  \bagpipeKey
  \time 2/4
  \override TextScript.staff-padding = #2
  \override Script #'padding = #1
  \override TextScript #'padding = #2 % horizontal text alignment
%  \bar ".|:"
}
tr = ^\markup {\italic tr}

written =   { \common \set Staff.instrumentName = #"Written" 
	      c8\mordent r8 f4\mordent \bar "|" 
	      A4\tr \bar "|" 
	      a4^\txleum r4 \bar "|"
	      a4^\txtaor r16. \bar "|"
	      a4^\txcrun r4 \bar "|" 
	      b4^\txcrunam r4 \bar "|"
	      c4^\txcrunam r4 \bar "|."	      
}

played =    { \common \set Staff.instrumentName = #"Played"
	      c32 [\grip c16.] r4 \thrwf f 
	      \dblA A4 
	      \grg a4 \grip e 
	      \grg a8. [\taor a16]
	      \grg a4 \crun e
	      \grg b4 \crunamb e 
	      \grg c4 \crunamc e 
}
  % ---------------------------------------------------------------------------
\book {

  \header {
    title = "Movements"
    subtitle = ""
    composer = ""
  }

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
