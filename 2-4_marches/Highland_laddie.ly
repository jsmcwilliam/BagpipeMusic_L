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
	\partial 8
	\repeat volta 2 {
    		\grg a16. [ b32 ]  
 \thrwd d8. [ e16 ] \grg f8 [ A8 ]  
 g16. [ f32 e16. d32 ] \grg f4  
 \dblf f8 [ e8 ] \dble e8 [ d16. e32 ]  
 \dblf f8 [ e8 ] \dble e8 [ d32 b16. ]   
% \break

 \thrwd d8. [ e16 ] \grg f8 [ A8 ]  
 g16. [ f32 e16. d32 ] \grg f8 [ e16. f32 ]  
 \thrwd d8 [ b8 ] \dblb b8 [ \grg a16. b32 ]  
 \thrwd d8 [ b8 ] \dblb b8 \break
 	} %end repeat
 
% Part 2
	\repeat volta 2 {
 \dblg g8  
 \dblA A8 [ g32 f16. ] \dblg g8 [ f32 e16. ]  
 \dblf f16. [ e32 d16. e32 ] \grg f4  
 \dblf f8 [ e8 ] \dble e8 [ d16. e32 ]  
 \dblf f8 [ e8 ] \dble e8 [ \dblg g8 ]   
% \break

 \dblA A8 [ g32 f16. ] \dblg g8 [ f32 e16. ]  
 \dblf f16. [ e32 d16. e32 ] \grg f8 [ e16. f32 ]  
 \thrwd d8 [ b8 ] \dblb b8 [ \grg a16. b32 ]  
 \thrwd d8 [ b8 ] \dblb b8 \break
 	} %end repeat
 	} %end Staff
    
  \header {
    meter = "March"
    piece = "Highland_Laddie"
    composer = "Trad."
    parttagline = "Copied by John S. McWilliam"
    title = ##f
    subtitle = ##f
  }
  \layout {
  	  #(layout-set-staff-size 15)
% 	  ragged-last = ##t
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