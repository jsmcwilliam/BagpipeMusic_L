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
    \defaultTimeSignature
    \time 2/2	    
    \tempo 4 = 120   
%    \bagpipeKey
    \hideKeySignature
%    \bar ".|:"
    		
    % Part 1
    \partial 8 a8
    \repeat volta 2 {
     \thrwd d4 \grg f8.   e16   \thrwd d4 \gre a8.   b16    
 \thrwd d4 \grg f8.   e16   \grg f8.   b16   \grG b8.   c16    
 \thrwd d4 \grg f8.   e16   \thrwd d4 \gre a8.   b16    
 \thrwd d4 \grg d8.   b16   \grg a8.   \grd a16   \gre a8.   b16 
% \break
    }
    % Part 2
 \repeat volta 2 {
    \thrwd d4 \grg f8.   b16   \dblb b4 \grg f8.   b16    
    \thrwd d4 \grg f8.   e16   \grg f8.   b16   \grG b8.   c16 }
    
 \alternative {
    {\thrwd d4 \grg f8.   b16   \dblb b4 \grg f8.   b16    
     \thrwd d4 \grg d8.   b16   \grg a8.   \grd a16   \gre a8.   b16     
    \break }
    
    {\thrwd d4 \grg f8.   e16   \thrwd d4 \gre a8.   b16    
     \thrwd d4 \grg d8.   b16   \grg a8.  [ \grd a16 ]  \gre a8 \bar "|." }
 }

    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "Reel"
    piece = "The Piper of Drummond"
    composer = "Trad."
    parttagline = "Copied by John S. McWilliam"
  }
  
  \layout {
  	  ragged-last = ##t
  	}

% \midi {} %Generation of midi files option.

}%end score

