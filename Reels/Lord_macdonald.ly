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

\defineBarLine "|.-.|" #'("|." ".|" "")
\defineBarLine "|.-.|:" #'("|." ".|:" "")
\defineBarLine ":|.-.|" #'(":|." ".|" "")

\score {

    \new Staff  {
    \time 2/2	    %adjust time to suit specific tunes
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
    \bar ".|"
    		
    % Part 1
    \partial 8 A8
    c16 e8. \gra e8. f16 \dble e8. c16 A8. c16 |
    \dblg g4 A8. e16 \grg f8. b16 \grG b8. d16 |
    \grg c16 e8. \gra e8. g16 \dble e8. c16 A8.c16 |
    \grg b8. c16 \dbld d8. b16 \grg c8. \grd a16 \gre a8. A16 | 
    
    c16 e8. \gra e8. f16 \dble e8. c16 \dblA A4 |
    \catchc c4 A8. e16 \grg f8. b16 \grG b8. d16 |
    \grg c4 \grip e16 f8. \dble e8. c16 A8.c16 |
    \grg b8. c16 \dbld d8. b16 \grg c8. \grd a16 \gre a8. A16 \bar "|.-.|" 
    \break
    
    % Part 2
    \birl a4 \grg c16 \grd a8. \grg b16 \grd a8. \grg c16 \grd a8. |
    \gbirl a4 \grg c16 \grd a8. \grg b8. \grd G16 \gre G8. A16 |
    \birl a4 \grg c16 \grd a8. \grg b16 \grd a8. \grg c16 \grd a8. |
    \grg e8. f16 \dble e8. d16 \grg c8. \grd a16 \gre a8. A16 |
    
    \birl a4 \grg c16 \grd a8. \grg b16 \grd a8. \grg c16 \grd a8. |
    \gbirl a4 \grg c16 \grd a8. \grg b8. \grd G16 \gre G8. A16 |
    e8. c16 \dbld d8. b16 \grg c16 \grd a8. \grg b16 \grd G8. |
    \grg a8. \grd a16 \gre a8. b16 \grg c8. \grd a16 \gre a8. b16 \bar "|.-.|:"
    \break
    
    % Part 3
    \repeat volta 2 {
    \thrwd d4 \grg d16 e8. \grg d8. b16 \dblg g4 |
    \catchb b4 \dblg g4 A \birl a8. b16 |
    \thrwd d4 \grg d16 e8. \grg d8. b16 g8. b16 |
    \set Score.measureLength = #(ly:make-moment 17/16)
    \grg a8. b16 \grg d16 a8. \grg b8. [\grd G16 \gre G8. 
    \set Score.repeatCommands = #'((volta "1."))
    b16] 
    \set Score.repeatCommands = #'((volta #f))
    \once \hide Score.BarLine
    \once \hide Score.SpanBar
    \set Score.repeatCommands = #'((volta #f)(volta "2.") end-repeat)
    A16
    \set Score.repeatCommands = #'((volta #f))
    \bar ":|.-.|" \break
    } %end repeat
    
    % Part
    \set Score.measureLength = #(ly:make-moment 2/2)
    a8. [d16 \grg f8. d16] \dble e8. [d16 \grg f8. d16] |
    a8. [d16 \grg f8. d16] \dble e8. [d16 \grg b16 d8.] |
    a8. [d16 \grg f8. d16] \dble e8. [d16 \grg f8. d16] |    
    A4 \grip A8. g16 \hdblf f8. d16 \grc d8. A16 |
    a8. [d16 \grg f8. d16] \dble e8. [d16 \grg f8. d16] |
    a8. [d16 \grg f8. d16] \dble e8. [d16 \grg b16 d8.] |
    \grg f8. e16 \dbld d16 c8. \grg d8. c16 \grg b16 \grd a8. |
    \grg b8. c16 \grg d8. e16 \grg f8. d16 \grc d8. A16 \bar "|."
    \break
    } %end staff
    
  \header {
    meter = "Reel"
    piece = "Lord MacDonald"
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