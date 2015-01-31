\version "2.18.0"
%
%   	1. Comment out generation of midi files before compiling book
%  	2. Comment out top section when compiling book.........................
%
#(allow-volta-hook "||")
%from here
%{
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a4" 'landscape)

%\include "bagpipe.ly"		%(Original)
\include "bagpipe_new.ly" 	%(Replaces bagpipe.ly)
%\include "bagpipe_extra.ly"	%(Extras)
\include "BP_format.ly" 	%(Tagline: Copied by John McWilliam, date)
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
    \bar ".|:"
    \quarterBeaming			

    % Part 1
    \repeat volta 2 {
    \partial 8 a8 |
    \grg f4. \grA g8. [ f16 \grg e8 ] |
    \thrwd d4. \gre a4. |
    \thrwd d4 e8 \grg f4 A8 |
    \grg A8. [ g16 ] \grA f8 \dble e4 
    a8 |
    \grg f4. \grA g8. [ f16 \grg e8 ] |
    \thrwd d4. \dbld c4 \gre b8 |
    \grg a8. [ d16 \grg f8 ] A8. [ a16 g8 ] |
    \grA f4 e8 \thrwd d4 \bar ":..:"
    \break }

    % Part 2
    \set Score.repeatCommands = #'(start-repeat)
     a8 |
    \grg f4 d8 \grg e4 b8 |
    \dbld d8. [ c16 \gre b8 ] \grg a4. |
    \thrwd d4 e8 \grg f4 A8 |
    \grg A8. [ g16 \grA f8 ] \dble e4
    
    \set Score.repeatCommands = #'((volta "1."))
    a8 |
    \grg f4 d8 \grg e4 b8 |
    \dbld d8. [ c16 \gre b8 ] \grg a4. |
    \grg a8. [ d16 \grg f8 ] A8. [ a16 g8 ] |
    \set Score.measureLength = #(ly:make-moment 5/8)
    \grA f4 e8 \thrwd d4
    \set Score.repeatCommands = #'((volta #f) (volta "2. --2,4") end-repeat) 
    \break 
    	   
    \set Score.measureLength = #(ly:make-moment 1/8)  a8| 
    \set Score.measureLength = #(ly:make-moment 6/8)
    \grg f4. \grA g8. [ f16 \grg e8 ] |
    \thrwd d4. \dbld c4 \gre b8 |
    \grg a8. [ d16 \grg f8 ] A8. [ a16 g8 ] |
    \grA f4 e8 \thrwd d4. \bar "||"
    \set Score.repeatCommands = #'((volta #f) )
    
       \override Score.BarLine.break-visibility = #end-of-line-invisible
       \stopStaff 
        % Increasing the unfold counter will expand the staff-free space
       \repeat unfold 6 { s4 s4 }  
%      \once \hide Score.BarLine
      \break 	
      \startStaff  % Resume bar count and show staff lines again  
    
    % Part 3
     \repeat volta 2 {    	    
     \bar ".|:" 
     \grg a8. [ d16 f8 ] \dblA A4 g8 |
     \grA f8. [ d16 e8 ] \tdblf f4. |
     \grg a8. [ \grd c16 e8 ] \dblg g4 \grA f8 |
     \grg e8. [ b16 c8 ] \thrwd d4 \gre b8 |
     \grg a8. [ d16 f8 ] \dblA A4 g8 |
     \grA f8. [ d16 e8 ] \tdblf f4. |
     \grg a8. [ d16 \grg f8 ] A8. [ a16 g8 ] |
    \grA f4 e8 \thrwd d4.
    \revert Score.BarLine.break-visibility

    \break }

    % Part 4
     \repeat volta 2 {
     \set Score.measureLength = #(ly:make-moment 1/8) \dblA g8 |
     \set Score.measureLength = #(ly:make-moment 6/8)
     \dblA A4 \grip A8 \grg A4 g8 |
     \tdblf f4. \gbirl a4. |
     \thrwd d4 e8 \grg f4 A8 |
     \grg A8. [ g16 \grA f8 ] \dble e4 
    
     \set Score.repeatCommands = #'((volta "1."))\dblg g8 |
     \dblA A4 \grip A8 \grg A4 g8 |
     \tdblf f4. \thrwd d4 \gre b8 |
     \grg a8. [ d16 \grg f8 ] A8. [ a16 g8 ] |
     \grA f4 e8 \thrwd d4 
     \set Score.repeatCommands = #'((volta #f) ) }    

    } %end staff
    
  \header {
    meter = "March"
    piece = "John D. Burgess"
    composer = "Gen. Cockburn"
    parttagline = "Copied by John S. McWilliam"

  }
  \layout {
  	  indent = 0.0\cm
%  	  ragged-right = ##t
  	  \override Score.GraceSpacing.spacing-increment = #0
  	  #(layout-set-staff-size 18)
  	  ragged-bottom = ##t
  	  ragged-last-bottom = ##t
    
  	  \context {
  	  	  \Score
  	  	  \remove "Bar_number_engraver"
%  	  	  \override VoltaBracket.Y-offset = #7.5
%  	  	  \override VoltaBracket.height = #2.2
    		}
  	}
%Generation of midi files can be removed here.
%  \midi {}

} %end score

%................................................................
%Useful commands for upgrading from older versions of Lilypond:
%\set Score.measureLength = #(ly:make-moment 5/8)
%\set Score.repeatCommands = #'((volta "1.--2."))
%\set Score.repeatCommands = #'((volta #f))
%\unfoldRepeats for better playback
%remove midi when compiling book