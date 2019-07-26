\version "2.18.0"
%   	1. Comment out generation of midi files before compiling book
%  	2. Comment out from here when compiling book.........................
%{
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a4" 'landscape)

\include "bagpipe.ly"
%\include "../../bagpipe_new.ly"%(Replaces bagpipe.ly)
\include "../../BP_format.ly" 	%(Tagline: Copied by John McWilliam, date)

%to here..........................................................
%}

\score {
    \new Staff	{
    \set Staff.midiInstrument = #"bagpipe"
    \time 6/8
    \tempo 4 = 120
    \hideKeySignature
%    \bagpipeKey
    \quarterBeaming

    % Part 1

    \partial 8 e8
    \repeat volta 2 {
      \grg a8 [\grd a \gre a] \grg a8 [\grd a \gre a]
      \thrwd d4 c8 \grg b8 [\grd G \grd b]
      \grg a8 [\grd a \gre a] \grg a8 [\grd a \gre a]
      \dblg g4 f8 \dble e4 A8
%      \break
      \grg a8 [\grd a \gre a] \grg a8 [\grd a \gre a]
      \thrwd d4 c8 \grg b8 [\grd G \grd b]
      \gbirl a4 A8 e8 [\grg a e]
      d8 [\gre G \grd b] \gbirl a4
    }
    \break

    % Part 2

    \repeat volta 2 {
      \grd b8
      \dble e4 d8 \grg c8 [\grd a \grd c]
      \thrwd d4 c8 \grg b8 [\grd G \grd b]
      \dble e4 d8 \grg c8 [\grd a \grd c]
      \grg c8 [A e] \grg c8 [\grd a \grd c]
%      \break
      \dble e4 d8 \grg c8 [\grd a \grd c]
      \thrwd d4 c8 \grg b8 [\grd G \grd b]
      \gbirl a4 A8 e8 [\grg a e]
      d8 [\gre G \grd b] \gbirl a4
    }
    \break

    % Part 3

    \repeat volta 2 {
      \grd b8
      \gbirl a4 e8 \grg e4 \grip e8
      d8 [\gre G d] \grg b8 [\grd G \grd b]
      \gbirl a4 e8 \grg e4 \grip e8
      \grg f4 \grip f8 \grg e4 \grip e8
%      \break
      \grg f4 \grip f8 \grg e4 \grip e8
      d8 [\gre G d] \grg b8 [\grd G \grd b]
      \gbirl a4 A8 e8 [\grg a e]
      d8 [\gre G \grd b] \gbirl a4
    }
    \break

    % Part 4

    \repeat volta 2 {
      \grd b8
      \gbirl a4 A8 ~ A4 \grip A8
      g4 \grip g8 \grA b8 [\grd G \grd b]
      \gbirl a4 A8 ~ A4 \grip A8
      g4 \grip A8 ~ A4 \grip A8
%      \break
      g4 \grip A8 ~ A4 \grip A8
      g4 \grip g8 \grA  b8 [\grd G \grd b]
      \gbirl a4 A8 e8 [\grg a e]
      d8 [\gre G \grd b] \gbirl a4
    }
  }%end Staff

  \header {
    meter = "Jig"
    piece = "Braes of Mellinish"
    composer = "Trad. arr MPD"
    parttagline = "Copied by John S. McWilliam"
%    title = ##f
%    subtitle = ##f
  }
  \layout {
  	  #(layout-set-staff-size 18)
%  	  ragged-last = ##t
  	}
  	
%Generation of midi files can be removed here.
%  \midi {}

}%end score
%................................................................
%Useful commands for upgrading from older versions of Lilypond:
%\set Score.measureLength = #(ly:make-moment 5/8)
%\set Score.repeatCommands = #'((volta "1.--2."))
%\set Score.repeatCommands = #'((volta #f))
%\unfoldRepeats for better playback
%................................................................