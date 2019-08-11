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
    \time 6/8	    
    \tempo 4 = 80   
    \hideKeySignature
    \bar ".|:"
    		
    % Part 1
    \repeat volta 2 {
    \partial 8 b8
 \grg a4. \wbirl a4 b8 
 \grG a4 \grg b16 [ c16 ] \thrwd d4 \times 2/3 {\grg e16 [ ( f16 g16 ] ) } 
 \grA f4. \dble e4 d8 
 \grg b8 d4 \dblb b4 \grg a32 [ \grd G16. ]  

 \grg a4. \wbirl a4 b8 
 \grG a4 \grg b16 [ c16 ] \thrwd d4 \times 2/3 {\grg e16 [ ( f16 g16 ] ) }
 \grA f4. \dble e4 f8 
    \thrwd d4. \slurd d4  \break }

    %Part 2
    \repeat volta 2 {
 e8 
 \grg f8 A4 \grg A4. 
 \grip A4 g8 \grA f16 [ A8. g8 ] 
 \tdblf f4. \dble e4 d8 
    \grg b8 d4 \dblb b4 \grg a32 [ \grd G16. ] }

    \alternative {
    	    { \grg f8 A4 \grg A4. 
 \grip A4 g8 \grA f16 [ A8. g8 ] 
 \tdblf f4. \dble e4 d8 
    \dblf f8 e4 \gra e4 \dblg g8  \break }

    	{ \grg a4. \wbirl a4 b8 
 \grG a4 \grg b16 [ c16 ] \thrwd d4 \times 2/3 {\grg e16 [ ( f16 g16 ] ) } 
 \grA f4. \dble e4 f8 
 	\thrwd d4. \slurd d4 \bar "|." }
 }

    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "Air"
    piece = "Flowers of the Forest"
    composer = "Trad."
    parttagline = "Copied by John S. McWilliam"
  }

% added layout options. See bagpipe_new.ly (\layout) for default settings
  \layout {
  	  ragged-last = ##t
  	}

% \midi {} %Generation of midi files option.

}%end score
