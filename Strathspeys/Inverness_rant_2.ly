\version "2.18.0"

%{Running this template always results in the following warning:
  Cannot find property type-check for `print-function' (backend-type?).  
  Perhaps a typing error? 
  Warning: skipping assignment. It seems to have its source in "bagpipe_new.ly"
  but does not have any adverse effects
%}
%   	1. Comment out generation of midi files before compiling book
%  	2. Comment out top section when compiling book.........................
%	3. Option to comment out "meter" from title e.g. if more than one tune
%	   per page.
%
#(allow-volta-hook "|") % enables volta hook outside repeat context
% from here
%{
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a4" 'landscape)

\include "bagpipe_new.ly" 	%(Replaces bagpipe.ly)
%\include "bagpipe_extra.ly"	%(Extras)
\include "BP_format.ly" 	%(Tagline: Copied by John McWilliam, date)
				%(Paper format A4, Landscape)
				%(Header: piece, meter and composer)
				%(Otherwise Lilypond subtitle)
%to here..........................................................
%}

\score {

    \new Staff  {
    \time 4/4	    %adjust time to suit specific tunes
    \tempo 4 = 80   % adjust speed accordingly for playback
    \bagpipeKey
%   \set Staff.midiInstrument = #"bagpipe"  is set in bagpipe_new.ly (\layout)
%   \showKeySignature (for BMW compatibility)
%   \quarterBeaming % Sets the autobeamer to span quarter notes only. 
    		    % Use for fast music.
%   \halfBeaming    % Sets the autobeamer to span half notes. 
                    % Mostly used in reels.
%   \reelTime       % Reels are in allabreve time with half note beaming.
%   \marchTime      % 4/4 marches are written with numerical time signature and 
                    % with quarter beaming.
%   \stemspace      % Add appropriate tweaks needed for piping grace notes 
                    % to look great.
%   \pgrace         % variant of above (\stemspace)
    \bar ".|:"
    		
    % Part 1
    \repeat volta 2 {
    \partial 8 {
    \set Score.repeatCommands = #'((volta "2."))
    a8 |
    \set Score.repeatCommands = #'((volta #f)) }
 \thrwd d4 \grg a8. [ d16 ] \grg b16 [ d8. ] \grg a8. [ b16 ] |
 \thrwd d4 \grg f8. [ d16 ] \dble e8. [ d16 ] \grg b8. [ c16 ] |
 \thrwd d4 \grg a8. [ d16 ] \grg b16 [ d8. ] \grg a8. [ g16 ] |
 \set Score.measureLength = #(ly:make-moment 7/8)
 \grA f16 [ A8. ] {e16 [ ( f16^\markup {3} g8 ] )} \hdblf f8 [ e8 ] \thrwd d8 |
 \break
    } %end repeat

    % Part 2
    \set Score.measureLength = #(ly:make-moment 1/8)
 a8 
    \set Score.measureLength = #(ly:make-moment 4/4)
 \thrwd d4 \grg f8. [ d16 ] A8. [ d16 ] \grg f8. [ d16 ] |
 \grg c16 [ \grd a8. ] \grg e8. [ a16 ] \grg f8. [ a16 ] \grg e8. [ c16 ] |
 \thrwd d4 \grg f8. [ d16 ] A8. [ d16 ] \grg f8. [ d16 ] |
 \dble e4 \grip e8. [ g16 ] \hdblf f8 [ e8 ] \thrwd d8 [ a8 ]  
 \break

 \thrwd d4 \grg f8. [ d16 ] A8. [ d16 ] \grg f8. [ d16 ] |
 \grg c16 [ \grd a8. ] \grg e8. [ a16 ] \grg f8. [ a16 ] \grg e8. [ c16 ] |
 \thrwd d4 {e16 [ ( f16^\markup {3} g8 ] )} A8. [ e16 ] \grg f8. [ d16 ] |
 \dble e4 \grip e8. [ g16 ] \hdblf f8 [ e8 ] \thrwd d8 
 \bar "|." \break 

    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "Strathspey"
    piece = "Inverness Rant"
    composer = "Traditional"
    parttagline = "Copied by John S. McWilliam"
  }
% added layout options. See bagpipe_new.ly (\layout) for default settings
  \layout {
  	  #(layout-set-staff-size 18)
%  	  ragged-last = ##t
  	}

% \midi {} %Generation of midi files option.

}%end score

%................................................................
%Useful commands for upgrading from older versions of Lilypond:
%\set Score.measureLength = #(ly:make-moment 5/8)
%\set Score.repeatCommands = #'((volta "1.--2."))
%\set Score.repeatCommands = #'((volta #f))
%\once \hide Score.BarLine
%\once \hide Score.SpanBar
%\once \override Score.VoltaBracket.shorten-pair = #'(0.5 . 0)
%\unfoldRepeats for better playback
%remove midi when compiling book
% see Examples or Leaving Glen Urquhart for implementation guide
%................................................................