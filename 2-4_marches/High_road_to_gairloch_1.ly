\version "2.18.0"
%
%   	1. Comment out generation of midi files before compiling book
%  	2. Comment out from here when compiling book.........................
%{
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a4" 'landscape)

%\include "bagpipe.ly"		%(Original)
\include  "bagpipe_new.ly" 	%(Replaces bagpipe.ly)
%\include "bagpipe_extra.ly"	%(Extras)
\include "format.ly" 		%(Subtitle: Copied by John McWilliam, date)
				%(Includes paper format A4, Landscape or Portrait)
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
    		 \grg e8. [ f16 ] \grg e8 [ a8 ]  
 \dblc c8 [ \gre a8 ] \grg e4  
 \thrwd d8 [ \grg f16 e16 ] \thrwd d8 [ \gre G8 ]  
 \dblb b8 [ \gre G8 ] \thrwd d4   
% \break

 \grg e8. [ f16 ] \grg e8 [ a8 ]  
 \dblc c8 [ \gre a8 ] \grg e4  
 \grg a8. [ b16 ] \dblc c8 [ \gre a8 ]  
 \dblb b4 \grG a4 \break

 	} %end repeat

% Part 2 	
 	\repeat volta 2 {
 \dblc c8 [ \gre a8 ] \grg a8. [ b16 ]  
 \dblc c8 [ \gre a8 ] \dblc c4  
 \thrwd d8. [ c16 ] \grg b8. [ c16 ]  
 \thrwd d8 [ \gre b8 ] \thrwd d4   
% \break

 \dblc c8 [ \gre a8 ] \grg a8. [ b16 ]  
 \dblc c8 [ \gre b8 ] \dblc c8 [ e8 ]  
 \grg a8. [ b16 ] \dblc c8 [ \gre a8 ]  
 \dblb b4 \grG a4 \break

 	} %end repeat
    } %end staff
    
  \header {
    meter = "March"
    piece = "The High Road to Gairloch"
    composer = "Trad."
    parttagline = "Copied by John S. McWilliam"
    title = ##f
    subtitle = ##f
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