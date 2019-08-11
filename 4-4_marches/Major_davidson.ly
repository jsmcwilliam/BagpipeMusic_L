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
    \time 4/4	    
    \tempo 4 = 80  
    \hideKeySignature
    \bar ".|"
    		
    % Part 1
    \partial 4 {A8. [ f16 ]} 
 \thrwd d4 \grg d4 \grG d4 \grg d16. [ e32 \grg f16. g32 ] 
 A4 \grg A4 \grg A4 f4 
 \dble e4. f8 \hdblf g8. [ f16 ] \grg e8 [ d8 ] 
 \dblc c4 \dblb b4 \grG a4 \thrwd d4  
 \break

 \grg b4. d8 \grg a4. d8 
 \grg G4 \thrwd d4 \dblc c4. d8 
 \dble e4. f8 \grA g8 [ e8 ] \grg c16 [ e8. ] 
 \thrwd d2 \slurd d4 \bar "|.-.|" \break 

    % Part 2
 \dble e8. [ d16 ] 
 \dblc c8. [ b16 ] \grg c8 [ d8 ] \dble e8. [ c16 ] \grG a4 
 \thrwd d8. [ e16 ] \grg f8 [ g8 ] \dblA A8. [ f16 ] \thrwd d4 
 \grg b8. [ c16 ] \dbld d8. [ e16 ] \grg f8. [ e16 ] \grg d8 [ f8 ] 
 \dblA A4 \grg A8. [ f16 ] \dble e4 A8. [ f16 ]  
 \break

 \thrwd d4 \grg d4 \grG d4 \grg d16. [ e32 \grg f16. g32 ] 
 A4 \grg A4 \grg A4 f4 
 \dble e4. f8 \grA g8 [ e8 ] \grg c16 [ e8. ] 
 \thrwd d2 \slurd d4 \bar "|." \break 

    % Part 3
    % Part 4

    } %end staff
    
  \header {
%    meter = "4/4 March"
    piece = "Major Davidson"
    composer = "Arr. Ed Krintz"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
