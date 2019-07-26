\version "2.18.0"

%{Running this template always results in the following warning:
  Cannot find property type-check for `print-function' (backend-type?).  
  Perhaps a typing error? 
  Warning: skipping assignment. It seems to have its source in "bagpipe_new.ly"
  but does not have any adverse effects
%}
%   	1. Comment out generation of midi files before compiling book
%  	2. Comment out top section when compiling book.........................
%
% #(allow-volta-hook "|") % enables volta hook outside repeat context
% from here
%{
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a4" 'landscape)

%\include "bagpipe.ly"		%(Origonal)
%\include "bagpipe_new.ly" 	%(Replaces bagpipe.ly)
%\include "bagpipe_extra.ly"	%(Extras)
\include "../../Includes/BP_format.ly" 	
                                %(Tagline: Copied by John McWilliam, date)
				%(Paper format A4, Landscape)
				%(Header: piece, meter and composer)
				%(Otherwise Lilypond subtitle)
%to here..........................................................
%}
common = {
  \time 3/4
  %  \bagpipeKey
  \hideKeySignature
  \quarterBeaming
  \set Staff.midiInstrument = #"bagpipe"
}

musicA = {
  \common

  \grg \partial 4 a8. d16
  \slurd d2 \grg f8[ e32 d16.]
  \grg f2 \grg f8 e
  \thrwd d2 \grg b4
  \grG a2 \grg a8. d16
  \slurd d2 \grg f8[ e32 d16.]
  \grg f2 \grg e8. f16
  \dblA A2 \grg A4
  \grg A2 f8. A16
  \break

  \grg A2 \hdblf f8[ e32 d16.]
  \grg f2 \grg f8 e
  \thrwd d2 \grg b4
  \grG a2 \grg a8. d16
  \slurd d2 \grg f8[ e32 d16.]
  \grg f2 e4
  \thrwd d4 c b
  \grG a2\fermata
  \bar "|."
}

musicB = {
  \common

  \grg \partial 4 a8. d16
  \grg f2 a4
  \grg d2 \dbld d8. c16
  \grg b2 \grg G4
  \grg a2 \grg a8. d16
  \grg f2 \grg f8[ e32 d16.]
  \slurd d2 \grg c8. d16
  \grg f4 e b
  \dblA A2 f8. A16
  \break

  a8. d16 \grg f8. A16 f8[ e32 d16.]
  \slurd d4. a8 \dbld d8. c16
  \grg b4. d8 \grA gflat8. d16
  \grg f2 \grg a8. d16
  \grg f2 \grg f8[ e32 d16.]
  \slurd d4 \grg c e
  \grA gflat4 f e
  f8 e f4\fermata
  \bar "|."
}

musicC = {
  \common

  \grg \partial 4 a4
  d2 A4
  \hdblf f2 \grg b8. a16
  \gre G4. \grg b8 d4
  \grg b16 \grG a8. ~ a4 \grg a
  d2 A4
  f4 d \grg c8. d16
  \grg b2 f4
  \dble e2 \grg a4
  \break

  d2 A4
  \hdblf f2 \grg b8. a16
  \gre G4. \grg b8 d4
  \grg b16 \grG a8. ~ a4 \grg a
  d2 A4
  \hdblf f4 e a
  \grA gflat4 f e
  \thrwd d2\fermata
  \bar "|."
}

\score {

  \new StaffGroup <<
    \new Staff \musicA
    \new Staff \musicB
    \new Staff \musicC
  >>

    
  \header {
    meter = "Hymn"
    piece = "Amazing Grace"
    composer = "Trad."
    parttagline = "Copied by John S. McWilliam"
  }
% added layout options. See bagpipe_new.ly (\layout) for default settings
  \layout {
  	  #(layout-set-staff-size 18)
%  	  ragged-last = ##t
  	}

% \midi {} %Generation of midi files option.

}%end score

%................................................................
%Useful commands for upgrading from older versions of Lilypond:
%\set Score.measureLength = #(ly:make-moment 5/8)
%\set Score.repeatCommands = #'((volta "1.--2."))
%\set Score.repeatCommands = #'((volta #f))
%\once \hide Score.BarLine
%\once \hide Score.SpanBar
%\once \override Score.VoltaBracket.shorten-pair = #'(0.5 . 0)
%\unfoldRepeats for better playback
%remove midi when compiling book
% see Examples or Leaving Glen Urquhart for implementation guide
%................................................................