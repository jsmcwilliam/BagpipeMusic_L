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
 #(allow-volta-hook "") % enables volta hook in mid bar context
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
    \tempo 4 = 160   % adjust speed accordingly for playback
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
 \grg b8  \grd b8 \gre b8  \dblf f4 e8 
 \grg f8  b8 \grG b8  \dblf f4 e8 
 \grg b8  \grd b8 \gre b8  \dblf f4 e8 
 \grg c8  \grd a8 \gre a8  \grg f8  e8 c8   
% \break

 \grg b8  \grd b8 \gre b8  \dblf f4 e8 
 \grg f8  b8 \grG b8  \dblf f4 e8 
 \grg f8  g8 A8  e8  f8 A8  
 c8  \grd a8 \gre a8  \grg f e c
 \break
    }
    % Part 2
        \repeat volta 2 {
 \dblA A4. \hdblf f4 e8 
 \grg f8  b8 \grG b8  \dblf f4 e8 
 \dblA A4. \hdblf f4 e8 
 \grg c8  \grd a8 \gre a8  \grg f8  e8 c8  
% \break

 \dblA A4. \hdblf f4 e8 
 \grg f8  b8 \grG b8  \dblf f4 e8 
 \grg f8  g8 A8  e8  f8 A8  
 c8  \grd a8 \gre a8 \grg f e c
 \break
 	}
    % Part 3
        \repeat volta 2 {
     \grg b8  \grd b8 \gre b8  \grg c8  \grd c8 \gre c8  
 \grg b8  \grd b8 \gre b8  \dblf f4 e8 
 \grg c8  \grd c8 \gre c8  \grg b8  \grd b8 \gre b8  
 \grg a8  \grd a8 \gre a8  \grg f8  e8 c8   
% \break

 \grg b8  \grd b8 \gre b8  \grg c8  \grd c8 \gre c8  
 \grg b8  \grd c8 e8  \dblf f4 e8 
 \grg f8  g8 A8  e8  f8 A8  
 c8  \grd a8 \gre a8  \grg f e c
 \bar ":..:"
 \break
 	}
    % Part 4
        \set Score.repeatCommands = #'(start-repeat)
  A8  g8 A8  \hdblf f4 e8 
 \grg f8  b8 \grG b8  \dblf f4 e8 
 A8  g8 A8  \hdblf f4 e8 
 \grg c8  \grd a8 \gre a8  \grg f8  e8 c8   
% \break

 \set Score.measureLength = #(ly:make-moment 9/8)
 \set Score.repeatCommands = #'((volta "1"))
  A8  g8 A8  
 \once \hide Score.BarLine
 \once \hide Score.SpanBar
 \set Score.repeatCommands = #'((volta #f)(volta "2.") end-repeat)
 A4.
 \set Score.repeatCommands = #'((volta #f) ) 
 \hdblf f4 e8
 \set Score.measureLength = #(ly:make-moment 6/8)
 
 \grg f8  b8 \grG b8  \dblf f4 e8 
 \grg f8  g8 A8  e8  f8 A8  
  c8  \grd a8 \gre a8  \dble e4 c8
 \set Score.repeatCommands = #'(end-repeat)
 	
    } %end staff
    
  \header {
    meter = "Jig"
    piece = "Paddy's Leather Breeches"
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