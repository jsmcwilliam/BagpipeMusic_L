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
% from here
%{
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a4" 'landscape)
#(allow-volta-hook "||") % enables volta hook outside repeat context

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
    \time 6/8	    %adjust time to suit specific tunes
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
    \bar ".|:"
    		
    % Part 1
    \repeat volta 2 {
    \partial 8 {e8} 
 \grg a8. [ b16 \grip c8 ] \grg c16 [ e8. \grg c8 ] 
 \dblb b4. \grG a4 e8 
 \grg a8. [ b16 \grip c8 ] \grg c16 [ e8. A8 ] 
 \hdblf f4. \dble e4 \dblg g8 
 A4 \grip A8 \hdblf f4 A8 
 \hdble e8. [ c16 \grd a8 ] \dblb b4 \grd c8 
 \grg a8. [ b16 \grip c8 ] \grg e8. [ f16 \grg c8 ] 
 \dblb b4. \grG a4 
 \bar ":..:" \break
    } %end repeat

    % Part 2
    \set Score.repeatCommands = #'(start-repeat)
 \dblg g8 
 \dblA A4. \hdble e4. 
 \grg f16 [ A8. f8 ] \dble e4. 
 \grg a8. [ b16 \grip c8 ] \grg c16 [ e8. A8 ] 
 \hdblf f4. \dble e4 
 \set Score.repeatCommands = #'((volta "1"))  
 \dblg g8 
 \dblA A4. \hdble e4. 
 \grg f16 [ A8. f8 ] \dble e4. 
 \grg a8. [ b16 \grip c8 ] \grg e8. [ f16 \grg c8 ] 
 \dblb b4. \grG a4 
 \set Score.repeatCommands = #'((volta #f))
 \break
 
 \set Score.repeatCommands = #'((volta "2. --2,4") end-repeat)  
 A8 
 a8. [ \grd c16 e8 ] \grg e8. [ f16 g8 ] 
 A8. [ g16 f8 ] \dble e4. 
 \grg a8. [ b16 \grip c8 ] \grg e8. [ f16 \grg c8 ] 
 \dblb b4. \grG a4 
 \bar "|."
 \set Score.repeatCommands = #'((volta #f)) 
 
 	\override Score.BarLine.break-visibility = #end-of-line-invisible
        \stopStaff 
        % Increasing the unfold counter will expand the staff-free space
       \repeat unfold 6 {
          s4 s4
        }  
%      \once \hide Score.BarLine
      \startStaff  % Resume bar count and show staff lines again 
      \break 


    % Part 3
%    \bar ".|:"

    \repeat volta 2 {
    b8 
 \grg c16 [ \grd a8. \grd c8 ] \grg c16 [ e8. \grg c8 ] 
 \dblb b4. \grG a4 b8 
 \grg c16 [ \grd a8. \grd c8 ] \grg c16 [ e8. A8 ] 
 \hdblf f4. \dble e4 \dblg g8 
 A4 \grip A8 \hdblf f4 A8 
 \hdble e8. [ c16 \grd a8 ] \dblb b4 \grd c8 
 \grg a8. [ b16 \grip c8 ] \grg e8. [ f16 \grg c8 ] 
 \dblb b4. \grG a4 
 \revert Score.BarLine.break-visibility
 \break
    } %end repeat

    % Part 4
    \repeat volta 2 {
 \dblg g8 
 A4 \grip A8 \hdble e4 A8 
 \hdblf f8. [ e16 \grg c8 ] \dble e4 \hdblf g8 
 A4 \grip A8 e8. [ \grg f16 A8 ] 
 \hdblf f4. \dble e4 
 \set Score.repeatCommands = #'((volta "1"))  \dblg g8 
 A4 \grip A8 \hdble e4 A8 
 \hdblf f8. [ e16 \grg c8 ] \dble e4 A8 
 a8. [ b16 \grip c8 ] \grg e8. [ f16 \grg c8 ] 
 \dblb b4. \grG a4 \set Score.repeatCommands = #'((volta #f)) 
 \break
    } %end repeat

    } %end staff
    
  \header {
%    meter = "6/8 March"
    piece = "Leaving Port Ascaig"
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