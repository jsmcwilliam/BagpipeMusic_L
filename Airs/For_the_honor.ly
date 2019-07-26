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
%{
#(allow-volta-hook "|") % enables volta hook outside repeat context
% from here
%
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a4" 'landscape)

\include "bagpipe.ly"           %(Original)
%\include "bagpipe_new.ly" 	%(Replaces bagpipe.ly)
%\include "bagpipe_extra.ly"	%(Extras)
\include "../../Includes/BP_format.ly" 	
                                %(Tagline: Copied by John McWilliam, date)
				%(Paper format A4, Landscape)
				%(Header: piece, meter and composer)
				%(Otherwise Lilypond subtitle)
%to here..........................................................
%}

\score {

    \new Staff  {
    \time 4/4	    %adjust time to suit specific tunes
    \tempo 4 = 80   % adjust speed accordingly for playback
    \hideKeySignature
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
 \thrwd d2^\markup {\left-align \bold \large {Solo piper slowly, 
			full band drones only.}} A2 
 \thrwd d2 e2 
 \thrwd d4 e4 \grg f4 d4 
 \gre b1^\markup {\left-align \bold \large {Accel. Full band, a tempo}} 
 \thrwd d2 A2 
 \thrwd d2 e2 
 \thrwd d4 e4 \grg f4 d4 
 \gre b2. \grg d8 [ e8 ] 
 \bar "||" \break

    % Part 2
    \bar ".|:"
    \repeat volta 2 {
 \grg f4. \gre f8 \dblA A4. f8 
 \grg f2 e4 \grg d8 [ e8 ] 
 \grg f4 g4 \hdblf f4 d4 
 \dblb b2. a4 
 \grG a4 d4 \slurd d4. b8 
 \grG a4 e4 \gra e4 \grg d8 [ e8 ] 
 \grg f4 g4 \hdblf f4 d4
 \set Score.measureLength = #(ly:make-moment 6 4)
 \dblb b2.
 \set Score.repeatCommands = #'((volta "1"))  \grg d8 [ e8 ]
 \once \hide Score.BarLine
 \once \hide Score.SpanBar
 \set Score.repeatCommands = #'((volta #f) (volta "2.") end repeat) 
 \grG a2 
 \set Score.repeatCommands = #'((volta #f)) 
 \break
    } %end repeat

    % Part 3
 \set Score.measureLength = #(ly:make-moment 4 4)
 \thrwd d2 A2 
 \thrwd d2 e2 
 \thrwd d4 e4 \grg f4 d4 
 \gre b1 
 \thrwd d2 A2 
 \thrwd d2 e2 
 \thrwd d4 e4 \grg f4 d4 
 \gre b2. a4 \bar "||" \break

    % Part 4
    \bar ".|:"
    \repeat volta 2 {
 \wbirl a2 d2 
 \dble e2. d4 
 \dblg g2 f2 
 \dble e2. a4 
 \wbirl a2 d2 
 \dble e2. d4
 \time 3/4
 \once \override Score.VoltaBracket.shorten-pair = #'(0 . 0.3)
 \set Score.repeatCommands = #'((volta "1"))  \slurd d2 a4 
 \set Score.repeatCommands = #'((volta #f))  
 \once \override Score.VoltaBracket.shorten-pair = #'(0.5 . 0)
 \set Score.measureLength = #(ly:make-moment 4/4)
 \set Score.repeatCommands = #'((volta "2"))  
 \slurd d1^\markup {\left-align \bold \large {Band stops after 4}} \fermata 
 \set Score.repeatCommands = #'((volta #f)) 
 \break
    } %end repeat

    % Part 5
 \time 4/4
 \set Score.measureLength = #(ly:make-moment 1 4)
 \grg d8^\markup {\left-align \bold \large {Solo piper, Rit}} [ e8 ]
 \set Score.measureLength = #(ly:make-moment 4 4)
 \grg f4. \gre f8 \dblA A4. f8 
 \grg f2 e2 
 \grg f4 g4 \hdblf f4 d4 
 \time 6/4
 \dblb b2 a2 d2 \bar "|." \break 


    } %end staff
    
  \header {
    meter = "Hymn"
    piece = "For the Honor"
    composer = "Traditional (Arr. S. MacKay)"
    parttagline = "Copied by John S. McWilliam"
  }
% added layout options. See bagpipe_new.ly (\layout) for default settings
  \layout {
  	#(layout-set-staff-size 18)
 	ragged-last = ##t
  \context {
    \Score
%    \override MetronomeMark #'extra-offset = #'(-9 . 0)
    \override MetronomeMark #'padding = #'3
  }
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