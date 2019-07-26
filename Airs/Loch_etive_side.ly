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
% #(allow-volta-hook "|") % enables volta hook outside repeat context
% from here
%{
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
    \time 2/4	    %adjust time to suit specific tunes
    \tempo 4 = 80   % adjust speed accordingly for playback
    \hideKeySignature
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
 \grg G8. \grd a16  \grg b16  d8.  
 \dblf f8.  e16  \grg e16  d8.  
 \grg G8. \grd a16  \grg b16  d8.  
 \dble e8.  A16 \hdblf f16  e8.   
% \break

 \grg G8. \grd a16  \grg b16  d8.  
 \dblf f8.  e16  \grg e16  f8.  
 \dblA A8.  \grg A16 \hdblf f16  d8.  
 \dblb b8.  \grG a16  \grg b16  d8.
 \break
    }
    % Part 2
        \repeat volta 2 {
 \grg a8. \grd b16  \grG a8. \grd b16  
 \thrwd d8.  e16  \dbld d16  c8.  
 \grg c16  e8.  \gra e8.  f16  
 \dblA A8.  g16  \tdblf f16  e8.  
% \break

 \grg a8. \grd b16  \grg a8. \grd b16  
 \thrwd d8.  e16  \grg f8. [ \dblg g16 ] 
 \dblA A8. \grg A16 \hdblf f16  d8.  
 \dblb b8.  \grG a16  \grg b16  d8.
% \break
	}
    
    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "Slow Air"
    piece = "Loch Etive Side"
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