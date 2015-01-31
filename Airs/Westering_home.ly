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
 \grg a8. [ \grd b16 \gre a8 ] \grg a4 \taor a8 
 \thrwd d4 e8 \dblf f4. 
 \dblg g8. [ f16 \grg e8 ] \grg f8. [ e16 \grg d8 ] 
 \grg b4 \taor b8 \grg a4.  \break

 \grg a8. [ \grd b16 \gre a8 ] \grg a4 \taor a8 
 \thrwd d4 e8 \dblf f4. 
 \dblA A8. [ f16 \grg d8 ] \grg f4 \grg e8
 \set Score.measureLength = #(ly:make-moment 9/8) 
 \thrwd d4. 
 \set Score.repeatCommands = #'((volta "1"))  
 \dbld d8. [ c16 b8 ] 
 \set Score.repeatCommands = #'((volta #f)) 
 \set Score.repeatCommands = #'((volta "2"))  
 \dbld d4. 
 \set Score.repeatCommands = #'((volta #f)) 
 \break
    } % end repeat

    % Part 2
    \repeat volt 2 {
 \set Score.measureLength = #(ly:make-moment 6/8)
 \dblA A8. [ f16 \grg d8 ] \dbld d8. [ e16 f8 ] 
 \dble e8. [ \grg d16 e8 ] \birl a4. 
 \grg a8. [ b16 c8 ] \thrwd d8. [ e16 f8 ] 
 \dblg g8. [ f16 g8 ] \hdble e4.  
 \break

 \dblA A8. [ f16 \grg d8 ] \dbld d8. [ e16 f8 ] 
 \dble e8. [ \grg d16 e8 ] \birl a4 \dblg g8 
 \hdblf f8. [ e16 \grg d8 ] \grg f4 \grg e8 
 \thrwd d4. \dbld d4. 
 \break
    } %end repeat
    
    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "Slow March"
    piece = "Westering Home (Eilean Mo Chridhe)"
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