\version "2.22.1"

% When ready to include in collection:	
%	1. Comment out top section with \Include file(s)
%					
%	2. \midi section if present.
%	3. Option to comment out "meter" from title e.g. if first tune following
%	   section title.
                                    
%Comment out from here
%{
\include "bagpipe.ly" %(default Lilypond formats)
\include "../Includes/BP_format_portrait.ily" 	

%to here..........................................................
%}


\score {

    \new Staff  {
    \time 4/4	    
    \tempo 4 = 80   
%    \bagpipeKey
    \hideKeySignature
    \quarterBeaming
    \bar "|."
    
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
    \bar "|." \break

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
%  	  \override Score.GraceSpacing.spacing-increment = #0
 	}
%Generation of midi files can be removed here.
%	\midi {}

} %end score
