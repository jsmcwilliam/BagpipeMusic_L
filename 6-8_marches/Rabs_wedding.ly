\version "2.18.0"
%   1. Comment out generation of midi files before compiling book
%   2. Comment out from here when compiling book.........................
%{
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a4" 'landscape)

\include "bagpipe_new.ly"
\include "BP_format.ly"
%to here..........................................................
%}

\score {
    \new Staff	{
    \set Staff.midiInstrument = #"bagpipe"
    \bagpipeKey
    \time 6/8
    \tempo 4 = 80
%    \showKeySignature
%   \quarterBeaming
    \bar ".|:"

    % Part 1
    \repeat volta 2 {
    \partial 8 e32 d16.
    \dblc c4 \gre a8 \grg a8. \grd c16 e8 |\dblA A4 e8 \grg f8. e16 \gra e8
    \thrwd d4 \gre b8 \grg b8. c16 d8 |\dblf f4 e8 \grg e8. f16 \grg e8 
%    \break
    \set Score.repeatCommands = #'((volta "2. --2."))
    \dblc c4 \gre a8 \grg a8. \grd c16 e8
    \dblA A4 e8 \grg f8. e16 \gra e8
    \thrwd d4 \gre b8 \grg f8. e16 \gra e8 |\grg a4. \wbirl a4
    \set Score.repeatCommands = #'((volta #f))
    \break}
    
    % Part 2
    \repeat volta 2 { 
    e32 d16.|\dblc c4 e8 \dblA A4 e8|\grg f8. A16 \grg A8 \hdblf f8. e16 \gra e8
    \thrwd d4 \gre b8 \grg b8. c16 d8 |\dblf f4 e8 \grg e8. f16 \grg e8
%    \break
    \set Score.repeatCommands = #'((volta "1."))
    \dblc c4 e8 \dblA A4 e8 |\grg f8. A16 \grg A8 \dblf f8. e16 \gra e8
    \thrwd d4 \gre b8 \grg f8. e16 \gra e8 | \grg a4. \wbirl a4
    \set Score.repeatCommands = #'((volta #f)) 
    \break}
    
    % Part 3
    \repeat volta 2 {
    e8 |\grg a4 \taor a8 \dblc c4 \thrwd d8 |\grg  e8. f16 \grg d8 \dblc c4 e8
    \thrwd d8. f16 \grg d8 \grg b8. c16 d8 |\dblf f4 e8 \grg e8. f16 \grg e8
%    \break
    \grg a4 \taor a8 \dblc c4 \thrwd d8
    \grg  e8. f16 \grg d8 \dblc c4 e8 |\thrwd d4 \gre b8 \grg f8. e16 \gra e8
    \grg a4. \wbirl a4
    \break
    }
    
    % Part 4
    \repeat volta 2 {
    \dblg g8 |A4 \grip A8 \hdblf f8. g16 A8 |e8. f16 \grg d8 \dblc c4 e8
    \thrwd d8. f16 A8 b8. c16 d8 
%    \break 
    }
    \alternative {
    { 
    \dblf f4 e8 \grg e8. f16 g8 
    A4 \grip A8 \hdblf f8. g16 A8 |e8. f16 \grg d8 \dblc c4 e8 
    \thrwd d4 \gre b8 \grg f8. e16 \gra e8 |\grg a4. \wbirl a4.
    \break
    }
    {
    \dblf f4 A8 \hdblf f8. e16 \gra e8 |\grg a8. b16 c8 \grg b8. c16 d8
    \grg e8. f16 \grg d8 \dblc c4 e8 |\thrwd d4 \gre b8 \grg f8. e16 \gra e8
    \grg a4. \wbirl a4. \bar "|." }
    } 
      
  }%end Staff

  \header {
    meter = "March"
    piece = "Rab's Wedding"
    composer = "R. Kerr"
    parttagline = "Copied by John S. McWilliam"
    title = ##f
    subtitle = ##f
  }
  \layout {
  	  #(layout-set-staff-size 18)
   	  ragged-last = ##t
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