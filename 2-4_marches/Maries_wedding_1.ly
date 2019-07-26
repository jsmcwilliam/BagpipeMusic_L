\version "2.18.0"
%
%   	1. Comment out generation of midi files before compiling book
%  	2. Comment out from here when compiling book.........................
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
    \time 2/4	    %adjust time to suit specific tunes
    \tempo 4 = 80   % adjust speed accordingly for playback
    \hideKeySignature
    \quarterBeaming
    \bar ".|:"

% Part 1
	\repeat volta 2 {
    		\grg G8 [ \grd a8 ] \wbirl a8. [ b16 ]
 \thrwd d8 [ e8 ] \grg f4 
 \dble e8 [ d8 ] \dblb b8 [ \thrwd d8 ] 
 \dblf f8 [ e8 ] \dblf f8 [ A8 ]  
% \break

 \set Score.repeatCommands = #'((volta "2. --2"))  \grg G8 [ \grd a8 ] 
 \wbirl a8. [ b16 ] 
 \thrwd d8 [ e8 ] \grg f4 
 \dble e8 [ d8 ] \dblb b8 [ \gre G8 ] 
 \grg a4 \wbirl a4 
 \set Score.repeatCommands = #'((volta #f)) 
 \break
 	} %end repeat
 	
% Part 2
	\repeat volta 2 {
 \grg f8 [ A8 ] \grg A4 
 \grip A8 [ g8 ] \hdblf f4 
 \dble e8 [ d8 ] \dblb b8 [ \thrwd d8 ] 
 \dblf f8 [ e8 ] \dblf f4  
% \break

 \set Score.repeatCommands = #'((volta "1."))
 \grg f8 [ A8 ] \grg A4 
 \grip A8 [ g8 ] \hdblf f4 
 \dble e8 [ d8 ] \dblb b8 [ \gre G8 ] 
 \grg a4 \wbirl a4 
 \set Score.repeatCommands = #'((volta #f))
 \break
 	} %end repeat
    } %end staff
    
  \header {
    meter = "March"
    piece = "Marie's Wedding"
    composer = "Composer"
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