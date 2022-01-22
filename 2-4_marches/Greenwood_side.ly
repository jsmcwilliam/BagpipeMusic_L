\version "2.22.1"

% When ready to include in collection:	
%	1. Comment out top section with \Include file(s)
%					
%	2. \midi section if present.
%	3. Option to comment out "meter" from title e.g. if first tune following
%	   section title.
                                    
%Comment out from here
%{
\include "bagpipe.ly" %(Original)
\include "../Includes/BP_format_portrait.ily" 	

%to here..........................................................
%}

\score {

    \new Staff  {
    \time 2/4	   
    \tempo 4 = 80  
    \hideKeySignature
    \quarterBeaming
    \bar ".|:"			

    % Part 1
    \repeat volta 2 {
    \partial 8 f8 |
 \grg b16. [ \grd b32 ] \gre b16. [ \grd c32 ] \dblb b8 [ \grG a8 ] |
 \grg b16. [ c32 ] \grg d16. [ e32 ] \dblf f4 |
 \grg e8. [ f16 ] \grg e16. [ f32 ] \grg e16. [ d32 ] |
 \dblc c8 [ \gre a8 ] \wbirl a8 [ f8 ] 
% \break

 \grg b16. [ \grd b32 ] \gre b16. [ \grd c32 ] \dblb b8 [ \grG a8 ] |
 \grg b16. [ c32 ] \grg d16. [ e32 ] \dblf f4 |
 \dble e8 [ A8 ] \hdblf f8 [ \grg e16. f32 ] |
 \thrwd d8 [ \grg b8 ] \grip b8 
 \break 
    }

    % Part 2
    \repeat volta 2 {
     \thrwd d16. [ e32 ] |
 \dblf f4 \slurb b8 [ f8 ] |
 \grg b16. [ \grd b32 ] \gre b16. [ \grd c32 ] \dblf f4 |
 \grg e8. [ f16 ] \grg e16. [ f32 ] \grg e16 [ d16 ] |
 \dblc c8 [ \gre a8 ] \wbirl a8   
 \bar "|" 
% \break 
    }
 \alternative {
 	 {
 \thrwd d16 e16 \dblf f4 \slurb b8 [ f8 ] |
 \grg b16. [ \grd b32 ] \gre b16. [ \grd c32 ] \dblf f4 |
 \dble e8 [ A8 ] \hdblf f8 [ \grg e16. f32 ] |
 \thrwd d8 [ \grg b8 ] \grip b8
 \break 
	 }
 	 {
 f8 |
 \grg b16. [ \grd b32 ] \gre b16. [ \grd c32 ] \dblb b8 [ \grG a8 ] |
 \grg b16. [ c32 ] \grg d16. [ e32 ] \dblf f4 |
 \dble e8 [ A8 ] \hdblf f8 [ \grg e16. f32 ] |
 \thrwd d8 [ \grg b8 ] \grip b8 
 \bar "|."\break }
 }

    } %end staff
    
  \header {
    meter = "March"
    piece = "Greenwood Side"
    composer = "Trad."
    parttagline = "Copied by John S. McWilliam"

  }
  	
  \layout {
      ragged-last = ##t
  }
  	
  	
%Generation of midi files can be removed here.
%  \midi {}

}%end score
