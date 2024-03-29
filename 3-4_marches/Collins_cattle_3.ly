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
 \grg a8. [ b16 ] \grip c4 \dblc c4 
 \dble e4 \dblc c8 [ \gre b8 ] \grG a4 
 \grg a8. [ b16 ] \grip c4 \dble e4 
 \dblA A4 \hdblf f2 
 \dble e8. [ d16 ] \dblc c4 \dble e4 
 \dblc c8 [ \gre a8 ] \grip b4 \grd c4 
 \dblA A8. [ f16 ] \dble e4 \dblc c8 [ \gre a8 ] 
 \grip b4 \grG a2 \break
    } %end of repeat

    % Part 2
    \repeat volta 2 {
 \grg c8. [ d16 ] \dble e4 \gra e4 
 \dblA A4 \hdblf f4 \grg e4 
 \grg c8. [ d16 ] \dble e4 \grg f4 
 A4 \grg A2 
 a8. [ b16 ] \grip c4 \dblb b4 
 \grG a4 \grg b4 \grd c4 
 \dblA A8. [ f16 ] \dble e4 \dblc c8 [ \gre a8 ] 
 \grip b4 \grG a2 \break
    } %End of repeat

    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "March"
    piece = "Collin's Cattle"
    composer = "W. MacLean"
    parttagline = "Copied by John S. McWilliam"
  }
% added layout options. See bagpipe_new.ly (\layout) for default settings

% \midi {} %Generation of midi files option.

}%end score

