\version "2.22.1"

% When ready to include in collection:	
%	1. Comment out top section with \Include file(s)
%					
%	2. \midi section if present.
%	3. Option to comment out "meter" from title e.g. if first tune following
%	   section title.
                                    
%Comment out from here
%
\include "bagpipe.ly" %(default Lilypond formats)
\include "../Includes/BP_format_portrait.ily" 	

%to here..........................................................
%}

\score {

    \new Staff  {
    \time 2/2	    
    \tempo 4 = 80  
    \hideKeySignature
    \bar ".|:"
    		
    % Part 1
    \repeat volta 2 {
    	\partial 8 { \grg c16 [ d16 ] }
    	\dble e8 [ \gra e16 f16 ] \grg e16 [ a16 \gre c16 e16 ] 
    	\grg f16 [ a16 \grg d16 f16 ] \dble e8 [ \grg c16 d16 ] 
    	\dble e8 [ \gra e16 f16 ] \grg e16 [ a16 \grd c16 e16 ] 
    	\grg c16 [ \grd a16 d16 c16 ] \grg b16 [ \grG b16 \grg c16 d16 ]  \break

    	\dble e8 [ \gra e16 f16 ] \grg e16 [ a16 \grd c16 e16 ] 
    	\grg f16 [ a16 \grg d16 f16 ] \dble e8 [ \grg c16 e16 ] 
    	\grg d16 [ c16 \grg c16 b16 ] \grg b16 [ f16 \grg e16 b16 ] 
    	\dblc c8 [ a8 ] \wbirl a8 
    	\bar ":|.-.|:" 
    	\break
    } %end repeat

    % Part 2
    \repeat volta 2 {
    	\grg c16 [ e16 ] 
    	\dblA A8 [ a16 A16 ] c16 [ A16 a A] 
    	f16 [ A16 d A16 ] \hdble e8 [ \grg c16 e16 ] 
    	\dblA A8 [ a16 A16 ] c16 [ A16 a A16 ] 
    	c16 [ \grd a16 \grg d c16 ] \grg b16 [ \grG b16 ] 
     } %end repeat
     
     \alternative { {
 	\grg c16 [ e16 ]  \break
 	\dblA A8 [ a16 A16 ] c16 [ A16 a A16 ] 
 	f16 [ A16 d A16 ] \hdble e8 [ \grg c16 e16 ] 
 	\grg d16 [ c16 \grg c16 b16 ] \grg b16 [ f16 \grg e16 b16 ] 
 	\dblc c8 [ a8 ] \wbirl a8
 	\break }
 		    {
	\grg c16 [ d16 ] 
	\dble e8 [ \gra e16 f16 ] \grg e16 [ a16 \grd c16 e16 ] 
	\cshaked d8 [ A16 f16 ] \dble e8 [ \grg c16 e16 ] 
	\grg d16 [ c16 \grg c16 b16 ] \grg b16 [ f16 \grg e16 b16 ] 
	\dblc c8 [ a8 ] \wbirl a8 
	\bar "|." }
} %end alternative  

    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "Hornpipe"
    piece = "Itchy Fingers"
    composer = "P/M Jim Motherwell"
    parttagline = "Copied by John S. McWilliam"
  }

}%end score
