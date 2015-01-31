\version "2.18.0"
%
%   	1. Comment out generation of midi files before compiling book
%  	2. Comment top section when compiling book.........................

#(allow-volta-hook "||")
%from here
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
      \partial 8 A8
      c16 \grd a8. \grd c8 \dblb b4 \grG a8
      \grg a8. \grd c16 e8 \dblf f4 e8
      \grg c16 \grd a8. \grd c8 \dblc c8. \grg b16 \grd a8
      \grg b4. \taor b4 A8
%      \break
      c16 \grd a8. \grd c8 \dblb b4 \grG a8
      \grg a8. \grd c16 e8 \dblf f4 e8
      \grg c16 \grd a8. \grd c8 \dblb b4 \gre G8
      \grg a4. \wbirl a4 \bar ":..:"
      \break }

    % Part 2 (-manual repeats)
      \set Score.repeatCommands = #'(start-repeat)
      \dblg g8
      \dblA A4 e8 \dblf f4 e8
      \dblA A4 e8 \dblf f4 e8
      \grg c16 \grd a8. \grd c8 \dblc c8. \grg b16 \grd a8
      \grg b4. \taor b4 
%      \break

      \set Score.repeatCommands = #'((volta "1."))
      \dblg g8 
      \dblA A4 e8 \dblf f4 e8
      \dblA A4 e8 \dblf f4 e8
      \grg c16 \grd a8. \grd c8 \dblb b4 \gre G8
      \grg a4. \wbirl a4 
      \set Score.repeatCommands = #'((volta #f))
      \break 
       
      \set Score.repeatCommands = #'((volta #f) (volta "2. --2,4") end-repeat)       
      \grg c16 d
      \grg c16 e8. c8 \dblb b4 \grG a8
      \grg a8. \grd c16 e8 \dblf f4 e8
      \grg c16 \grd a8. \grd c8 \dblb b4 \gre G8
      \set Score.measureLength = #(ly:make-moment 5/8)
      \grg a4. \wbirl a4 
      \bar "||"
      \set Score.repeatCommands = #'((volta #f)) 
      
      \override Score.BarLine.break-visibility = #end-of-line-invisible
      \stopStaff 
        % Increasing the unfold counter will expand the staff-free space
       \repeat unfold 3 { s4 s4 }  
%      \once \hide Score.BarLine
      \break 	
      \startStaff  % Resume bar count and show staff lines again  

    % Part 3
       \repeat volta 2 {
%      \bar ".|:" 
       \set Score.measureLength = #(ly:make-moment 1/8)
      A8
       \set Score.measureLength = #(ly:make-moment 6/8)
      c4 \taor c8 \dblc c8. \grg b16 \grd a8
      \grg c4 \grip e8 \dblf f4 e8
      \grg c4 \taor c8 \dblc c8. \grg b16 \grd a8
      \grg b4. \taor b4 A8
      \revert Score.BarLine.break-visibility

%      \break
      
      c4 \taor c8 \dblc c8. \grg b16 \grd a8
      \grg c4 \grip e8 \dblf f4 e8
      \grg c16 \grd a8. \grd c8 \dblb b4 \gre G8
      \grg a4. \wbirl a4
      \break }

    % Part 4
        \repeat volta 2 {
      \dblg g8
      \dblA A4 e8 \dblf f4 e8
      \grg f16 A8. e8 \dblf f4 e8
      \grg c16 A8. c8 \dblc c8. \grg b16 \grd a8
      \grg b4. \taor b4 
%      \break 
  
      \set Score.repeatCommands = #'((volta "1."))
      \dblg g8 
      \dblA A4 e8 \dblf f4 e8
      \grg f16 A8. e8 \dblf f4 e8
      \grg c16 \grd a8. \grd c8 \dblb b4 \gre G8
      \grg a4. \wbirl a4 
      \set Score.repeatCommands = #'((volta #f))
     \break 
      }


    } %end staff
    
  \header {
    meter = "March"
    piece = "Cock o' the North"
    composer = "Trad."
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