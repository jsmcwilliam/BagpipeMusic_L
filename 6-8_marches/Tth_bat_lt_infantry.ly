\version "2.18.0"
%
%   	1. Comment out generation of midi files before compiling book
%  	2. Comment out from here when compiling book.........................
%{
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a4" 'landscape)

%\include "bagpipe.ly"		%(Original)
\include "bagpipe_new.ly" 	%(Replaces bagpipe.ly)
%\include "bagpipe_extra.ly"	%(Extras)
\include "BP_format.ly" 		%(Tagline: Copied by John McWilliam, date)
				%(Paper format A4, Landscape)
				%(Header: peice, meter and composer)
				%(Otherwise Lilypond subtitle)
%to here..........................................................
%}

\score {

    \new Staff  {
    \set Staff.midiInstrument = #"bagpipe"    
    \bagpipeKey
    \time 6/8
    \tempo 4 = 80
    \quarterBeaming
    \bar ".|:"

    % Part 1
    \repeat volta 2 {
 \partial 8 \grg a8 |
 \thrwd d8. [ f16 \grg a8 ] \thrwd d4 f8 |
 \grg f8. [ g16 A8 ] \dblf f8. [ e16 d8 ] |
 \grg c4 \grip e8 \grg a8. [ \grd c16 e8 ] |
 \grg e8. [ f16 g8 ] \tdblf f8. [ e16 d8 ] |
 \dbld d8. [ f16 \grg a8 ] \thrwd d4 f8 |
 \grg f8. [ g16 A8 ] \dblf f8. [ e16 d8 ] |
 \grg c4 \thrwd e8 \grg a8. [ \grd c16 e8 ] |
    \thrwd d4. \wslurd d4 \break }
    
    % Part 2
    \repeat volta 2 {    
 \dblg g8 |
 \dblA A4 f8 \thrwd d4 f8 |
 \grg f16 [ A8. f8 ] \dblf f8. [ e16 d8 ] |
 \grg c4 \grip e8 \grg a8. [ \grd c16 e8 ] |
 \grg e8. [ f16 g8 ] \tdblf f8. [ e16 d8 ] |
 \dblA A4 f8 \thrwd d4 f8 |
 \grg f16 [ A8. f8 ] \dblf f8. [ e16 d8 ] |
 \grg c4 \thrwd e8 \grg a8. [ \grd c16 e8 ] |
    \thrwd d4. \wslurd d4 \break }
    
    % Part 3
    \repeat volta 2 {
 \grg a8 |
 \thrwd d4. \grg a8. [ d16 f8 ] |
 \grg f16 [ A8. f8 ] \dblf f8. [ e16 d8 ] |
 \dblc c4. \grg a8. [ \grd c16 e8 ] |
 \grg e8. [ f16 g8 ] \tdblf f8. [ e16 d8 ] |
 \dbld d4. \grg a8. [ d16 f8 ] |
 \grg f16 [ A8. f8 ] \dblf f8. [ e16 d8 ] |
 \grg c4 \thrwd e8 \grg a8. [ \grd c16 e8 ] |
    \thrwd d4. \wslurd d4 \break }
    
    % Part 4
    \repeat volta 2 {
 \dblg g8 |
 A4 \grip A8 a8. [ d16 f8 ] |
 \grg f16 [ A8. f8 ] \dblf f8. [ e16 d8 ] |
 \grg c4 \grip e8 \grg a8. [ \grd c16 e8 ] |
 \grg e8. [ f16 g8 ] \tdblf f8. [ e16 d8 ] |
 A4 \grip A8 a8. [ d16 f8 ] |
 \grg f16 [ A8. f8 ] \dblf f8. [ e16 d8 ] |
 \grg c4 \thrwd e8 \grg a8. [ \grd c16 e8 ] |
    \thrwd d4. \wslurd d4 \break }

    } %end staff
    
  \header {
    meter = "March"
    piece = "10th. Bat. Lt. Infantry crossing the Rhine"
    composer = "PM Donald Shaw Ramsay"
    parttagline = "Copied by John S. McWilliam"

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
%remove midi when compiling book
%................................................................