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
    	\partial 8 {\grg f16. [ e32 ]  }
    	\thrwd d8 [ \gre a8 ] \dblb b8 [ \gre a8 ]  
    	\thrwd d8 [ \gre a16. d32 ] \dblf f4  
    	\dble e8 [ g16. e32 ] \dblc c8 [ \dble e16. c32 ]  
    	\grg a16. [ \grd c32 \grg e16. f32 ] \dblg g8 [ \grA f16. e32 ]  
    	\break
  
    	\thrwd d8 [ \gre a8 ] \dblb b8 [ \gre a8 ]  
    	\thrwd d8 [ \gre a16. d32 ] \dblf f8 [ \grg e16. f32 ]  
    	\dblg g8 [ \grA e16. c32 ] \grg a16. [ \grd c32 \grg e16. g32 ]  
    	\hdblf f8 [ d8 ] \wslurd d8 
        \bar ":|.-.|:"
     	\break	
    } %end repeat
    
    % Part 2
    \repeat volta 2 {
    	\grg f16 [ g16 ]  
    	\dblA A8. [ g16 ] \hdblf f8 [ d ]  
    	\gre a8 [ \thrwd d16. f32 ] \dblA A8 [ e16. f32 ]  
    	\dblg g8. [ e16 ] \dblc c8 [ \dble e16. c32 ]  
    	\grg a16. [ \grd c32 \grg e16. f32 ] \dblg g8    
%    	\break
    } %end repeat
    
    \alternative { {
    	\grA f16. g32
    	\break
   	\dblA A8. [ g16 ] \hdblf f8 [ d ]  
    	\gre a8 [ \thrwd d16. f32 ] \dblA A8 [ e16. f32 ]  
    	\dblg g8 [ \grA e16. c32 ] \grg a16. [ \grd c32 \grg e16. g32 ]  
    	\hdblf f8 [ d8 ] \wslurd d8  
    	\break }

    	{ \grA f16. g32
    	A16. [ g32 \grA g16. f32 ] \grg f16. [ e32 \grg e16. d32 ]  
    	\grg d16. [ c32 \grg c32 \grd b16. ] \dblA A8 [ e16. f32 ]  
    	\dblg g8 [ \grA e16. c32 ] \grg a16. [ \grd c32 \grg e16. g32 ]  
    	\tdblf f8 [ d ] \wslurd d8 
        \bar "|.-.|:"
    	\break	}
    } % end alternative
    
    % Part 3
    \repeat volta 2 {
    	\grg a8  
    	\thrwd d8 [ \grg c16. d32 ] \dblb b8 [ \gre a8 ]  
    	\thrwd d8 [ \gre a16. d32 ] \dblf f4  
    	\dble e8 [ g16. e32 ] \dblc c8 [ \dble e16. c32 ]  
    	\grg a16. [ \grd c32 \grg e16. f32 ] \dblg g8 [ \grA f16. e32 ]   
    	\break
  
    	\thrwd d8 [ \grg c16. d32 ] \dblb b8 [ \gre a8 ]  
    	\thrwd d8 [ \gre a16. d32 ] \dblf f8 [ \grg e16. f32 ]  
    	\dblg g8 [ \grA e16. c32 ] \grg a16. [ \grd c32 \grg e16. g32 ]  
    	\hdblf f8 [ d8 ] \wslurd d8 \bar ":|.-.|:" 
    	\break	
    } %end repeat
    
    % Part 4 
    \repeat volta 2 {
    	\grg f16. [ g32 ]  
    	\dblA A8 [ \grg A16. g32 ] \hdblf f8 [ \thrwd d8 ]  
    	\grg f16. [ g32 A16. g32 ] \hdblf f8 [ \grg e16. f32 ]  
    	\dblg g8 [ \grA g16. e32 ] \dblc c8 [ \dble e16. c32 ]  
    	\grg a16. [ \grd c32 \grg e16. f32 ] \dblg g8
    } %end repeat
    
    \alternative {
      { \grA f16. g32 
    	\break
    	\dblA A8 [ \grg A16. g32 ] \hdblf f8 [ \thrwd d8 ]  
    	\grg f16. [ g32 A16. g32 ] \hdblf f8 [ \grg e16. f32 ]  
    	\dblg g8 [ \grg e16. c32 ] \grg a16. [ \grd c32 \grg e16. g32 ]  
    	\hdblf f8 [ d8 ] \wslurd d8    
    	\break
    	    }
    	{
    	\grA f16. e32
    	\grg d16. [ c32 \grg c16. b32 ] \grg b16. [ a32 \grg a32 \grd G16. ]  
    	\Gthrwd d8 [ \gre a16. d32 ] \dblf f8 [ \grg e16. f32 ]  
    	\dblg g8 [ \grA e16. c32 ] \grg a16. [ \grd c32 \grg e16. g32 ]  
    	\hdblf f8 [ d8 ] \wslurd d8 \bar "|."
    	\break
        } }
%}        
    } %end staff
    
  \header {
    meter = "Polka"
    piece = "Royal Scots Polka"
    composer = "P/M Willie Denholm"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
