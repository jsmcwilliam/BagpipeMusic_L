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
    \time 2/4	   
    \tempo 4 = 80   
    \hideKeySignature
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

% \midi {} %Generation of midi files option.

}%end score
