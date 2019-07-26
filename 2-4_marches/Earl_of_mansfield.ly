\version "2.18.0"
%
%   	1. Comment out generation of midi files before compiling book
%  	2. Comment out top section when compiling book.........................

#(allow-volta-hook "|")
%from here
%{
#(ly:set-option 'point-and-click #t)  

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
    \partial 8 \grg f16. [ e32 ] |
 \thrwd d8. [ e16 ] \thrwd d8 [ a8 ] |
 \thrwd d16. [ e32 ] \grg f16. [ g32 ] \dblA A8 [ g16. f32 ] |
 \grg e8. [ f16 ] \dble e8 [ \grg a8 ] |
 \grg c16. [ d32 e16. ] f32 ] \dblg g8 [ \grg f16. e32 ] |

 \set Score.repeatCommands = #'((volta "2. --3."))  
 \thrwd d8. [ e16 ] \thrwd d8 [ a8 ] |
 \thrwd d16. [ e32 ] \grg f16. [ g32 ] \dblA A8 [ g32 \grA f16. ] |
 \dblg g8. [ e16 ] \dblc c8 [ \gre a8 ] |
 \thrwd d4 \wslurd d8 
 \set Score.repeatCommands = #'((volta #f)) 
 \break }

    % Part 2
    \repeat volta 2 {
     A16. [ g32 ] |
 \grg f8. [ g16 ] \hdblf f8 [ a8 ] |
 \thrwd d16. [ e32 ] \grg f16. [ g32 ] \dblA A8 [ g16. f32 ] |
 \grg e8. [ f16 ] \dble e8 [ \grg a8 ] |
 \grg c16. [ d32 ] \grg e16. [ f32 ] \dblg g8 [ \grA f16. e32 ] |

 \grg f8. [ g16 ] \hdblf f8 [ a8 ] |
 \thrwd d16. [ e32 ] \grg f16. [ g32 ] \dblA A8 [ g32 f16. ] |
 \dblg g8. [ e16 ] \dblc c8 [ \gre a8 ] |
    \thrwd d4 \wslurd d8 \break }

    % Part 3
    \repeat volta 2 {
     A16. [ g32 ] |
 \tdblf f8 [ d8 ] \dbld d8 [ A16. g32 ] |
 \tdblf f8 [ d8 ] \dbld d8 [ \grg e16. f32 ] |
 \dblg g8 [ \grA a8 ] \dblc c8 [ e8 ] |
 \set Score.measureLength = #(ly:make-moment 5 8)
 \dblc c8 [ \gre a8 ] \wbirl a8 
 \set Score.repeatCommands = #'((volta "1"))  
 A16. g32 
 \once \hide Score.BarLine
 \once \hide Score.SpanBar
 \set Score.repeatCommands = #'((volta #f)) 
 \once \override Score.VoltaBracket.shorten-pair = #'(0.7 . 0)
 \set Score.repeatCommands = #'((volta "2") end-repeat)  
 \grg b16. [ c32 ] 
 \set Score.repeatCommands = #'((volta #f)) |
 \set Score.measureLength = #(ly:make-moment 2 4)
% \break

 \once \override Score.VoltaBracket.shorten-pair = #'(0.5 . 0)
 \set Score.repeatCommands = #'((volta "1"))  
 \tdblf f8 [ d8 ] \dbld d8 [ A16. g32 ] |
 \tdblf f8 [ d8 ] \dbld d8 [ \grg e16. f32 ] |
 \dblg g8. [ e16 ] \dblc c8 [ \gre a8 ] |
 \thrwd d4 \wslurd d8 
 \set Score.repeatCommands = #'((volta #f)) 
 \bar "|." }

    } %end staff
    
  \header {
    meter = "March"
    piece = "Earl of Mansfied"
    composer = "PM John McEwan"
    parttagline = "Copied by John S. McWilliam"

  }
  \layout {
  	  #(layout-set-staff-size 15)
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