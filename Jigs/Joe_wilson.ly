\version "2.18.0"

%{Running this template always results in the following warning:
  Cannot find property type-check for `print-function' (backend-type?).  
  Perhaps a typing error? 
  Warning: skipping assignment. It seems to have its source in "bagpipe_new.ly"
  but does not have any adverse effects
%}
%   	1. Comment out generation of midi files before compiling book
%  	2. Comment out top section when compiling book
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

\score {

    \new Staff  {
    \time 6/8	    %adjust time to suit specific tunes
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
    	\partial 8 f8
    	\grg a \grd a \gre a d \gre a d
    	f \grg d A f e d
    	\dblg g4 b8 \grg b \grd b \gre b
    	\dble e4 d8 \grg c e A
    	%\break 
    	
    	\grg a \grd a \gre a d \gre a d
    	f \grg d A f e d
    	\dblg g4 e8 \grg f e d
    	\dble e4. \gra e4
    } %end repeat
    
    % Part 2
    \repeat volta 2 {
    	A8
    	f4. \dblf f8 d f
    	\dblA A4 d8 \grg f e d
     	\dblg g4 b8 \grg b \grd b \gre b
    	\dble e4 d8 \grg c e A
    	
    	f4. \dblf f8 d f
    	\dblA A4 d8 \grg f e d
    	\dblg g4 \grg e8 \grg f e d
    	\dble e4. \gra e4
    } %end repeat
    
    % Part 3
    \repeat volta 2 {
    	f8
    	\grg a4 f8 \grg a \grd a \gre a
    	d \gre a d \grg f e d
    	\dblg g4 b8 \grg b \grd b \gre b
    	\dble e4 d8 \grg c e A

    	\grg a4 f8 \grg a \grd a \gre a
    	d \gre a d \grg f e d
    	\dblg g4 e8 \grg f e d
    	\dble e4. \gra e4
    } %end repeat
	    
    % Part 4
    \repeat volta 2 {
	A8
	\hdblf f4 A8 \thrwd d4 A8 
	f A \grg A f e d
    	\dblg g4 b8 \grg b \grd b \gre b
    	\dble e4 d8 \grg c e A

	\hdblf f4 A8 \thrwd d4 A8 
	f A \grg A f e d
    	\dblg g4 e8 \grg f e d
    	\dble e4. \gra e4	
    } %end repeat
    

    } %end staff
    
  \header {
    meter = "Jig"
    piece = "P/M Joe Wilson"
    composer = "P/M Angus MacDonald"
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