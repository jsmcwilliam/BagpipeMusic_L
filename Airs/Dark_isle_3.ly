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
    \time 6/8	   
    \tempo 4 = 80   
    \hideKeySignature
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

% \midi {} %Generation of midi files option.

}%end score
