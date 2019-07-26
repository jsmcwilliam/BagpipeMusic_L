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

\defineBarLine ":|.-.|" #'(":|." ".|" "") 
\defineBarLine "|.-.|:" #'("|." ".|:" "") 

\score {

    \new Staff  {
    \set Staff.midiInstrument = #"bagpipe"    
    \time 4/4
    \tempo 4 = 100
%    \bagpipeKey
    \hideKeySignature
    \quarterBeaming			

    % Part 1
    \repeat volta 2 {
    \bar ".|:"
 \partial 8  e8 |
 \grg d16 [ \hslurb b8. ] \dblb b16 [ \gre a8. ] \grg G8. [ a16 ] \dblb b16 [ e8. ] |
 \thrwd d16 [ \gre G8. ] \dblb b16 [ \gre G8. ] \whslurd d16 [ \gre G8. ] \dblb b16 [ e8. ] |
 \grg d16 [\hslurb b8. ] \dblb b16 [ \gre a8. ] \grg G8. [ a16 ] \dblb b16 [ e8. ] |
 \dblg g8. [ e16 ] \grg f16 [ e16 d8 ] \dble e4 \dblg g4 
 \bar ":|.-.|" \break }
    
    % Part 2
 \thrwd d8. [ e16 ] \dblg g8. [ e16 ] \dblA A4 \hslure e8. [ f16 ] |
 \dblg g8. [ e16 ] \thrwd d8. [ b16 ] \dblg g4 \whslurd d8. [ e16 ] |
 \thrwd d8. [ e16 ] \dblg g8. [ e16 ] \dblA A4 \hslure e8. [ f16 ] |
 \dblg g8. [ e16 ] \grg f16 [ e16 d8 ] \dble e4 \dblg g4 | 
 \break

 \thrwd d8. [ e16 ] \dblg g8. [ e16 ] \dblA A4 \hslure e8. [ A16 ] |
 \dblg g8. [ e16 ] \thrwd d8. [ b16 ] \dblg g4 \whslurd d8. [ e16 ] |
 \dblA A8. [ f16 ] \dblg g8. [ f16 ] \dble e8. [ d16 ] \dblb b16 [ \gre a8. ] |
 \grip e4 \grg f16 [ e16 d8 ] \dble e4 \dblg g4 \bar "|.-.|:" \break

    % Part 3
 \repeat volta 2 {
 \grA G8. [ a16 ] \dblb b16 [ \gre G8. ] \whslurd d16 [ \gre G8. ] \dblb b16 [ e8. ] |
 \grg d16 [ \hslurb b8. ] \thrwd d8. [ e16 ] \grg d16 [\hslurb b8. ] \dblb b16 [ \gre a8. ] |
 \grA G8. [ a16 ] \dblb b16 [ \gre G8. ] \whslurd d16 [ \gre G8. ] \dblb b16 [ e8. ] |
 \dblg g8. [ e16 ] \grg f16 [ e16 d8 ] \dble e4 \dblg g4 
 \bar ":|.-.|" \break }
    
    % Part 4
 \thrwd d8. [ e16 ] \dblg g8. [ A16 ] g16 [ f16 e8 ] \dblg g4 |
 \thrwd d8. [ e16 ] \dblg g8. [ e16 ] \dblA A4 \grip A4 |
 \thrwd d8. [ e16 ] \dblg g8. [ A16 ] g16 [ f16 e8 ] \dblg g4 |
 \hdblb b16 [ \gre a8. ] \grg b16 [ c16 d8 ] \dble e4 \dblg g4 | 
 \break
    

 \thrwd d8. [ e16 ] \dblg g8. [ A16 ] g16 [ f16 e8 ] \dblg g4 |
 \thrwd d8. [ e16 ] \dblg g8. [ e16 ] A4 \hslure e8. [ f16 ] |
 \dblg g8. [ A16 ] g16 [ f16 e8 ] \thrwd d8. [ e16 ] \grg f16 [ e16 d8 ] |
 \dblb b16 [ \gre a8. ] \grg b16 [ c16 d8 ] \dble e4 \dblg g4 \bar "|." \break     

    } %end staff
    
  \header {
    meter = "Strathspey"
    piece = "John Roy Stewart"
    composer = "Arr. by W. Ferguson"
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