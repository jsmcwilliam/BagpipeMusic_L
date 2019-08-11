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
    \tempo 4 = 100   
%    \bagpipeKey
    \hideKeySignature
    \bar ".|"
    		
    % Part 1
\dble e8.   a16   \gbirl a4 \dble e8.   a16   \grg f16   e16 d8    
 \dble e8.   a16   \gbirl a4 \dblg g4 \grA f16   A8.    
 \hdble e8.   a16   \gbirl a4 \dble e8.   a16   \grg f16   e16 d8    
 \dblb b16   \gre G8.   \Gdarodo b4 \dblg g4 \grA f16   A8.     \break
 
 \hdble e8.   a16   \gbirl a4 \dble e8.   a16   \grg f16   e16 d8    
 \dble e8.   a16   \gbirl a4 \dblg g4 \grA f16   A8.    
 \hdble e8.   a16   \gbirl a4 \dble e8.   a16   \grg f16   e16 d8    
 \dblb b16   \gre G8.   \Gdarodo b4 \dblg g4 \grA f8.   g16   \bar "|.-.|" 
 \break 
 
    % Part 2
\dblA A8.   a16   \gbirl a4 \dble e8.   a16   \gbirl a4  
 \dblA A8.   a16   \gbirl a4 \dblg g4 \grA f8.   g16    
 \dblA A8.   a16   \gbirl a4 \dble e8.   a16   \grg f16   e16 d8    
 \dblb b16   \gre G8.  \Gdarodo b4 \dblg g4 \grA f8.   g16     \break
    
 \dblA A8.   a16   \gbirl a4 \dble e8.   a16   \gbirl a4  
 \dblA A8.   a16   \gbirl a4 \dblg g4 \grA f8.   g16    
 A16   g16 f8   \dblg g8.   e16   \grg f16   A8 f16   \dble e8.   c16    
 \grg b8.   c16   \thrwd d8.   e16   \dblg g4 \grA f16   A8.   \bar "|."  

    } %end staff
    
  \header {
    meter = "Strathspey"
    piece = "The Devil in the Kitchen"
    composer = "Trad."
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
