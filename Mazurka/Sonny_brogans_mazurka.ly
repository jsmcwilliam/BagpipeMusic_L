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
    \time 3/4	    
    \tempo 4 = 80   
    \hideKeySignature
    \bar ".|:"
    		
    % Part 1
    \repeat volta 2 {
    	\grg a8 [ \grd c8 ] \dble e4 \gra e8 [ d8 ] 
    	\grg c8 [ e8 ] \dblA A4 \grg A8 [ e8 ] 
    	\grg f8 [ e8 ] \thrwd d4 \grc d8 [ f8 ] 
    	\grg e8 [ d8 ] \grg c8 [ e8 ] \grg b8 [ \grd c8 ]  
    	%\break
 
    	\grg a8 [ \grd c8 ] \dble e4 \gra e8 [ d8 ] 
    	\grg c8 [ e8 ] \dblA A4 \grg A8 [ e8 ] 
    	\grg f8 [ e8 ] \thrwd d4 \grc d8 [ f8 ] 
    	\grg e8 [ c8 ] \grG a4~ a4 %\bar ":|:" 
    	\break	
    } %end repeat

    % Part 2
    \repeat volta 2 {
    	\grg a8 [ d8 ] \grg f4 \gre f8 [ A8 ] 
    	g8 [ f8 ] \dble e4 \gra e8 [ g8 ] 
    	\grA f8 [ e8 ] \thrwd d4 \grc d8 [ f8 ] 
    	\grg e8 [ d8 ] \grg c8 [ e8 ] \grg b8 [ \grd c8 ]  
    	%\break

 
    	\grg a8 [ d8 ] \grg f4 \gre f8 [ A8 ] 
    	g8 [ f8 ] \dble e4 \gra e8 [ g8 ] 
    	\grA f8 [ e8 ] \thrwd d4 \grg c8 [ d8 ] 
    	\grg e8 [ c8 ] \thrwd d4~ d4 %\bar ":|" 
    	\break
    } %end repeat

    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "Mazurka"
    piece = "Sonny Brogans Mazurka"
    composer = "Trad."
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
