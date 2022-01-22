\include "bagpipe.ly"
melody = {
		\set Staff.midiInstrument = #"bagpipe"
		\hideKeySignature
		\cadenzaOn
		\once \override Score.BreakAlignment #'break-align-orders =
			#(make-vector 3 '(instrument-name
									left-edge
									ambitus
									span-bar
									breathing-sign
									clef
									key-signature
									time-signature
									staff-bar
									custos
									span-bar))
		\time 2/2
		%{C_%} \bar "|." d8 \bar "|"
 \grg c16 [ e8. \dble e8. a16 ] \dblg g4 \grA f16 [ A8. ] \bar "|"
 e8. [ a16 ] \dble e8. [ d16 ] \grg c8. [ \grd a16 ] \gre a8. [ d16 ] \bar "|"
 \grg c16 [ e8. \dble e8. a16 ] \dblg g4 \hdblf f8. [ e16 ] \bar "|"
 \dbld d8. [ b16 \grg c16 \grd a8. ] \grg b8. [ \grd G16 ] \gre G8. [ d16 ] \bar "|" \break

 \grg c16 [ e8. \dble e8. a16 ] \dblg g4 \grA f8. [ g16 ] \bar "|"
 A8. [ a16 ] \dble e8. [ d16 ] \grg c8. [ \grd a16 ] \gre a8. [ b16 ] \bar "|"
 \thrwd d4 \grg f8. [ d16 ] \grg c16 [ e8. A8. c16 ] \bar "|"
 \grg b16 [ d8. \grA g8. d16 ] \grg b8. [ \grd G16 \gre G8. ] \bar ".|" \break 
 \bar "|." b8 \bar "|"
 \dble e8. [ a16 ] \dble e8. [ d16 ] \dblc c4 \gre a8. [ \grd c16 ] \bar "|"
 \dble e8. [ a16 ] \dblf f8. [ e16 ] \grg c8. [ \grd a16 ] \gre a8. [ \grd c16 ] \bar "|"
 \grg f8. [ a16 ] \dble e8. [ d16 ] \dblc c4 \gre a8. [ \grd c16 ] \bar "|"
 \dbld d8. [ b16 \grg c16 \grd a8. ] \grg b8. [ \grd G16 ] \gre G8. [ \grd b16 ] \bar "|" \break

 \dble e8. [ a16 ] \dble e8. [ d16 ] \dblc c4 \gre a8. [ g16 ] \bar "|"
 \grA f16 [ A8. e8. a16 ] \grg c8. [ \grd a16 ] \gre a8. [ b16 ] \bar "|"
 \thrwd d4 \grg f8. [ d16 ] \grg c16 [ e8. A8. c16 ] \bar "|"
 \grg b16 [ d8. \grA g8. d16 ] \grg b8. [ \grd G16 \gre G8. ] \bar ".|" \break 
 \bar "|." b8 \bar "|"
 \gbirl a4 \dblA A4 g16 [ \grA e8. ] \dblA A4 \bar "|"
 \birl a4 \dblA A4 c8. [ \grd a16 ] \gre a8. [ \grd b16 ] \bar "|"
 \gbirl a4 \dblA A4 g16 [ \grA e8. ] \dblg g4 \bar "|"
 \hdbld d8. [ b16 \grg c16 \grd a8. ] \grg b8. [ \grd G16 ] \gre G8. [ \grd b16 ] \bar "|" \break

 \gbirl a4 \dblA A4 g16 [ \grA e8. ] \dblA A4 \bar "|"
 \birl a16 [ A8. e8. a16 ] \grg c8. [ \grd a16 ] \gre a8. [ b16 ] \bar "|"
 \thrwd d4 \grg f8. [ d16 ] \grg c16 [ e8. A8. c16 ] \bar "|"
 \grg b16 [ d8. \grA g8. d16 ] \grg b8. [ \grd G16 \gre G8. ] \bar ".|" \break 
 \bar "|." g8 \bar "|"
 \grA f16 [ A8. e16 A8. ] \hdblc c4 \gre a8. [ g16 ] \bar "|"
 \grA f16 [ A8. e8. a16 ] \grg c8. [ \grd a16 ] \gre a8. [ g16 ] \bar "|"
 \grA f16 [ A8. e16 A8. ] \hdblc c4 \gre a8. [ \grd c16 ] \bar "|"
 \grg b8. [ c16 ] \dbld d8. [ c16 ] \grg b8. [ \grd G16 ] \gre G8. [ g16 ] \bar "|" \break

 \grA f16 [ A8. e16 A8. ] c16 [ e8. \grg a8. g16 ] \bar "|"
 \grA f16 [ A8. e8. a16 ] \grg c8. [ \grd a16 ] \gre a8. [ b16 ] \bar "|"
 \thrwd d4 \grg f8. [ d16 ] \grg c16 [ e8. A8. c16 ] \bar "|"
 \grg b16 [ d8. \grA g8. d16 ] \grg b8. [ \grd G16 \gre G8. ] \bar ".|" \break 

			}
\score {
	\melody
	\layout {
	indent = 0.0\cm
	\context { \Score \remove "Bar_number_engraver" }
	}
	\header {
	title = "The Rejected Suitor"
	meter = "Reel"
	arranger = "Traditional"
	}
	
}
