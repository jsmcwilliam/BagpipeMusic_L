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

\defineBarLine ".|:-|." #'("|." ".|:" "|.")

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
%    \bar ".|"
    		
    % Part 1
    \partial 8 e8 
 \dblg g8. [ A16 ] \grf g8 [ e8 ] \dblg g4 \thrwd d8. [ e16 ] 
 \dblg g4 \thrwd d8. [ c16 ] \dblb b8. [ a16 ] \grg G8 [ \grd b8 ] 
 \grg a8 [ \dblg g8 ] \dblA A4 \grg A4 \grf g4 
 \dblA A4 \hdble e8. [ d16 ] \dblc c8. [ b16 ] \grg a8 [ \grd b8 ]  \break

 \dblg g8. [ A16 ] \grf g8 [ e8 ] \dblg g4 \thrwd d8. [ e16 ] 
 \dblg g4 \thrwd d8. [ c16 ] \dblb b8. [ a16 ] \grg G8 [ \grd b8 ] 
 \grg a8. [ b16 ] \grg c4 \grip e8. [ f16 ] \dblg g8 [ e8 ] 
 \dblA A4 \hdble e8. [ d16 ] \dblc c8. [ b16 ] \grg a8 \bar "||" \break 

    % Part 2
     \dblg g8 
 \grA G8. [ b16 ] \thrwd d8 [ \gre G8 ] \dblb b8 [ \gre G8 ] \hdbld d8. [ b16 ] 
 \grg G8. [ \grd b16 ] \thrwd d8 [ \gre G8 ] \dblb b8. [ a16 ] \grg G8 [ \grd b8 ] 
 \grg a8. [ \grd c16 ] \dble e8 [ a8 ] \dblc c8 [ \gre a8 ] \dble e8. [ c16 ] 
 \grg a8. [ \grd c16 ] \dble e8 [ a8 ] \dblc c8. [ b16 ] \grg a8 [ \dblg g8 ]  \break

 \grA G8. [ b16 ] \thrwd d8 [ \gre G8 ] \dblb b8 [ \gre G8 ] \hdbld d8. [ b16 ] 
 \grg G8. [ \grd b16 ] \thrwd d8 [ \gre G8 ] \dblb b8. [ a16 ] \grg G8 [ \grd b8 ] 
 \grg a8. [ b16 ] \grg c4 \grip e8. [ f16 ] \dblg g8 [ e8 ] 
 \dblA A4 \hdble e8. [ d16 ] \dblc c8. [ b16 ] \grg a8 \bar "||" \break 
 
    % Part 3
 e8 
 \gcatchc c4 \dblg g8 [ c8 ] \dble e8 [ c8 ] \dblg g8. [ e16 ] 
 \grg c4 \grip e8. [ f16 ] \dblg g8. [ e16 ] \dblc c8 [ e8 ] 
 \thrwd d4 \dblA A8 [ d8 ] \dblf f8 [ d8 ] \dblA A8. [ f16 ] 
 \thrwd d8. [ e16 ] \grg f8. [ g16 ] \dblA A8. [ g16 ] \grA f8 [ A8 ]  \break

 \gcatchc c4 \dblg g8 [ c8 ] \dble e8 [ c8 ] \dblg g8. [ e16 ] 
 \grg c4 \grip e8. [ f16 ] \dblg g8. [ e16 ] \dblc c8 [ e8 ] 
 \dblA A8. [ f16 ] \dblg g8 [ e8 ] \dblf f8 [ d8 ] \dble e8 [ c8 ] 
 \dblA A4 \hdble e8. [ d16 ] \dblc c8. [ b16 ] \grg a8 \bar "||" \break 

    % Part 4
 \dblg g8 
 \grA G8. [ \grd G16 ] \gre G8 [ \grd b8 ] \grg G8. [ \grd G16 ] \gre G8 [ \grd b8 ] 
 \grg G8. [ \grd G16 ] \gre G8 [ \Gthrwd d8 ] \dblb b8. [ a16 ] \grg G8 [ \grd b8 ] 
 \grg a8. [ \grd a16 ] \gre a8 [ \grd b8 ] \grg a8. [ \grd a16 ] \gre a8 [ \grd b8 ] 
 \grg a8. [ \grd a16 ] \gre a8 [ e8 ] \dblc c8. [ b16 ] \grg a8 [ \dblg g8 ]  \break

 \grA G8. [ \grd G16 ] \gre G8 [ \grd b8 ] \grg G8. [ \grd G16 ] \gre G8 [ \grd b8 ] 
 \grg G8. [ \grd G16 ] \gre G8 [ \Gthrwd d8 ] \dblb b8. [ a16 ] \grg G8 [ \grd b8 ] 
 \grg a8. [ b16 ] \grg c4 \grip e8. [ f16 ] \dblg g8 [ e8 ] 
 \dblA A4 \hdble e8. [ d16 ] \dblc c8. [ b16 ] \grg a8 \bar ".|:-|." \break


    } %end staff
    
  \header {
%    meter = "4/4 March"
    piece = "Cabar Feidh"
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