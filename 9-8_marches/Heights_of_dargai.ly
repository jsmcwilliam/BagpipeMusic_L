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
    \time 9/8	    %adjust time to suit specific tunes
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
    \partial 8 e8
    \repeat volta 2 {
      \grg a8.[ b16 \grip c8] \dble e4. \dblc c4 e8
      \dblf f8. d16 f8 \dble e4. \dblc c4.
      \dblA A8. g16 \grA f8 \dble e4. \grg a8. \grd c16 e8
      \dblf f8. e16 c8 \grg b4. \taor b4 e8
      \break
      \grg a8.[ b16 \grip c8] \dble e4. \dblc c4 e8
      \dblf f8. d16 f8 \dble e4. \dblc c4.
      \dblA A8. g16 \grA f8 \dble e4. \slurb b4 e8
      \dblc c8. \gre b16 \grd c8 \grG a4. \wbirl a4.
    }
    \break

    % Part 2
    \repeat volta 2 {
      \grg a8. \grd c16 e8 \grg f4. \dblf f8. d16 f8
      A8. g16 \grA f8 \dble e4. \dblc c4.
      \dblA A8. g16 \grA f8 \dble e4. \grg a8. \grd c16 e8
      \dblf f8. e16 c8 \grg b4. \taor b4.
      \break
      \grg a8. \grd c16 e8 \grg f4. \dblf f8. d16 f8
      A8. g16 \grA f8 \dble e4. \dblc c4.
      \dblA A8. g16 \grA f8 \dble e4. \slurb b4 e8
      \dblc c8. \gre b16 \grd c8 \grG a4. \wbirl a4.
    }

    % Part 3
    % Part 4

    } %end staff
    
  \header {
%    meter = "March"
    piece = "The Heights of Dargai"
    composer = "J. Wallace"
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