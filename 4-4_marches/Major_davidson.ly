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
    \bar ".|"
    		
    % Part 1
    \partial 4 {A8. [ f16 ]} 
 \thrwd d4 \grg d4 \grG d4 \grg d16. [ e32 \grg f16. g32 ] 
 A4 \grg A4 \grg A4 f4 
 \dble e4. f8 \hdblf g8. [ f16 ] \grg e8 [ d8 ] 
 \dblc c4 \dblb b4 \grG a4 \thrwd d4  
 \break

 \grg b4. d8 \grg a4. d8 
 \grg G4 \thrwd d4 \dblc c4. d8 
 \dble e4. f8 \grA g8 [ e8 ] \grg c16 [ e8. ] 
 \thrwd d2 \slurd d4 \bar "|.-.|" \break 

    % Part 2
 \dble e8. [ d16 ] 
 \dblc c8. [ b16 ] \grg c8 [ d8 ] \dble e8. [ c16 ] \grG a4 
 \thrwd d8. [ e16 ] \grg f8 [ g8 ] \dblA A8. [ f16 ] \thrwd d4 
 \grg b8. [ c16 ] \dbld d8. [ e16 ] \grg f8. [ e16 ] \grg d8 [ f8 ] 
 \dblA A4 \grg A8. [ f16 ] \dble e4 A8. [ f16 ]  
 \break

 \thrwd d4 \grg d4 \grG d4 \grg d16. [ e32 \grg f16. g32 ] 
 A4 \grg A4 \grg A4 f4 
 \dble e4. f8 \grA g8 [ e8 ] \grg c16 [ e8. ] 
 \thrwd d2 \slurd d4 \bar "|." \break 

    % Part 3
    % Part 4

    } %end staff
    
  \header {
%    meter = "4/4 March"
    piece = "Major Davidson"
    composer = "Arr. Ed Krintz"
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