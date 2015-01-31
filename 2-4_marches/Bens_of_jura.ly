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
%
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
%    \bar ".|:"
    		
    % Part 1
    \partial 8 A16. g32
    \repeat volta 2 {
  	\grA f4 \grg e32 g16. \grA f16. e32 
  	\thrwd d8 \gre a \grg a32 \grd a16. \grg d16. c32
  	\grg b8 \thrwd d \dblg g16. f32 \grg e16. d32
  	\dblf f8 e \gra e A16. g32
  	\grA f4 \grg e32 g16. \grA f16. e32 
  	\break
  	\thrwd d16. e32 \grg f16. d32 \dblb b8 [\dblg g]
  	\dblA A8 a \grg f32 g16. \grA e32 f16.
    } %end repeat
    \alternative {
    	    {\thrwd d4 \grg d8 A16. g32}
	    {\thrwd d4 \grg d8 \grg a16. d32 \break}
    }
    % Part 2
    \repeat volta 2 {
	\grg f8 e32 d16. A16. f32 \grg e32 f16.
	\thrwd d8 \gre a \grg a32 \grd a16. \grg d16. c32
	\thrwd d8 \gre a \grg a32 \grd a16. \grg d16. c32
  	\grg b8 \thrwd d \dblg g16. f32 \grg e16. d32
  	\dblf f8 e \gra e \grg a16. d32 
  	\break
	\grg f8 e32 d16. A16. f32 \grg e32 f16.
  	\thrwd d16. e32 \grg f16. d32 \dblb b8 [\dblg g]
  	\dblA A8 a \grg f32 g16. \grA e32 f16.
  	\thrwd d4 \grg d8 \grg a16. d32 \break
    } %end repeat
    
    % Part 3
    \repeat volta 2 {
    	\grg f16. a32 \grg a32 \grd a16. A16. a32 \grg f16. e32
    	\thrwd d8 \gre a \grg a32 \grd a16. \grg d16. c32
    	\grg b32 d16. \grg a32 d16. \grg f32 A16. d32 f16.
    	\dblf f8 e \gra e \grg a16. d32
    	\grg f16. a32 \grg a32 \grd a16. A16. a32 \grg f16. e32
    	\break
  	\thrwd d16. e32 \grg f16. d32 \dblb b8 [\dblg g]
  	\dblA A8 a \grg f32 g16. \grA e32 f16.
    } %end repeat
    \alternative {
  	{ \thrwd d4 \grg d8 \grg a16. d32 }
    	{\thrwd d4 \grg d8 A16. g32 \break}
}
    
    % Part 4
    \repeat volta 2 {
	\grA e32 g16. \grA e32 f16. \grg d16. a32 \grg b32 g16.
    	\thrwd d8 \gre a \grg a32 \grd a16. \grg d16. c32
    	\grg b32 d16. g32 A16. f32 d16. \grg b16. f32
	\dblf f8 e \gra e A16. g32
	\grA f32 g16. \grA e32 f16. \grg d16. a32 \grg b32 g16.
	\break
  	\thrwd d16. e32 \grg f16. d32 \dblb b8 [\dblg g]
  	\dblA A8 a \grg f32 g16. \grA e32 f16.	
    } %end repeat
    \alternative {
    	    {\thrwd d4 \grg d8 A16. g32}
	    {\thrwd d4 \grg d8 r \bar "|."}
    }

    } %end staff
    
  \header {
    meter = "March"
    piece = "The Bens of Jura"
    composer = "John McLellan of Dunoon. Arr: Jane Gulden & Jay Close"
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