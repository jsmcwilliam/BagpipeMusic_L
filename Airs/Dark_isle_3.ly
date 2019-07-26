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
    \time 6/8	    %adjust time to suit specific tunes
    \tempo 4 = 80   % adjust speed accordingly for playback
    \hideKeySignature
%   \set Staff.midiInstrument = #"bagpipe"  %is set in bagpipe_new.ly (\layout)
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
       \partial 8 \grg a16. \grd b32 
      \dble e8. \grg b16 e8 \thrwd d8. \grg e8 d16 
      \dblb b8. [ \grg a16 \grd G8 ] \grg a8. [ \thrwd d8 e16 ] 
      \grg f8. [ e16 \grg d8 ] \grg f16 [ A8. \wbirl a8 ] 
      \grg f8. A8 f16 \dble e8. \grg a8 \grd b16 
      \break
      
      \dble e8. [ \grg b16 e8 ] \thrwd d8. [ \grg e8 d16 ] 
      \dblb b8. [ \grg a16 \grd G8 ] \grg a8. [ \thrwd d16 e8 ] 
      \grg f4 a32 (A16 f32) \dble e4 a32 (\grg f16 e32) 
      
      \thrwd d4. \slurd d4
    }
    \break

    % Part 2

    \repeat volta 2 {
      \grg f16. g32 
      \dblA A4 \birl a8 \dblf f8. e16 \grg d8 
      \grg b16 [ \grd G8. \grd b8 ] \grG a8. [ \thrwd d8 e16 ] 
      \grg f8. e16 \grg d8 \grg f16 [ A8. \wbirl a8] 
      \grg f8. A8 f16 \dble e8. \grg f8 g16 
      \break

      \dblA A4 \birl a8 \dblf f8. [ e16 \grg d8 ] 
      \grg b16 [ \grd G8. \grd b8 ] \grG a8. [ \thrwd d8 e16 ] 
      \grg f4 a32 (A16 f32) \dble e4 a32 (\grg f16 e32) 
      \thrwd d4. \slurd d4
    }

    } %end staff
    
  \header {
    meter = "Air"
    piece = "Dark Isle"
    composer = "Ian McLaughlan"
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