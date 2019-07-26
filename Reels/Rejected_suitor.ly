\version "2.18.0"
%
%   	1. Comment out generation of midi files before compiling book
%  	2. Comment out from here when compiling book.........................
%{
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a4" 'landscape)

\include "bagpipe.ly"		%(Original)
%\include "../../bagpipe_new.ly"%(Replaces bagpipe.ly)
\include "../../BP_format.ly" 	%(Tagline: Copied by John McWilliam, date)
				%(Paper format A4, Landscape)
				%(Header: peice, meter and composer)
				%(Otherwise Lilypond subtitle)
%to here..........................................................
%}

\defineBarLine "|.-.|" #'("|." ".|" "")

\score {

    \new Staff  {
    \set Staff.midiInstrument = #"bagpipe"    
    \time 2/2
    \tempo 4 = 120
%    \bagpipeKey
    \hideKeySignature
%    \quarterBeaming
    \bar ".|"

    % Part 1
 \partial 8 d8  \grg c16 [ e8. \dble e8. a16 ] \dblg g4 \grA f16 [ A8. ] |
 e8. [ a16 ] \dble e8. [ d16 ] \grg c8. [ \grd a16 ] \gre a8. [ d16 ] |
 \grg c16 [ e8. \dble e8. a16 ] \dblg g4 \hdblf f8. [ e16 ] \bar "|"
 \dbld d8. [ b16 \grg c16 \grd a8. ] \grg b8. [ \grd G16 \gre G8.  d16 ] 
 \break

 \grg c16 [ e8. \dble e8. a16 ] \dblg g4 \grA f8. [ g16 ] |
 A8. [ a16 ] \dble e8. [ d16 ] \grg c8. [ \grd a16 ] \gre a8. [ b16 ] |
 \thrwd d4 \grg f8. [ d16 ] \grg c16 [ e8. A8. c16 ] |
 \grg b16 [ d8. \grA g8. d16 ] \grg b8. [ \grd G16 \gre G8 ] \bar "|.-.|" 
 \break 
    
    % Part 2
 b8 |\dble e8. [ a16 ] \dble e8. [ d16 ] \dblc c4 \gre a8. [ \grd c16 ] |
 \dble e8. [ a16 ] \dblf f8. [ e16 ] \grg c8. [ \grd a16 ] \gre a8. [ c16 ] |
 \grg f8. [ a16 ] \dble e8. [ d16 ] \dblc c4 \gre a8. [ \grd b16 ] |
 \dbld d8. [ b16 \grg c16 \grd a8. ] \grg b8. [ \grd G16 \gre G8.  \grd b16 ] | 
 \break

 \dble e8. [ a16 ] \dble e8. [ d16 ] \dblc c4 \gre a8. [ g16 ] |
 \grA f16 [ A8. e8. a16 ] \grg c8. [ \grd a16 ] \gre a8. [ b16 ] |
 \thrwd d4 \grg f8. [ d16 ] \grg c16 [ e8. A8. c16 ] |
 \grg b16 [ d8. \grA g8. d16 ] \grg b8. [ \grd G16 \gre G8 ] \bar "|.-.|" 
 \break 

    % Part 3
 b8 |\gbirl a4 \dblA A4 g16 [ \grA e8. ] \dblA A4 |
 \birl a4 \dblA A4 c8. [ \grd a16 ] \gre a8. [ b16 ] |
 \gbirl a4 \dblA A4 g16 [ \grA e8. ] \dblg g4 |
 \hdbld d8. [ b16 \grg c16 \grd a8. ] \grg b8. [ \grd G16 \gre G8. \grd b16 ] | 
 \break

 \gbirl a4 \dblA A4 g16 [ \grA e8. ] \dblA A4 |
 \birl a16 [ A8. e8. a16 ] \grg c8. [ \grd a16 ] \gre a8. [ b16 ] |
 \thrwd d4 \grg f8. [ d16 ] \grg c16 [ e8. A8. c16 ] |
 \grg b16 [ d8. \grA g8. d16 ] \grg b8. [ \grd G16 \gre G8] \bar "|.-.|" 
 \break 

    % Part 4
 g8 |\grA f16 [ A8. e16 A8. ] \hdblc c4 \gre a8. [ g16 ] |
 \grA f16 [ A8. e8. a16 ] \grg c8. [ \grd a16 ] \gre a8. [ g16 ] |
 \grA f16 [ A8. e16 A8. ] \hdblc c4 \gre a8. [ \grd c16 ] |
 \grg b8. [ c16 ] \dbld d8. [ c16 ] \grg b8. [ \grd G16 ] \gre G8. [ g16 ] | 
 \break

 \grA f16 [ A8. e16 A8. ] c16 [ e8. \grg a8. g16 ] |
 \grA f16 [ A8. e8. a16 ] \grg c8. [ \grd a16 ] \gre a8. [ b16 ] |
 \thrwd d4 \grg f8. [ d16 ] \grg c16 [ e8. A8. c16 ] |
 \grg b16 [ d8. \grA g8. d16 ] \grg b8. [ \grd G16 \gre G8 ] \bar "|." \break 

    } %end staff
    
  \header {
    meter = "Reel"
    piece = "The Rejected Suitor"
    composer = "Trad."
    parttagline = "Copied by John S. McWilliam"

  }
  \layout {
  	  #(layout-set-staff-size 18)
%  	  ragged-last = ##t
  	}
  	
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