\version "2.18.0"

%{Running this template always results in the following warning:
  Cannot find property type-check for `print-function' (backend-type?).  
  Perhaps a typing error? 
  Warning: skipping assignment. It seems to have its source in "bagpipe_new.ly"
  but does not have any adverse effects
%}
%   	1. Comment out generation of midi files before compiling book
%  	2. Comment out top section when compiling book.........................
%
% #(allow-volta-hook "|") % enables volta hook outside repeat context
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
    \time 2/4	    %adjust time to suit specific tunes
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
    \partial 8 e8 
 \grg f8. [ g16 ] \hdblf f8. [ e16 ] 
 \thrwd d8 [ f8 ] \birl a8 [ d8 ] 
 \dblc c8 [ e8 ] \birl a8. [ e16 ] 
 \grg f8 [ a8 ] \thrwd d8. [ e16 ] 
 \grg f8. [ g16 ] \hdblf f8. [ e16 ] 
 \thrwd d8 [ f8 ] \birl a8 [ d8 ] 
 \dblc c8 [ e8 ] \birl a8 [ \grg f16. e32 ] 
 \thrwd d4 \slurd d8 \break
    } %end repeat

    % Part 2
    \repeat volta 2 {
 \grg f16. [ g32 ] 
 \dblA A8. [ f16 ] \thrwd d8. [ f16 ] 
 \grg e8 [ f8 ] \birl a8 [ \grg e16. f32 ] 
 \dblg g8 [ e8 ] \dblc c8 [ e8 ] 
 \thrwd d8 [ f8 ] \birl a8 [ \grg f16. g32 ] 
 \dblA A8. [ f16 ] \thrwd d8. [ f16 ] 
 \grg e8 [ f8 ] \birl a8 [ \grg e16 f16 ] 
 \dblg g8 [ e8 ] \dblc c8 [ \gre a8 ] 
 \thrwd d4 \slurd d8 \break
    } %end repeat

    % Part 3
    % Part 4

    } %end staff
    
  \header {
%    meter = "2/4 March"
    piece = "Barren Rochs of Aden"
    composer = "PM Angus McKellar"
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