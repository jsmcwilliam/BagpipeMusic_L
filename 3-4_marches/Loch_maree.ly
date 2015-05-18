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
#(allow-volta-hook "|.") % enables volta hook outside repeat context
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
    \time 3/4	    %adjust time to suit specific tunes
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
    	\set Score.repeatCommands = #'(start-repeat)
\dblc c8 [ e8 ] \grg a4 \taor a8. [ c16 ] 
 \gre a8 [ \grd c8 ] \dble e4 \gra e4 
 \dblc c8 [ e8 ] \dblf f4 \grg a8. [ d16 ] 
 \grg f8 [ A8 ] \hdblf f4 \grg e4 
 
 	\set Score.repeatCommands = #'((volta "1"))  
 \dblc c8 [ e8 ] \grg a4 \taor a8. [ c16 ] 
 \gre a8 [ \grd c8 ] \dble e4 \gra e4 
 \dblc c8 [ e8 ] \dblf f4 \grg a8. [ c16 ] 
 \dble e8. [ c16 ] \dblc c4 \gre b4 \break
 
 	\set Score.repeatCommands = #'((volta #f) (volta "2. --1,2") end-repeat)  
 \dblc c8 [ e8 ] \dblf f4 \grg a4 
 \grg b8 [ \grip c8 ] \dble e4 \birl a4 
 \grg a8. [ b16 ] \grip c4 \gre a8. [ c16 ] 
 \dble e8. [ c16 ] \dblb b4 \grG a4 
 \set Score.repeatCommands = #'((volta #f)) 
 \bar "|."
 
     	\override Score.BarLine.break-visibility = #end-of-line-invisible
 	\stopStaff 
        % Increasing the unfold counter will expand the staff-free space
        \repeat unfold 6 { s4 s4 s4 } 
        \break
        \startStaff  % Resume bar count and show staff lines again 

    % Part 2
    	\set Score.repeatCommands = #'(start-repeat) 
 \dblc c8 [ e8 ] \dblA A4 \grg A8 [ f8 ] 
 \dblA A8. [ f16 ] \grg e4 \gra e4 
 \dblc c8 [ e8 ] \dblf f4 \dble e8 [ c8 ] 
 \dblA A8 [ f8 ] \dblf f4 \grg e4 
 	\revert Score.BarLine.break-visibility
 
 	\set Score.repeatCommands = #'((volta "1"))  
 \dblc c8 [ e8 ] \dblA A4 \grg A8 [ f8 ] 
 \dblA A8. [ f16 ] \grg e4 \gra e4 
 \dblc c8 [ e8 ] \dblf f4 \grg a8. [ c16 ] 
 \dble e8. [ c16 ] \dblc c4 \gre b4
 	\set Score.repeatCommands = #'((volta #f) end-repeat)

    % Part 3
    % Part 4

    } %end staff
    
  \header {
%    meter = "3/4 Retreat March"
    piece = "Loch Maree"
    composer = "P/M G.S.MacLennan 1884-1929 (Arr. Ed Krintz)"
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