\version "2.18.0"
%
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
    \time 6/8	    
    \tempo 4 = 80   
    \hideKeySignature
    \quarterBeaming
    \bar ".|:"

    % Part 1
    \partial 8
    \repeat volta 2 {
       A8
      c8. d16 \gre b8 \grg a4 \taor a8
      \grg c16 e8. \gra e8 \dble e8. c16 \grd a8
      \grg f8. e16 \grg c8 \dble e8. f16 A8
      \grg A8. e16 \grg c8 \slurb b4 
      \set Score.repeatCommands = #'((volta "2.--2.")) A8
%      \break
      c8. d16 \gre a8 \grg a4 \taor a8
      \grg c16 e8. \gra e8 \dble e8. c16 \grd a8
      \grg c16 d8. \gre b8 \grg e8. f16 \grg c8
      \gre a4. \wbirl a4 
      \set Score.repeatCommands = #'((volta #f))
    }
    \break

    % Part 2
    \repeat volta 2 {
	e8
      A8. g16 \grA f8 \dble e4 A8
      e8. f16 \grg e8 \dble e8. \grg c16 \grd a8
      A8. g16 \grA f8 \dble e4 A8
      \grg A8. e16 \grg c8 \slurb b4
      \set Score.repeatCommands = #'((volta "1")) e8
%      \break
      A8. g16 \grA f8 \dble e4 A8
      e8. f16 \grg e8 \dble e8. \grg c16 \grd a8
      \grg c16 d8. \gre b8 \grg e8. f16 \grg c8
      \gre a4. \wbirl a4
      \set Score.repeatCommands = #'((volta #f))
      \break
    }


    % Part 3
    \repeat volta 2 {
        A8
      \hdblc c4. \grG a4.
      \grg c16 e8. \gra e8 \dble e8. c16 \grd a8
      \dblf f4. \thrwd d4 A8
      \grg A8. e16 \grg c8 \slurb b4 A8
%      \break
      \hdblc c4. \grG a4.
      \grg c16 e8. \gra e8 \dble e8. c16 \grd a8
      \grg c16 d8. \gre b8 \grg e8. f16 \grg c8
      \gre a4. \wbirl a4
      \break
    }
    

    % Part 4
    \repeat volta 2 {
       e8
      \dblf f4 A8 \thrwd d4 A8
      e8. f16 \grg e8 \dble e8. c16 \grd a8
      \dblf f4 A8 \thrwd d4 A8
      \grg A8. e16 \grg c8 \slurb b4
    }
    \alternative {
      {
        e8
%        \break
        \dblf f4 A8 \thrwd d4 A8
        e8. f16 \grg e8 \dble e8. c16 \grd a8
        \grg c16 d8. \gre b8 \grg e8. f16 \grg c8
        \gre a4. \wbirl a4
        \break
      }
      {
         A8
        c16 d8. \gre b8 \grg e8. f16 \grg c8
        A8. g16 \grA f8 \grg e4 A8
        \grg c16 d8. \gre b8 \grg e8. f16 \grg c8
        \gre a4. \wbirl a4.
      }
    }
    \bar "|."
 
  }%end Staff

  \header {
%    meter = "March"
    piece = "MacNeils of Ugadale"
    composer = "P/M J. M. MacKenzie"
    parttagline = "Copied by John S. McWilliam"
    title = ##f
    subtitle = ##f
  }
  \layout {
  	  ragged-last = ##t
  	}
  	
%Generation of midi files can be removed here.
%  \midi {}

} %end score
