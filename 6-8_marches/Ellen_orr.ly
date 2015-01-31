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
    \partial 8	A8 |
    \hdblc c8. [ b16 \grG a8 ] \grg c16 [ e8. \gra e8 ] |
    \grg f8. [ g16 A8 ] \hdblc c8. [ b16 \grG a8 ] |
    \grg d8. [ b16 \grG b8 ] \dblb b4 \grg c8 |
    \thrwd d8. [ e16 \grg c8 ] \dbld d8. [ c16 ] b8 
%    \break
    \set Score.repeatCommands = #'((volta "2. --2."))  
    \hdblc c8. [ b16 \grG a8 ] \grg c16 [ e8. \gra e8 ] |
    \grg f8. [ g16 A8 ] \hdblc c8. [ b16 \grG a8 ] |
    \grg e8. [ c16 a8 ] \dblb b4 e8 |
    \grg a4. \wbirl a4 \set Score.repeatCommands = #'((volta #f)) \break }

    % Part 2
    \repeat volta 2 {
    \dblg g8 |
    \dblA A4. \hdblc c4 e8 |
    \grg f8. [ A16 e8 ] \dblc c8. [ b16 \grG a8 ] |
    \dblA A4 e8 \dblc c4 e8 |
    \thrwd d8. [ e16 \grg c8 ] \dbld d8. [ c16 b8 ] 
%    \break

    \set Score.repeatCommands = #'((volta "1"))  \dblA A4. \hdblc c4 e8 |
    \grg f8. [ A16 e8 ] \dblc c8. [ b16 \grG a8 ] |
    \grg e8. [ c16 a8 ] \dblb b4 e8 |
    \grg a4. \wbirl a4 \set Score.repeatCommands = #'((volta #f)) \break }

    % Part 3
    \repeat volta 2 {
    e8 |
    \grg c4 \taor c8 \dblc c4 d8 |
    \grg e8. [ f16 \grg e8 ] \dblc c8. [ b16 \grG a8 ] |
    \grg b4 \taor b8 \dblb b4 \grg c8 |
    \thrwd d8. [ e16 \grg c8 ] \dbld d8. [ c16 b8 ] 
%    \break

    \set Score.repeatCommands = #'((volta "2. ..4."))  
    \grg c4 \taor c8 \dblc c4 d8 |
    \grg e8. [ f16 \grg e8 ] \dblc c8. [ b16 \grG a8 ] |
    \grg e8. [ c16 a8 ] \dblb b4 e8 |
    \grg a4. \wbirl a4 \set Score.repeatCommands = #'((volta #f)) \break }

    % Part 4
    \repeat volta 2 {
    \dblg g8 |
    A4 \grip A8 c16 [ e8. \gra e8 ] |
    \grg f8. [ A16 e8 ] \dblc c8. [ b16 \grG a8 ] |
    \grg e8. [ c16 a8 ] \wbirl a4 \grg c8 |
    \thrwd d8. [ e16 \grg c8 ] \dbld d8. [ c16 b8 ] 
%    \break

    \set Score.repeatCommands = #'((volta "1"))  
    A4 \grip A8 c16 [ e8. \gra e8 ] |
    \grg f8. [ A16 e8 ] \dblc c8. [ b16 \grG a8 ] |
    \grg e8. [ c16 a8 ] \dblb b4 e8 |
    \grg a4. \wbirl a4 \set Score.repeatCommands = #'((volta #f)) \break }

    } %end staff
    
  \header {
    meter = "March"
    piece = "Ellen Orr"
    composer = "W. Bryson (G.U.O.T.C)"
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