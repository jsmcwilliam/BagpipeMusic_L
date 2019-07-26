\version "2.18.0"
%
%   	1. Comment out generation of midi files before compiling book
%  	2. Comment top section when compiling book.........................
%
#(allow-volta-hook "|")
% from here
%{
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a4" 'landscape)

\include "bagpipe.ly"           %(Original)
%\include "bagpipe_new.ly" 	%(Replaces bagpipe.ly)
%\include "bagpipe_extra.ly"	%(Extras)
\include "../../Includes/BP_format.ly" 	
                                %(Tagline: Copied by John McWilliam, date)
				%(Paper format A4, Landscape)
				%(Header: piece, meter and composer)
				%(Otherwise Lilypond subtitle)
%to here..........................................................
%}

\score {

    \new Staff  {
    \time 6/8	    %adjust time to suit specific tunes
    \tempo 4 = 80   % adjust speed accordingly for playback
    \hideKeySignature
    \quarterBeaming
    \bar ".|:"		

    % Part 1
    \repeat volta 2 {
    \partial 8 e8 |
 \grg a8. [ \grd c16 e8 ] \grg c16 [ \grd a8. \grd c8 ] |
 \grg e8. [ f16 \grg e8 ] \dblc c4 \gre a8 |
 \grg c16 [ e8. \gra e8 ] \dble e8. [ c16 \grd a8 ] |
 \grg b16 [ d8. c8 ] \dblb b4 \gre G8 
% \break

 \set Score.repeatCommands = #'((volta "2. --2.")) 
 \grg a8. [ \grd c16 e8 ] \grg c16 [ \grd a8. \grd c8 ] |
 \grg e8. [ f16 \grg e8 ] \dblc c4 \gre a8 |
 \grg c16 [ e8. \gra e8 ] \dble e8. [ d16 ] b8 |
 \grg a4. \wbirl a4
 \set Score.repeatCommands = #'((volta #f))
 \break }

    % Part 2
    \repeat volta 2 {
     \dblg g8 |
 A4 \grip A8 a8. [ \grd c16 e8 ] |
 \dble e8. [ c16 A8 ] \hdblc c4 \gre a8 |
 A8. [ e16 d8 ] \grg c16 [ \grd a8. \grd c8 ] |
 \grg b16 [ d8. c8 ] \dblb b4 \gre G8 
% \break 

 \set Score.repeatCommands = #'((volta "1"))  
 A4 \grip A8 a8. [ \grd c16 e8 ] |
 \dble e8. [ c16 A8 ] \hdblc c4 \gre a8 |
 \grg c16 [ e8. \gra e8 ] \dble e8. [ d16 ] b8 |
 \grg a4. \wbirl a4 
 \set Score.repeatCommands = #'((volta #f))
 \break  }

    % Part 3
    \repeat volta 2 { 
    e8 |
 \grg a4 \taor a8 \dblc c4 d8 |
 \grg e8. [ f16 \grg e8 ] \dblc c4 \gre a8 |
 \grg e4 \taor a8 \dblc c4 e8 |
 \grg b16 [ d8. c8 ] \dblb b4 \gre G8 | 
% \break

 \grg a4 \taor a8 \dblc c4 d8 |
 \grg e8. [ f16 \grg e8 ] \dblc c4 \gre a8 |
 \grg c16 [ e8. \gra e8 ] \dble e8. [ d16 b8 ] |
 \set Score.measureLength = #(ly:make-moment 5 8) 
 \grg a4. \wbirl a4  
 \bar ":..:" \break }

    % Part 4
     \set Score.repeatCommands = #'(start-repeat)
     \set Score.measureLength = #(ly:make-moment 1 8)
     \dblg g8 |
     \set Score.measureLength = #(ly:make-moment 6 8)
 A4 \taor a8 \grg e4 \taor a8 |
 \dble e8. [ c16 A8 ] \hdblc c4 \gre a8 |
 \set Score.measureLength = #(ly:make-moment 9/8)
 \grg c16 [ e8. A8 ]
 \set Score.repeatCommands = #'((volta "1"))  
 \hdble e8. [ c16 \grd a8 ]
 \once \hide Score.BarLine
 \once \hide Score.SpanBar
 \set Score.repeatCommands = #'((volta #f)(volta "2.") end-repeat)
 a8. [ \grd c16 e8 ] 
 \set Score.repeatCommands = #'((volta #f)) |
 \set Score.measureLength = #(ly:make-moment 6/8)
 \grg b16 [ d8. g8 ] \hdblb b4 \gre G8 | 
% \break 
 
 \set Score.repeatCommands = #'((volta "1"))  
 A4 \taor a8 \grg e4 \taor a8 |
 \dble e8. [ c16 A8 ] \hdblc c4 \gre a8 |
 \grg c16 [ e8. \gra e8 ] \dble e8. [ d16 b8 ] 
 \break
 
 \set Score.repeatCommands = #'((volta "2") end-repeat)  
 \grg a8. [ b16 \grip c8 ] \grg b8. [ c16 d8 ] |
 \grg c16 [ e8. A8 ] \hdblc c4 \gre a8 |
 \grg c16 [ e8. \gra e8 ] \dble e8. [ d16 b8 ] |
 \grg a4. \wbirl a4 \set Score.repeatCommands = #'((volta #f)) 
 \bar "|."   \break 

    } %end staff
    
  \header {
    meter = ""
    piece = "Dr Ross's Welcome to the Argyllshire Gathering"
    composer = "PM Donald MacLeod MBE"
    parttagline = "Copied by John S. McWilliam"

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
%remove midi when compiling book
%................................................................