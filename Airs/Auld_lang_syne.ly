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
    \time 4/4	    %adjust time to suit specific tunes
    \tempo 4 = 100   % adjust speed accordingly for playback
    \bagpipeKey
   \set Staff.midiInstrument = #"bagpipe"  %is set in bagpipe_new.ly (\layout)
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
      \grg a4. \wbirl a8 \grg a4 \grd c
      \grg b4. a8 \grg b4 \grd c8 b
      \grg a4. \wbirl a8 \grg c4 e
      \grg f2. \gre f4
%      \break
      \grg e4. c8 \grip c4 \grG a
      \grg b4. a8 \grg b4 \grd c8 b
      \grg a4. f8 \grg f4 e
      \grg a2. f4
    }
    \break

    % Part 2
    
    \repeat volta 2 {
      \grg e4. c8 \grip c4 \grG a
      \grg b4. a8 \grg b4 f
      \grg e4. c8 \grip c4 e
      \grg f2. A4
%      \break
      e4. c8 \grip c4 \grG a
      \grg b4. a8 \grg b4 \grd c8 b
      \grg a4. f8 \grg f4 e
      \grg a2. ~ a8
    }

    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = ""
    piece = "Auld Lang Syne"
    composer = "Trad."
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