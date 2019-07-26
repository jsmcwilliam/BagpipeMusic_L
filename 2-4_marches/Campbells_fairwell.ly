\version "2.18.0"
%
%   	1. Comment out generation of midi files before compiling book
%  	2. Comment out top section when compiling book.........................

#(allow-volta-hook "|")
%from here
%{
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a4" 'landscape)

\include "bagpipe.ly"          %(Original)
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
    \partial 8 e8 |
 \grg a8. [ b16 ] \grip c8 [ \thrwd d8 ] 
 \dble e8 [ A8 ] \hdble e8. [ d16 ] 
 \dblc c8 [ \gre a8 ] \wbirl a8 [ \grg b16. c32 ] 
 \thrwd d8. [ b16 ] \grg G8 [ \grd b8 ] 
% \break

 \grg a8. [ b16 ] \grip c8 [ \thrwd d8 ] 
 \dble e8 [ A8 ] \hdble e8. [ d16 ] |
 \dblc c8 [ \grg b32 \grd a16. ] \grg G8 [ \grd b8 ] 
 \grg a4 \wbirl a8
 \break }

    % Part 2
    \repeat volta 2 {
     g16. [ f32 ] |
 \dble e8 [ A8 ] \grg A8 [ g16. f32 ] 
 \dble e8 [ A8 ] \hdble e8. [ d16 ] 
 \dblc c8 [ \gre a8 ] \wbirl a8 [ \grg b16. c32 ] 
 \set Score.measureLength = #(ly:make-moment 5/8)
 \thrwd d8. [ b16 ] \grg G8
 \set Score.repeatCommands = #'((volta "1"))  
 g16. f32 
 \once \hide Score.BarLine
% \once \hide Score.SpanBar
 \set Score.repeatCommands = #'((volta #f)) 
 \once \override Score.VoltaBracket.shorten-pair = #'(0.7 . 0)
 \set Score.repeatCommands = #'((volta "2") end-repeat)  
 \grd b8 
 \set Score.repeatCommands = #'((volta #f) end-repeat) |
 \set Score.measureLength = #(ly:make-moment 2 4)
% \break 
    }
 \alternative {
 	 {
 \once \override Score.VoltaBracket.shorten-pair = #'(0.7 . 0)
 \set Score.repeatCommands = #'((volta "1"))  
 \dble e8 [ A8 ] \grg A8 [ g16. f32 ] |
 \dble e8 [ A8 ] \hdble e8. [ d16 ] |
 \dblc c8 [ \grg b32 \grd a16. ] \grg G8 [ \grd b8 ] |
 \set Score.measureLength = #(ly:make-moment 3 8)
 \grg a4 \wbirl a8 
 \set Score.repeatCommands = #'((volta #f)) 
% \bar ":..:"
 \bar ":|."
 \break	 
 	 }
 	 {
 \set Score.repeatCommands = #'((volta "2")) 
 \set Score.measureLength = #(ly:make-moment 2 4)
 \grg a16. [ b32 \grg c16. d32 ] \grg c16. [ d32  \grg e16. f32 ] |
 \grg e16. [ f32 \grA g32 A16. ] \hdble e8. [ d16 ] |
 \dblc c8 [ \grg b32 \grd a16. ] \grg G8 [ \grd b8 ] |
 \set Score.measureLength = #(ly:make-moment 3 4)
 \grg a4 \wbirl a8 \set Score.repeatCommands = #'((volta #f)) 
 \bar "|." \break }
 }


    } %end staff
    
  \header {
    meter = "March"
    piece = "Campbells Fairwell to Redcastle"
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