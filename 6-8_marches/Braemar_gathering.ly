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
    \partial 8 e8 |
    \grg a4 \taor a8 \grg a8. [ b16 c8 ] |
    \grg a8. [ \grd c16 e8 ] \grg f8. [ e16 c8 ] |
    \grg b4 \taor b8 \grg b8. [ \grd c16 \gre a8 ] |
    \grg b8. [ \grd c16 e8 ] \grg f8. [ g16 A8 ]
%    \break

    a4 \taor a8 \grg a8. [ b16 c8 ] |
    \grg a8. [ \grd c16 e8 ] \grg f8. [ e16 c8 ] |
    \grg f16 [ A8. f8 ] \grg e8. [ b16 \grd c8 ] |
    \grg a4 \taor a8 \wbirl a4 \break }

    % Part 2
    \repeat volta 2 {
    e8 |
    \grg f4 f8 \grg f8. [ g16 A8 ] |
    f4 f8 \grg f4 c8 |
    e4 e8 \grg f8. [ g16 A8 ] |
    e4 e8 \dble e4 b8 
%    \break

    \grg c4 \taor c8 \dblc c8. [ b16 \grG a8 ] |
    \grg a4 \taor a8 \grg b8. [ \grd c16 e8 ] |
    \grg f16 [ A8. f8 ] \grg e8. [ b16 \grd c8 ] |
    \grg a4 \taor a8 \wbirl a4 \break }

    % Part 3
    \repeat volta 2 {
    e8 |
    \grg a4 \taor a8 \dblc c8. [ b16 \grG a8 ] |
    \grd c16 [ e8. \grg a8 ] \dblc c8. [ b16 \grG a8 ] |
    \grg b4 \taor b8 \grg b8. [ \grd c16 e8 ] |
    \grg f8. [ g16 A8 ] \hdblf f8. [ e16 c8 ] 
%    \break

    \grg a4 \taor a8 \dblc c8. [ b16 \grG a8 ] |
    \grd c16 [ e8. \grg a8 ] \grg c4 e8 |
    \grg f16 [ A8. f8 ] \grg e8. [ b16 \grd c8 ] |
    \grg a4 \taor a8 \wbirl a4 \break }

    % Part 4
    \repeat volta 2 {
    \dblg g8 |
    A8. [ f16 \gre f8 ] \grg f8. [ e16 f8 ] |
    \grg f16 [ A8. f8 ] \grg f8. [ e16 c8 ] |
    \grg f8. [ e16 \gra e8 ] \grg e8. [ c16 e8 ] |
    \grg f8. [ e16 b8 ] \dble e8. [ c16 b8 ] | 
%    \break

    \dblc c8. [ b16 \grG a8 ] \grg a4 \taor a8 |
    \grg b8. [ \grd c16 e8 ] \grg f4 e8 |
    \grg f16 [ A8. f8 ] \grg e8. [ b16 \grd c8 ] |
    \grg a4 \taor a8 \wbirl a4 \break }

    } %end staff
    
  \header {
    meter = "March"
    piece = "Braemar Gathering"
    composer = "Trad."
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