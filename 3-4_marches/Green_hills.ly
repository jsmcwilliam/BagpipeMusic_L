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
 \grg a8. [ b16 ] \grip c4 \dblc c8 [ \gre a8 ] 
 \grg c8 [ \thrwd d8 ] \dble e4 \gra e8 [ f8 ] 
 \dblc c8 [ f8 ] \dble e8. [ c16 ] \grg b4 
 \taor b8 [ f8 ] \dble e8. [ c16 ] \grG a4 
 \grg a8. [ b16 ] \grip c4 \dblc c8 [ \gre a8 ] 
 \grg c8 [ \thrwd d8 ] \dble e4 \gra e8 [ f8 ] 
 \dblc c8 [ f8 ] \dble e8. [ c16 ] \grg b4 
 \taor b8 [ a8 ] \dblc c4 \grip a4 \break
    } %end of repeat
 
    % Part 2
    \repeat volta 2 {
 \dblc c8 [ e8 ] \dblA A4 \grg A4 
 \grf g8 [ f8 ] \dblf f8 [ e8 ] \gra e4 
 \grg e8. [ f16 ] \dble e8 [ d8 ] \slurd d4 
 \grg d8. [ e16 ] \dbld d8 [ c8 ] \grip c4 
 \dblc c8 [ e8 ] \dblA A4 \grg A4 
 \grf g8 [ f8 ] \dblf f8 [ e8 ] \gra e4 
 \grg e8. [ f16 ] \dble e4 \gra e8. [ d16 ] 
 \grg c8 [ \thrwd d8 ] \dble e4 \gra e4 \break
    } %end of repeat

    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "March"
    piece = "Green Hills of Tyrol"
    composer = "PM John. MacLeod 1854"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score

