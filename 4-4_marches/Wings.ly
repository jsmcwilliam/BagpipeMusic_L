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

\defineBarLine "|.-.|" #'("|." ".|" "|.")

\score {

    \new Staff  {
    \time 4/4	   
    \tempo 4 = 80   
    \hideKeySignature
    \bar ".|"
    		
    % Part 1
    \partial 8 {e8} 
 \grg a4 \taor a8. [ b16 ] \grip c4. e8 
 \grg f4 \grip f8 [ A8 ] \hdble e4 \dblc c8 [ e8 ] 
 \grg f8. [ g16 ] A8 [ f8 ] \grg e16 [ c8. ] \dblb b8 [ \grG a8 ] 
 \grg b8. [ c16 ] \thrwd d8. [ c16 ] \dblb b8 [ e8 ] \thrwd d8 [ b8 ]  
 \break

 \grg a4 \taor a8. [ b16 ] \grip c4. e8 
 \grg f4 \grip f8 [ A8 ] \hdble e4 \dblc c8 [ e8 ] 
 \grg f8. [ g16 ] A8 [ f8 ] \grg e16 [ c8. ] \grg b8. [ \grd c16 ] 
 \grG a2 \wbirl a4. \bar "|.-.|" \break 

    % Part 2
 e8 
 \dblA A4 \grg A4 \grip A8 [ g8 ] \hdblf f8 [ e8 ] 
 \grg f4 \grip f8 [ A8 ] \hdblf f e \dblc c8 [ e8 ] 
 \grg f8. [ g16 ] A8 [ f8 ] \grg e16 [ c8. ] \dblb b8 [ \grG a8 ] 
 \grg b8. [ c16 ] \thrwd d8. [ c16 ] \dblb b8 [ e8 ] \thrwd d8 [ b8 ]  
 \break

 \grg a4 \taor a8. [ b16 ] \grip c4. e8 
 \grg f4 \grip f8 [ A8 ] \hdble e4 \dblc c8 [ e8 ] 
 \grg f8. [ g16 ] A8 [ f8 ] \grg e16 [ c8. ] \grg b8. [ \grd c16 ] 
 \grG a2 \wbirl a4. \bar "|." \break 

    % Part 3
    % Part 4

    } %end staff
    
  \header {
   meter = "4/4 March"
    piece = "Wings"
    composer = "Traditional"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
