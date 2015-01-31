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
    \time 6/8	    %adjust time to suit specific tunes
    \tempo 4 = 80   % adjust speed accordingly for playback
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
    		
    % Part 1
    
    \dblc c4 e8 \gra e4.
    \dblc c4 b8 \grG a4.
    \grg b4 \grd c8 \dble e4 c8
    \grg b4. \grip b4.
%    \break
    \dblc c4 e8 \gra e4.
    \dblc c4 b8 \grG a4.
    \grg b4 \grd c8 \dblb b4 \grG a8
    \grg a4. \wbirl a4.
    \bar "||" \break

    % Part 2
    
    \grg f4 A8 \grg A4.
    \grf g4 e8 \dblf f4.
    \grg f4 A8 \grf g4 e8
    \grg f4. \grip f4.
%    \break
    \grg f4 A8 \grg A4.
    \grf g4 e8 \dblf f4.
    \grg f4 A8 \grf g4 e8
    \grg f4. \dble e4.
    \bar "||" \break
    
    % Part 3
    
    \dblc c4 e8 \gra e4.
    \dblc c4 b8 \grG a4.
    \grg b4 \grd c8 \dble e4 c8
    \grg b4. \grip b4.
%    \break
    \dblc c4 e8 \gra e4.
    \grg f4 \dblg g8 \dblA A4.
    b4 \grd c8 \dblb b4 \grG a8
    \grg a4. \wbirl a4.
    \bar "|."
    
    % Part 4

    } %end staff
    
  \header {
    meter = "Air"
    piece = "Going Home"
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