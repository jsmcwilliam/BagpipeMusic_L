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

\include "bagpipe.ly"		%(Original)
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
    \time 4/4	    %adjust time to suit specific tunes
    \tempo 4 = 80   % adjust speed accordingly for playback
%    \bagpipeKey
    \hideKeySignature
    \defineBarLine "|.-.|" #'("|." ".|" "")
    \quarterBeaming
    \bar ".|"
    
    % Part 1

    \grg \partial 4 a8. b16
    \thrwd d4 \slurd d8 f \thrwd d4 \slurd d8 b
    \grg a4 \taor a8 \grg b \gbirl a4 \thrwd d8. e16
    \dblf f4 \grg e8 d \dblA A4 d8 f
    \grg e4 \grip e8 f \dble e4 \grg a8. b16
    \break
    \thrwd d4 \slurd d8 f \thrwd d4 \slurd d8 b
    \grg a4 \taor a8 \grg b \gbirl a4 \thrwd d8. e16
    \grg f16 A8. \hdblf f8 A \birl a4 \grg f8. e16
    \thrwd d4 \slurd d8. e16 \thrwd d4
    \bar "|.-.|" \break

    % Part 2

    \grg d8. e16
    \grg f4 \dblf f8 A \hdblf f4 \grg e8 d
    \grg b4 \taor b8 d \grG a4 \thrwd d8. e16
    \dblf f4 \grg e8 d \dblA A4 d8 f
    \grg e4 \grip e8 f \dble e4 \grg a8. b16
    \break
    \thrwd d8. e16 \grg f8 A \hdblf f4 \grg e8 d
    \dblb b8 d \grg b16 d8. \grG a4 \thrwd d8. e16
    \grg f16 A8. \hdblf f8 A \birl a4 \grg f8. e16
    \thrwd d4 \slurd d8. e16 \thrwd d4
    \bar "|."
  }%end Staff

  \header {
%    meter = "March"
    piece = "Badge of Scotland"
    composer = "Trad. arr MPD"
    parttagline = "Copied by John S. McWilliam"
    title = ##f
    subtitle = ##f
  }
  \layout {
  	  indent = 0.0\cm
  	  \override Score.GraceSpacing.spacing-increment = #0
  	  #(layout-set-staff-size 18)
    
  	  \context {
  	  	  \Score
  	  	  \remove "Bar_number_engraver"
  	  	  \override VoltaBracket.Y-offset = #7.5
  	  	  \override VoltaBracket.height = #2.2
    		}
  	}
%Generation of midi files can be removed here.
%	\midi {}
}%end score
%................................................................
%Useful commands for upgrading from older versions of Lilypond:
%\set Score.measureLength = #(ly:make-moment 5/8)
%\set Score.repeatCommands = #'((volta "1.--2."))
%\set Score.repeatCommands = #'((volta #f))
%\unfoldRepeats for better playback
%remove midi before compiling book to avoid extra files (.midi)
%................................................................