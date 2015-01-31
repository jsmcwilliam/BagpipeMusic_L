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
    \partial 8 f8 |
 \grg a4 \taor a8 \dblb b4 \grG a8 |
 \grg a8. [ d16 \grg f8 ] \dblA A4 g8 |
 \tdblf f8 [\grg e f] \grg a8. [ d16 \grg f8 ] |
 A8. [ f16 \grg d8 ] \dble e4 

 \set Score.repeatCommands = #'((volta "2. --2."))  \grg f8 |
 \grg a4 \taor a8 \dblb b4 \grG a8 |
 \grg a8. [ d16 \grg f8 ] \dblA A4 g8 |
 \grA f8. [ g16 A8 ] \hdble e8. [ c16 \grd a8 ] |
 \thrwd d4. \wslurd d4 
 \set Score.repeatCommands = #'((volta #f)) 
    \break }

    % Part 2
    \repeat volta 2 {
     \dblg g8 |
 \grA f8. [ g16 A8 ] \thrwd d4 e8 |
 \dblf f8. [ e16 \grg d8 ] \dblA A4 f8 |
 \dble e4 \grip e8 \grg a8. [ b16 \grip c8 ] |
 \grg e8. [ g16 f8 ] \dble e4 

 \set Score.repeatCommands = #'((volta "1"))  \dblg g8 |
 \grA f8. [ g16 A8 ] \thrwd d4 e8 |
 \dblf f8. [ e16 \grg d8 ] \dblA A4 g8 |
 \grA f8. [ g16 A8 ] \hdble e8. [ c16 \grd a8 ] |
 \thrwd d4. \wslurd d4 
 \set Score.repeatCommands = #'((volta #f)) 
 \break }

    % Part 3
    \repeat volta 2 {
     \grg f8 |
 \grg a8. [ d16 \grg f8 ] \dblf f8. [ e16 \grg f8 ] |
 \grg a8. [ d16 \grg f8 ] \dblA A4 g8 |
 \hdblf f8. [ e16 \grg d8 ] \grg a8. [ d16 \grg f8 ] |
 \dble e4. \gra e4 

 \set Score.repeatCommands = #'((volta "2. --4."))  \grg f8 |
 \grg a8. [ d16 \grg f8 ] \dblf f8. [ e16 \grg f8 ] |
 A8. [ f16 \grg d8 ] \slurb b4 g8 |
 \grA f8. [ g16 A8 ] \hdble e8. [ c16 \grd a8 ] |
 \thrwd d4. \wslurd d4 
 \set Score.repeatCommands = #'((volta #f)) 
 \break }

    % Part 4
    \repeat volta 2 {
     \dblg g8 |
 A8. [ f16 \grg d8 ] \grg a8. [ d16 f8 ] |
 \dblf f8. [ e16 \grg d8 ] \slurb b4 d8 |
 \grg a8. [ d16 \grg f8 ] A8. [ f16 \grg d8 ] |
 \dble e4. \gra e4 

 \set Score.repeatCommands = #'((volta "1"))  \dblg g8 |
 A8. [ f16 \grg d8 ] \grg a8. [ d16 \grg f8 ] |
 \dblf f8. [ e16 \grg d8 ] \slurb b4 g8 |
 \grA f8. [ g16 A8 ] \hdble e8. [ c16 \grd a8 ] |
 \thrwd d4. \wslurd d4 
 \set Score.repeatCommands = #'((volta #f)) 
    \break }

    } %end staff
    
  \header {
    meter = "March"
    piece = "Dovecote Park"
    composer = "J. Braidwood"
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