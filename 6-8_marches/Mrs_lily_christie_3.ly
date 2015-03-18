\version "2.18.0"
%   1. Comment out generation of midi files before compiling book
%  2. Comment out from here when compiling book.........................
%{
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a4" 'landscape)

\include  "bagpipe_new.ly"
%\include "bagpipe_extra.ly"
\include "BP_format.ly"

%to here..........................................................
%}

\score {
    \new Staff	{
    \set Staff.midiInstrument = #"bagpipe"
    \time 6/8
    \tempo 4 = 80
%   \showKeySignature
    \bagpipeKey
    \quarterBeaming
    \bar ".|:"

    % Part 1

    \repeat volta 2 {
      \grg \partial 8 a8
      \thrwd d4 f8 \gbirl a4 d8
      \grg a8. [ d16 A8 ] \hdblf f8. [ e16 d8 ]
      \grg G8. [ \grd G16 \gre G8 ] \dblg g4 f8
      \grg e8. [ f16 d8 ] \dblc c8. [ b16 \grG a8 ]
%      \break
    \set Score.repeatCommands = #'((volta "2.--2."))
      \thrwd d4 f8 \gbirl a4 d8
      \grg a8. [ d16 A8]  \hdblf f8. [ e16 d8 ]
      \grg G8. [ \grd G16 \gre G8]  g8. [ \grA e16 \gra e8] 
      \grg a8. [ e16 \grg c8 ] \thrwd d4
    \set Score.repeatCommands = #'((volta #f))
    }
    \break

    % Part 2

    \repeat volta 2 {
      \dblg g8
      A8. [ g16 A8]  \hdblf f4 a8
      \grg d8. [ f16 A8 ] \hdblf f8. [ d16 \grG d8 ]
      \dblg g4 G8 \grg b16 [ g8. f8 ]
      \grg e8. [ f16 d8 ] \dblc c8. [ b16 \grG a8 ]
%      \break

    \set Score.repeatCommands = #'((volta "1."))
      A8. [ g16 A8 ] \hdblf f4 a8
      \grg d8. [ f16 A8 ] \hdblf f8. [ d16 \grG d8 ]
      \grg G8. [ \grd G16 \gre G8 ] g8. [ \grA e16 \gra e8 ]
%        \set Score.measureLength = #(ly:make-moment 5/8)
      \grg a8.[ e16 \grg c8] \thrwd d4
    \set Score.repeatCommands = #'((volta #f))
    \break
      }

    % Part 3

    \repeat volta 2 {
    \set Score.measureLength = #(ly:make-moment 1/8) a8
    \set Score.measureLength = #(ly:make-moment 6/8)
      \dbld d4 \grG d8 \grg a8. [ d16 f8 ]
      \grg a8. [ f16 A8 ] \hdblf f8. [ d16 \grG d8 ]
      \dblb b4 \grG b8 \grg G8. [ g16 \grA f8 ]
      \grg e8. [ f16 \grg d8 ] \dblc c8. [ b16 \grG a8 ]
%      \break
      \dbld d4 \grG d8 \grg a8. [ d16 f8 ]
      \grg a8. [ f16 A8 ] \hdblf f8. [ d16 \grG d8 ]
      \grg G8. [ \grd G16 \gre G8 ] \grA g8. [ e16 \gra e8 ]
      \grg a8. [ e16 \grg c8 ] \thrwd d4
    }
    \break

    % Part 4 
    \repeat volta 2 {
      \dblg g8
      A4 \grip A8 \grg A4.
      a8. [ A16 \grg A8 ] \hdblf f8. [ e16 d8 ]
      g8. [ \grA e16 g8 ] \grA f8. [ d16 f8 ]
      \grg e8. [ f16 \grg d8 ] \dblc c8. [ b16 \grG a8 ]
%      \break
    }
    
    \alternative {
      {
        A4 \grip A8 \grg A4.
        a8. [ A16 \grg A8 ] \hdblf f8. [ e16 d8 ]
        \grg G8. [ \grd G16 \gre G8 ] g8. [ \grA e16 \gra e8 ]
        \set Score.measureLength = #(ly:make-moment 5/8)
        \grg a8.[ e16 \grg c8] \thrwd d4
        \break
      }
      {
        \set Score.measureLength = #(ly:make-moment 6/8)
        \dbld d4 \grG d8 \grg a8. [ d16 f8 ]
        \grg a8. [ f16 A8 ] \hdblf f8. [ d16 \grG d8 ]
        \grg G8. [ \grd G16 \gre G8 ] g8. [ \grA e16 \gra e8 ]
        \grg a8. [ e16 \grg c8 ] \thrwd d4.
      }
    }
    \bar "|." 

  }%end Staff

  \header {
    meter = "March"
    piece = "Mrs Lily Christie"
    composer = "P/M Donald Shaw Ramsay"
    parttagline = "Copied by John S. McWilliam"
    title = ##f
    subtitle = ##f
  }
  \layout {
  	  #(layout-set-staff-size 18)
  	  ragged-last = ##t
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