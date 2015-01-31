\version "2.18.0"
%   1. Comment out generation of midi files before compiling book
%   2. Comment out from here when compiling book.........................
%{
#(ly:set-option 'point-and-click #t)
\include "bagpipe.ly"
\include "format.ly"
%}%to here..........................................................
\paper {
	#(set-paper-size "a4" 'landscape)
	scoreTitleMarkup = \markup {
	\column {
		\fill-line {
			\fontsize #4 \bold \fromproperty #'header:piece
			\fromproperty #'header:meter
			\fromproperty #'header:composer
		}}}
}%end paper

\score {
    \new Staff	{
    \set Staff.midiInstrument = #"bagpipe"
    \time 4/4
    \tempo 4 = 80   % adjust speed accordingly for playback
    \showKeySignature
    \quarterBeaming

    % Part 1

    \grg \partial 4 a8. b16
    \thrwd d4 \slurd d8 f \thrwd d4 \slurd d8 b
    \grg a4 \taor a8 \grg b \gbirl a4 \thrwd d8. e16
    \dblf f4 \grg e8 d \dblA A4 d8 f
    \grg e4 \grip e8 f \dble e4 \grg a8. b16
    \break
    \thrwd d4 \slurd d8 f \thrwd d4 \slurd d8 b
    \grg a4 \taor a8 \grg b \gbirl a4 \thrwd d8. e16
    \grg f16 A8. \hdblf f8 A \birl a4 \grg f8. e16
    \thrwd d4 \slurd d8. e16 \thrwd d4
    \bar "||" \break

    % Part 2

    \grg d8. e16
    \grg f4 \dblf f8 A \hdblf f4 \grg e8 d
    \grg b4 \taor b8 d \grG a4 \thrwd d8. e16
    \dblf f4 \grg e8 d \dblA A4 d8 f
    \grg e4 \grip e8 f \dble e4 \grg a8. b16
    \break
    \thrwd d8. e16 \grg f8 A \hdblf f4 \grg e8 d
    \dblb b8 d \grg b16 d8. \grG a4 \thrwd d8. e16
    \grg f16 A8. \hdblf f8 A \birl a4 \grg f8. e16
    \thrwd d4 \slurd d8. e16 \thrwd d4
    \bar "|."
  }%end Staff

  \header {
%    meter = "March"
    piece = "Badge of Scotland"
    composer = "Trad. arr MPD"
    parttagline = "Copied by John S. McWilliam"
    title = ##f
    subtitle = ##f
  }
  \layout {
  	  indent = 0.0\cm
  	  \override Score.GraceSpacing.spacing-increment = #0
  	  #(layout-set-staff-size 18)
    
  	  \context {
  	  	  \Score
  	  	  \remove "Bar_number_engraver"
  	  	  \override VoltaBracket.Y-offset = #7.5
  	  	  \override VoltaBracket.height = #2.2
    		}
  	}
%Generation of midi files can be removed here.
%	\midi {}
}%end score
%................................................................
%Useful commands for upgrading from older versions of Lilypond:
%\set Score.measureLength = #(ly:make-moment 5/8)
%\set Score.repeatCommands = #'((volta "1.--2."))
%\set Score.repeatCommands = #'((volta #f))
%\unfoldRepeats for better playback
%remove midi before compiling book to avoid extra files (.midi)
%................................................................