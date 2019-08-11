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
%}

\score {

    \new Staff  {
    \time 6/8	    %adjust time to suit specific tunes
    \tempo 4 = 80   % adjust speed accordingly for playback
    \hideKeySignature
    \quarterBeaming
    \bar ".|:"

    % Part 1
    \repeat volta 2 {
    \partial 4   \grg c16 [ e8. ] |
    \grg f4 b8 \grg b4 \taor b8 |
    A8. [ f16 \grg e8 ] \grg f8. [ g16 A8 ] |
    \hdblc c4 \gre a8 \grg a4 \taor a8 |
    \dble e4 b8 \dblc c8. [ b16 \grG a8 ] 
%    \break

    \grg f4 b8 \grg b4 \taor b8 |
    A8. [ f16 \grg e8 ] \grg f4. |
    A8. [ e16 \gra e8 ] \grg f8. [ g16 A8 ] |
    	\hdblc c8. [ b16 \grG b8 ] \grg b8 \break    }

    % Part 2
    \repeat volta 2 {
    \grg c16 [ e8. ] |
    \grg f4. A4 e8 |
    \grg f8. [ g16 A8 ] \hdblf f4 e8 |
    \dblc c4 \gre a8 \grg a4 \taor a8 |
    \dble e4 b8 \dblc c8. [ b16 \grG a8 ] 
%   \break

    \grg f4. A4 e8 |
    \grg f8. [ g16 A8 ] \hdblf f4. |
    A8. [ e16 \gra e8 ] \grg f8. [ g16 A8 ] |
    \hdblc c8. [ b16 \grG b8 ] \grg b8 \break }

 
    % Part 3
    \repeat volta 2 {
    c16 [ e8. ] |
    \grg f4 b8 \grg b8. [ c16 d8 ] |
    \grg b8. [ c16 d8 ] \dbld d8. [ c16 b8 ] |
    \grg a8. [ b16 \grip c8 ] \dblc c8. [ b16 \grG a8 ] |
    \dble e8. [ c16 \grG a8 ] \dblc c8. [ b16 \grG a8 ] 
%    \break

    \grg f4 b8 \grg b8. [ c16 d8 ] |
    \grg b8. [ c16 d8 ] \dbld d8. [ c16 b8 ] |
    \grg a8. [ c16 e8 ] \grg f8. [ g16 A8 ] |
    \hdblc c8. [ b16 \grG b8 ] \grg b8 \break }
 
    % Part 4
    \repeat volta 2 {
    \grg c16 [ e8. ] |
    \grg f4 b8 A8. [ g16 A8 ] |
    f8. [ b16 A8 ] \hdblf f4 e8 |
    \dblc c4 \gre a8 \grg a4 \taor a8 |
    \dble e4 b8 \dblc c8. [ b16 \grG a8 ] 
%   \break

    \grg f4 b8 A8. [ g16 A8 ] |
    f8. [ b16 A8 ] \hdblf f4. |
    A8. [ e16 \gra e8 ] \grg f8. [ g16 A8 ] |
    \hdblc c8. [ b16 \grG b8 ] \grg b4. \break }
    } %end staff
    
  \header {
    meter = "March"
    piece = "Angus MacKinnon"
    composer = "Pipe Major Donald Shaw Ramsay"
    parttagline = "Copied by John S. McWilliam"

  }

%Generation of midi files can be removed here.

%  \midi {}

} %end score
