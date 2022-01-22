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
    \time 6/8	   
    \tempo 4 = 80   
    \hideKeySignature
    \bar ".|:"
    		
    % Part 1
    \repeat volta 2 {
 \grg a4 \taor a8 \dblc c4 e8 
 A4 \grip A8 \grg A4 e8 
 \grg f4 \grip f8 \grg f16 [ A8. f8 ] 
 \dble e8. [ c16 \grG a8 ] \dblb b4 \grd c8 
 %\break  

 \grg a4 \taor a8 \dblc c4 e8 
 A4 \grip A8 \grg A4 e8 
 \dblf f8. [ e16 d8 ] \grg c4 \grip e8 
    \grg f16 [ A8. c8 ] \dblb b4 \grG a8 \break }

    % Part 2
    \repeat volta 2 {
 \grg a8. [ \grd c16 e8 ] \dble e8. [ c16 e8 ] 
 \dblf f8. [ e16 d8 ] \dblc c8. [ b16 \grG a8 ] 
 \grg a8. [ \grd c16 e8 ] \grg f8. [ g16 A8 ] 
 a8. [ b16 \grip c8 ] \dblb b4 \grG a8  
 %\break

 \grg a8. [ \grd c16 e8 ] \dble e8. [ c16 e8 ] 
 \dblf f8. [ e16 d8 ] \dblc c8. [ b16 \grG a8 ] 
 A8. [ g16 f8 ] \dble e8. [ c16 e8 ] 
    \grg f16 [ A8. c8 ] \dblb b4 \grG a8 \break }
  
    % Part 3
    \repeat volta 2 {
\thrwd d4. \slurd d4. 
 \grg d16 [ f8. e8 ] \dbld d8. [ b16 \grG a8 ] 
 \dbld d8. [ b16 \grG b8 ] \dblb b4 \grG a8 
 A8. [ g16 f8 ] \dble e4 d8  
 %\break

 \thrwd d4. \slurd d4. 
 \grg d16 [ f8. e8 ] \dbld d8. [ b16 \grG a8 ] 
 \dbld d8. [ c16 b8 ] \grg a8. [ b16 c8 ] 
    \thrwd d8. [ e16 f8 ] \dble e4 d8 \break }

    % Part 4
    \repeat volta 2 {
 \slurd d8. [ f16 A8 ] \grg A8. [ f16 d8 ] 
 A8. [ g16 f8 ] \dblf f8. [ e16 f8 ] 
 \thrwd d8. [ f16 A8 ] \grg A8. [ f16 d8 ] 
 \slurd d8. [ e16 f8 ] \dble e4 d8  
 %\break

 \slurd d8. [ f16 A8 ] \grg A8. [ f16 d8 ] 
 A8. [ g16 f8 ] \dblf f8. [ e16 f8 ] 
 \dbld d8. [ c16 b8 ] \grg a8. [ b16 c8 ] 
    \thrwd d8. [ e16 f8 ] \dble e4 d8 \break }
    

    } %end staff
    
  \header {
    meter = "March"
    piece = "Blue Bonnets over the Border"
    composer = "Trad."
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
