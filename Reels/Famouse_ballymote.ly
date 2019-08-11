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
    \defaultTimeSignature
    \time 2/2	    
    \tempo 4 = 120   
%    \bagpipeKey
    \hideKeySignature
    \bar ".|:"
    		
    % Part 1
    \repeat volta 2 {
    \grg c16   \grd a8. e8.   a16   \grg c16   e8. e8.   f16    
 g8.   e16 f8.   d16   \grg b8.   c16 d8.   b16    
 \grg c16   \grd a8. e8.   a16   \grg c16   e8. e8.   f16    
 g8.   e16 d8.   b16   \grg c8.   \grd a16   \gre a8.   e16  
 \break
    }
    
    % Part 2
    \repeat volta 2 {
 \grg c16   \grd a8. c16   e8.   \dblA A4 e8.   f16    
 g8.   e16 f8.   d16   \grg b8.   c16 d8.   b16
    }
    \alternative {
    	    {\grg c16   \grd a8. c16   e8.   \dblA A4 e8.   f16    
    	     g8.   e16 d8.   b16   \grg c8.   \grd a16   \gre a8.   e16     
    	    \break }	    
    	    
    	    {\grg c16   \grd a8. e8.   a16   \grg c16   e8. e8.   f16    
    	     g8.   e16 d8.   b16   \grg c8.   \grd a16   \gre a4 \bar "|." }
    }

    % Part 3
    % Part 4

    } %end staff
    
  \header {
%    meter = "Reel"
    piece = "The Famouse Ballymote"
    composer = "Trad."
    parttagline = "Copied by John S. McWilliam"
  }
    \layout {
  	  ragged-last = ##t
  	}

% \midi {} %Generation of midi files option.

}%end score

