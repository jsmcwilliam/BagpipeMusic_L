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

\defineBarLine "|.-.|:" #'("|." ".|:" "")

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
    \partial 4 {\grg a8. [ b16 ] }
 \thrwd d4 \wslurd d8 [ f8 ] \birl a4 \thrwd d8. [ c16 ] 
 \grg b8 [ d8 ] \grg b8 [ G8 ] \grg a4 \thrwd d8. [ e16 ] 
 \grg f8 [ A8 ] \birl a8 [ A8 ] \grf g8 [ f8 ] \grg e8 [ d8 ] 
 \grg f4. g16 [ f16 ] \dble e4 \grg a8. [ b16 ]  \break

 \thrwd d4 \wslurd d8 [ f8 ] \birl a4 \thrwd d8. [ c16 ] 
 \grg b8 [ d8 ] \grg b8 [ \gre G8 ] \grg a4 \thrwd d8. [ e16 ] 
 \grg f8 [ A8 ] \grf g8 [ f8 ] \dblg g8 [ a8 ] \grg c8 [ e8 ] 
 \thrwd d2 \dbld d4 \dblA A8. [ g16 ] \bar "|.-.|:"
 \break

    % Part 2 
    \repeat volta 2 {
 \grA f4 \dblA A8. [ g16 ] \grA f8 [ A8 ] \hdblf f8 [ a8 ] 
 \grg b8 [ \thrwd d8 ] \dblg g8. [ b16 ] \grG a4 \thrwd d8. [ e16 ]
    } %end repeat
    \alternative {{
    	    \grg f8 [ A8 ] \birl a8 [ A8 ] \grf g8 [ f8 ] \dble e8 [ d8 ] 
    	    \grg f4. g16 [ f16 ] \dble e4 \dblA A8. [ g16 ]
    	    }
    	    {
    	    \grg f8 [ A8 ] \grf g8 [ f8 ] \dblg g8 [ \birl a8 ] \grg c8 [ e8 ] 
    	    \thrwd d2 \dbld d4 \bar "|."
    	    \break
    }}

    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "March"
    piece = "The Meeting of the Waters"
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