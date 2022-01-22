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

\defineBarLine ":|.-.|" #'(":|." ".|" ":|.")

\score {

    \new Staff  {
    \time 4/4	    
    \tempo 4 = 80   
    \hideKeySignature
    \bar ".|:"
    		
    % Part 1
    \repeat volta 2 {
 \grg a8. [ b16 ] \thrwd d8. [ e16 ] \grg f16 [ A8. ] \hdblf f4 
 \dble e8. [ d16 ] \dbld d16 [ \grc d8. ] \grg b16 [ d8. ] \dble e4 
 \grg a8. [ b16 ] \thrwd d8. [ e16 ] \grg f16 [ A8. ] \hdblf f4 
 \grg f8. [ e16 ] d16 [ \gre b8. ] \grg a4 \wbirl a4 
 \bar ":|.-.|" \break
    } %end repeat

    % Part 2
 A4 \grg A8. [ g16 ] \grA f16 [ A8. ] \hdblf f4 
 \grg e8. [ d16 ] \dbld d16 [ \grc d8. ] \grg b16 [ d8. ] \dble e4 
 A4 \grg A8. [ g16 ] \grA f16 [ A8. ] \hdblf f4 
 \grg f8. [ e16 ] d16 [ \gre b8. ] \grg a4 \wbirl a4  \break

 
 A4 \grg A8. [ g16 ] \grA f16 [ A8. ] \hdblf f4 
 \grg e8. [ d16 ] \dbld d16 [ \grc d8. ] \grg b16 [ d8. ] \dble e4 
 \grg a8. [ b16 ] \thrwd d8. [ e16 ] \grg f16 [ A8. ] \hdblf f4 
 \grg f8. [ e16 ] d16 [ \gre b8. ] \grg a4 \wbirl a4 
 \bar "|."\break

    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "Strathspey"
    piece = "Mac an Irish"
    composer = "Traditional (Arr. A. Jones)"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
