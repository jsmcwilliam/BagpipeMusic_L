\version "2.18.0"
%
%   	1. Comment out generation of midi files before compiling book
%  	2. Comment out from here when compiling book.........................
%{
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a4" 'landscape)

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
    \tempo 4 = 100
    \bagpipeKey
    \time 4/4
    \quarterBeaming		

    % Part 1
 \partial 8 A8 |\hdble e8. [ a16 ] \dblf f8. [ a16 ] \dble e8. [ a16 ] \grd c16
 [ A8. ] |
 \hdble e8. [ a16 ] \dblc c16 [ \gre a8. ] \grd c16 [ e8. ] \gra e16 [ A8. ] |
 \hdblf f8. [ b16 ] \thrwd d16 [ \gre b8. ] \dblf f8. [ b16 ] \thrwd d8. [ e16 ] |
 \dblf f8. [ b16 ] \thrwd d16 [ \gre b8. ] \grip f4 \grg f16 [ A8. ] |

 \hdble e8. [ a16 ] \dblf f8. [ a16 ] \dble e8. [ a16 ] \grd c16 [ A8. ] |
 \hdble e8. [ a16 ] \dblc c16 [ \gre a8. ] \grg c16 [ e8. ] \gra e8. [ f16 ] |
 \thrwd d8. [ f16 ] \wslurd d8. [ f16 ] \dblc c16 [ e8. ] \dblc c16 [ e8. ] |
 \slurb b8. [ e16 ] \dblc c16 [ e8. ] \grip f4 \grg f8. g16 \bar "||"
 
 	% Part 2
 \dblA A4 \grip A8. [ f16 ] \grg e16 [ f16 g8 ] \dblA A8. [ f16 ] |
 \dble e8. [ a16 ] \dblc c16 [ \gre a8. ] \grd c16 [ e8. ] \gra e16 [ f16 g8 ] |
 \dblA A4 \grip A8. [ f16 ] \dble e8.  c16 \dblA A8. [ e16 ] |
 \dblf f8. [ b16 ] \thrwd d16 [ \gre b8. ] \grip f4 \grg f8. [ g16 ] | 
 \dblA A4 \grip A8. [ f16 ] \grg e16 [ f16 g8 ] A16 [ g16 f8 ] |
 \dble e8. [ a16 ] \dblc c16 [\gre a8. ] \grd c16 [ e8. ] \gra e8. [ f16 ] |
 \thrwd d8. [ f16 ] \wslurd d8. [ f16 ] \dblc c16 [ e8. ] \dblc c16 [ e8. ] |
 \slurb b8. [ e16 ] \dblc c16 [ e8. ] \grip f4 \grg f8. [ A16 ] \bar "||"
   
    % Part 3
 \hdble e8. [ a16 ] \dblf f8. [ a16 ] \dble e8. [ a16 ] \grd c16 [ A8. ]  
 e8. [ f16 ] \dble e8. [ a16 ] \grd c16 [ e8. ] \gra e16 [ A8. ]  
 \hdblf f8. [ b16 ] \thrwd d16 [ \gre b8. ] \dblf f8. [ b16 ] \thrwd d8. [ e16 ]  
 \grg f8. [ g16 ] \hdblf f8. [ b16 ] \grip f4 \grg f16 [ A8. ]  
 \hdble e8. [ a16 ] \dblf f8. [ a16 ] \dble e8. [ a16 ] \grd c16 [ A8. ]  
 e8. [ f16 ] \dble e8. [ a16 ] \grd c16 [ e8. ] \gra e8. [ c16 ]  
 \grg d16 [ e16 f8 ] \grg b16 [ c16 d8 ] \grg c16 [ d16 e8 ] \grg a16 [ b16 c8 ]  
 \grg b16 [ c16 d8 ] \grg c16 [ d16 e8 ] \grg d16 [ e16 f8 ] \grg e16 [ f16 g8 ] 
 \bar "||" 
   
    % Part 4
 \dblA A8. [ e16 ] \dblf f8. [ d16 ] \dble e8. [ c16 ] \dblA A8. [ f16 ]  
 \grg e8. [ f16 ] \dble e8. [ a16 ] \grd c16 [ e8. ] \gra e16 [ f16 g8 ]  
 \dblA A8. [ e16 ] \dblf f8. [ d16 ] \dble e8. [ c16 ] \dblA A8. [ e16 ]  
 \grg f8. [ g16 ] \hdblf f8. [ b16 ] \grip f4 \grg f8. [ g16 ]  

 \dblA A8. [ e16 ] \dblf f8. [ d16 ] \dble e8. [ c16 ] A8. [ f16 ]  
 \grg e8. [ f16 ] \dble e8. [ a16 ] \grd c16 [ e8. ] \gra e8. [ c16 ]  
 \grg d16 [ e16 f8 ] \grg b16 [ c16 d8 ] \grg c16 [ d16 e8 ] \grg a16 [ b16 c8 ]  
 \grg b16 [ c16 d8 ] \grg c16 [ d16 e8 ] \grg d16 [ e16 f8 ] \grg f16 [ A8. ] 
 \bar "|."

    } %end staff
    
  \header {
    meter = "Strathspey"
    piece = "Caledonian Society of London"
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