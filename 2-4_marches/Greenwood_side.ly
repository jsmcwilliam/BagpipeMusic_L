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
    \time 2/4
    \tempo 4 = 80
    \quarterBeaming
    \bar ".|:"			

    % Part 1
    \repeat volta 2 {
    \partial 8 f8 |
 \grg b16. [ \grd b32 ] \gre b16. [ \grd c32 ] \dblb b8 [ \grG a8 ] |
 \grg b16. [ c32 ] \grg d16. [ e32 ] \dblf f4 |
 \grg e8. [ f16 ] \grg e16. [ f32 ] \grg e16. [ d32 ] |
 \dblc c8 [ \gre a8 ] \wbirl a8 [ f8 ] 
% \break

 \grg b16. [ \grd b32 ] \gre b16. [ \grd c32 ] \dblb b8 [ \grG a8 ] |
 \grg b16. [ c32 ] \grg d16. [ e32 ] \dblf f4 |
 \dble e8 [ A8 ] \hdblf f8 [ \grg e16. f32 ] |
 \thrwd d8 [ \grg b8 ] \grip b8 
 \break 
    }

    % Part 2
    \repeat volta 2 {
     \thrwd d16. [ e32 ] |
 \dblf f4 \slurb b8 [ f8 ] |
 \grg b16. [ \grd b32 ] \gre b16. [ \grd c32 ] \dblf f4 |
 \grg e8. [ f16 ] \grg e16. [ f32 ] \grg e16 [ d16 ] |
 \dblc c8 [ \gre a8 ] \wbirl a8   
 \bar "|" 
% \break 
    }
 \alternative {
 	 {
 \thrwd d16 e16 \dblf f4 \slurb b8 [ f8 ] |
 \grg b16. [ \grd b32 ] \gre b16. [ \grd c32 ] \dblf f4 |
 \dble e8 [ A8 ] \hdblf f8 [ \grg e16. f32 ] |
 \thrwd d8 [ \grg b8 ] \grip b8
 \break 
	 }
 	 {
 f8 |
 \grg b16. [ \grd b32 ] \gre b16. [ \grd c32 ] \dblb b8 [ \grG a8 ] |
 \grg b16. [ c32 ] \grg d16. [ e32 ] \dblf f4 |
 \dble e8 [ A8 ] \hdblf f8 [ \grg e16. f32 ] |
 \thrwd d8 [ \grg b8 ] \grip b8 
 \bar "|."\break }
 }

    } %end staff
    
  \header {
    meter = "March"
    piece = "Greenwood Side"
    composer = "Trad."
    parttagline = "Copied by John S. McWilliam"

  }
  \layout {
  	  #(layout-set-staff-size 17)
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
%remove midi when compiling book
%................................................................