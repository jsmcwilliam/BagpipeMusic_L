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
    \quarterBeaming
    \bar ".|:"
    
% Part 1  
	\partial 8
	\repeat volta 2 {
    		\grg a16. [ b32 ]  
 \thrwd d8. [ e16 ] \grg f8 [ A8 ]  
 g16. [ f32 e16. d32 ] \grg f4  
 \dblf f8 [ e8 ] \dble e8 [ d16. e32 ]  
 \dblf f8 [ e8 ] \dble e8 [ d32 b16. ]   
% \break

 \thrwd d8. [ e16 ] \grg f8 [ A8 ]  
 g16. [ f32 e16. d32 ] \grg f8 [ e16. f32 ]  
 \thrwd d8 [ b8 ] \dblb b8 [ \grg a16. b32 ]  
 \thrwd d8 [ b8 ] \dblb b8 \break
 	} %end repeat
 
% Part 2
	\repeat volta 2 {
 \dblg g8  
 \dblA A8 [ g32 f16. ] \dblg g8 [ f32 e16. ]  
 \dblf f16. [ e32 d16. e32 ] \grg f4  
 \dblf f8 [ e8 ] \dble e8 [ d16. e32 ]  
 \dblf f8 [ e8 ] \dble e8 [ \dblg g8 ]   
% \break

 \dblA A8 [ g32 f16. ] \dblg g8 [ f32 e16. ]  
 \dblf f16. [ e32 d16. e32 ] \grg f8 [ e16. f32 ]  
 \thrwd d8 [ b8 ] \dblb b8 [ \grg a16. b32 ]  
 \thrwd d8 [ b8 ] \dblb b8 \break
 	} %end repeat
 	} %end Staff
    
  \header {
    meter = "March"
    piece = "Highland_Laddie"
    composer = "Trad."
    parttagline = "Copied by John S. McWilliam"
    title = ##f
    subtitle = ##f
  }
  	
%Generation of midi files can be removed here.
%  \midi {}

}%end score
