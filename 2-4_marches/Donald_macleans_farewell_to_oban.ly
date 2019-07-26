\version "2.18.0"
%
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
    \time 2/4	    %adjust time to suit specific tunes
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
      \partial 8 \grg a16. b32
      \dblc c8 \grg b32 \grd a16. \dble e8 \grg f16. e32
      \grg c32 e16. \grg a16. b32 \dblc c8[ \dblA A]
      \hdblf f16. e32 A16. f32 \grg e32 f16. \grg a16. \grd c32
      \dble e16. c32 \grg b32 \grd a16. \grip b8 \grg a16. b32
%      \break
      \dblc c8 \grg b32 \grd a16. \dble e8 \grg f16. e32
      \grg c32 e16. \grg a16. b32 \dblc c8[ \dblA A]
      \hdblf f16. e32 A16. f32 \grg e32 f16. \grg a16. b32
      \dblc c8 \gre a \wbirl a
    }
    \break

    % Part 2

    \repeat volta 2  {
      \grg c16. d32
      \dble e8 \grg c16. d32 \grg c32 e16. \grg f16. g32
      \dblA A8 f16. g32 \dblA A8. f16
      \dble e16. c32 A16. f32 \grg e32 f16. \grg a16. \grd c32
      \dble e16. c32 \grg b32 \grd a16. \grip b8 \grg c16. d32
      \break
      \dble e8 \grg c16. d32 \grg c32 e16. \grg f16. g32
      \dblA A8 f16. g32 \dblA A8. f16
      \dble e16. c32 A16. f32 \grg e32 f16. \grg a16. b32
      \dblc c8 \gre a \wbirl a
    }
    \break

    % Part 3

    \repeat volta 2 {
      \grg a16. b32
      \grg c32 \grd a16. \grg c16. d32 \dble e16. a32 \grg d16. e32
      \grg f16.[ a32 \dble e16. a32] \dblc c8 \grg f16. g32
      A16. a32 \grg d16. c32 \grg f16. a32 \grg c16. d32
      \dble e16. c32 \grg b32 \grd a16. \grip b8 \grg a16. b32
      \break
      \grg c32 \grd a16. \grg c16. d32 \dble e16. a32 \grg d16. e32
      \grg f16.[ a32 \dble e16. a32] \dblc c8 \grg f16. g32
      A8[ \grip A16. f32] \grg e32 f16. \grg a16. b32
      \dblc c8 \gre a \wbirl a
    }
    \break

    % Part 4

    \repeat volta 2 {
      \grg c16. d32
      \dble e8 A16. e32 \dblc c8 A16. e32
      \grg f16. g32 A16. f32 \thrwd d8 A16. f32
      \dble e8 \grg f16. e32 \dblc c8 \gre a16. \grd c32
      \dble e16. c32 \grg b32 \grd a16. \grip b8[
    }
    \alternative {
      {
        \grg c16. d32]
%        \break
        \dble e8 A16. e32 \dblc c8 A16. e32
        \grg f16. g32 A16. f32 \thrwd d8[ \dblA A]
        \hdblf f16. e32 A16. f32 \grg e32 f16. \grg a16. b32
        \dblc c8 \gre a \wbirl a
        \break
      }
      {
        \grg a16. b32
        \grg c32 e16. \grg d16. f32 \dble e16. c32 \grg b32 \grd c16.
        \dbld d16. c32 \grg b32 \grd a16. \dblc c8[ \dblA A]
        \hdblf f16. e32 A16. f32 \grg e32 f16. \grg a16. b32
        \dblc c8 \gre a \wbirl a
      }
    }
    \bar "|."
  } %end staff

  \header {
    meter = "March"
    piece = "Donald MacLeans Farewell to Oban"
    composer = "A. MacNeil"
    parttagline = "Copied by John S. McWilliam"
%    title = ##f
%    subtitle = ##f
  }
  \layout {
  	  #(layout-set-staff-size 18)
  	  ragged-last = ##f
  	}
  	
%Generation of midi files can be removed here.
%  \midi {}
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