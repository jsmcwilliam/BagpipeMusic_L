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
				%(Paper format)
				%(Header: peice, meter and composer)
				%(Otherwise Lilypond subtitle)

%to here..........................................................
%}

\score {

    \new Staff  {
    \bagpipeKey
    \time 2/4
    \tempo 4 = 80
    \quarterBeaming
    \set Staff.midiInstrument = #"bagpipe"
    \bar ".|:"

    % Part 1
    \partial 8
    \repeat volta 2 {
		 \grg a16 [ b16 ] |
 \thrwd d8. [ e16 ] \thrwd d8 [ \gre a8 ] |
 \dblb b8 [ \thrwd d8 ] \dble e8. [ \dblg g16 ] |
 \hdblf f8. [ e16 ] \thrwd d8 [ \gre a8 ] |
 \grg b4 \taor b8 [ \grg a16. b32 ] | 
% \break

 \thrwd d8. [ e16 ] \thrwd d8 [ \gre a8 ] |
 \dblb b8 [ \thrwd d8 ] \dble e8 [ \dblg g8 ] |
 \hdblf f8. [ e16 ] \thrwd d8. [ b16 ] |
    \grg a4 \wbirl a8  \break
    }
   
    % Part 2
    \repeat volta 2 {
 \dblg g8 |
 \hdblf f8. [ g16 ] \dblA A8. [ f16 ] |
 \dblg g8. [ f16 ] \dble e8. [ \dblg g16 ] |
 \hdblf f8. [ g16 ] \dblA A8 [ \wbirl a8 ] |
 \grg b4 \taor b8. [ \dblg g16 ] | 
% \break

 \tdblf f8. [ g16 ] \dblA A8. [ f16 ] |
 \dblg g8. [ f16 ] \dble e8. [ \dblg g16 ] |
 \hdblf f8. [ e16 ] \thrwd d8. [ b16 ] |
    \grg a4 \wbirl a8 \break} 

    } %end staff
    
  \header {
    meter = "March"
    piece = "A man's a man for a' that"
    composer = "Burns Set"
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