\version "2.18.0"

% When ready to include in collection:	
%	1. Comment out top section with \Include file(s)
%					
%	2. \midi section if present.
%	3. Option to comment out "meter" from title e.g. if first tune following
%	   section title.
                                    
%Comment out from here
%{
\include "bagpipe.ly" %(Original)
\include "../Includes/BP_format.ily" 	

%to here..........................................................
%}

\score {

    \new Staff  {
    \time 2/4	    
    \tempo 4 = 80   
    \hideKeySignature

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
    	
%Generation of midi files can be removed here.
%  \midi {}
}%end score
