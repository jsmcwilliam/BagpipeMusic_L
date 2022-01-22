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
    \partial 8 e8 
 \dblg g8. [ A16 ] \grf g8 [ e8 ] \dblg g4 \thrwd d8. [ e16 ] 
 \dblg g4 \thrwd d8. [ c16 ] \dblb b8. [ a16 ] \grg G8 [ \grd b8 ] 
 \grg a8 [ \dblg g8 ] \dblA A4 \grg A4 \grf g4 
 \dblA A4 \hdble e8. [ d16 ] \dblc c8. [ b16 ] \grg a8 [ \grd b8 ]  \break

 \dblg g8. [ A16 ] \grf g8 [ e8 ] \dblg g4 \thrwd d8. [ e16 ] 
 \dblg g4 \thrwd d8. [ c16 ] \dblb b8. [ a16 ] \grg G8 [ \grd b8 ] 
 \grg a8. [ b16 ] \grg c4 \grip e8. [ f16 ] \dblg g8 [ e8 ] 
 \dblA A4 \hdble e8. [ d16 ] \dblc c8. [ b16 ] \grg a8 \bar "|.-.|" \break 

    % Part 2
     \dblg g8 
 \grA G8. [ b16 ] \thrwd d8 [ \gre G8 ] \dblb b8 [ \gre G8 ] \hdbld d8. [ b16 ] 
 \grg G8. [ \grd b16 ] \thrwd d8 [ \gre G8 ] \dblb b8. [ a16 ] \grg G8 [ \grd b8 ] 
 \grg a8. [ \grd c16 ] \dble e8 [ a8 ] \dblc c8 [ \gre a8 ] \dble e8. [ c16 ] 
 \grg a8. [ \grd c16 ] \dble e8 [ a8 ] \dblc c8. [ b16 ] \grg a8 [ \dblg g8 ]  \break

 \grA G8. [ b16 ] \thrwd d8 [ \gre G8 ] \dblb b8 [ \gre G8 ] \hdbld d8. [ b16 ] 
 \grg G8. [ \grd b16 ] \thrwd d8 [ \gre G8 ] \dblb b8. [ a16 ] \grg G8 [ \grd b8 ] 
 \grg a8. [ b16 ] \grg c4 \grip e8. [ f16 ] \dblg g8 [ e8 ] 
 \dblA A4 \hdble e8. [ d16 ] \dblc c8. [ b16 ] \grg a8 \bar "|.-.|" \break 
 
    % Part 3
 e8 
 \catchc c4 \dblg g8 [ c8 ] \dble e8 [ c8 ] \dblg g8. [ e16 ] 
 \grg c4 \grip e8. [ f16 ] \dblg g8. [ e16 ] \dblc c8 [ e8 ] 
 \thrwd d4 \dblA A8 [ d8 ] \dblf f8 [ d8 ] \dblA A8. [ f16 ] 
 \thrwd d8. [ e16 ] \grg f8. [ g16 ] \dblA A8. [ g16 ] \grA f8 [ A8 ]  \break

 \catchc c4 \dblg g8 [ c8 ] \dble e8 [ c8 ] \dblg g8. [ e16 ] 
 \grg c4 \grip e8. [ f16 ] \dblg g8. [ e16 ] \dblc c8 [ e8 ] 
 \dblA A8. [ f16 ] \dblg g8 [ e8 ] \dblf f8 [ d8 ] \dble e8 [ c8 ] 
 \dblA A4 \hdble e8. [ d16 ] \dblc c8. [ b16 ] \grg a8 \bar "|.-.|" \break 

    % Part 4
 \dblg g8 
 \grA G8. [ \grd G16 ] \gre G8 [ \grd b8 ] \grg G8. [ \grd G16 ] \gre G8 [ \grd b8 ] 
 \grg G8. [ \grd G16 ] \gre G8 [ \Gthrwd d8 ] \dblb b8. [ a16 ] \grg G8 [ \grd b8 ] 
 \grg a8. [ \grd a16 ] \gre a8 [ \grd b8 ] \grg a8. [ \grd a16 ] \gre a8 [ \grd b8 ] 
 \grg a8. [ \grd a16 ] \gre a8 [ e8 ] \dblc c8. [ b16 ] \grg a8 [ \dblg g8 ]  \break

 \grA G8. [ \grd G16 ] \gre G8 [ \grd b8 ] \grg G8. [ \grd G16 ] \gre G8 [ \grd b8 ] 
 \grg G8. [ \grd G16 ] \gre G8 [ \Gthrwd d8 ] \dblb b8. [ a16 ] \grg G8 [ \grd b8 ] 
 \grg a8. [ b16 ] \grg c4 \grip e8. [ f16 ] \dblg g8 [ e8 ] 
 \dblA A4 \hdble e8. [ d16 ] \dblc c8. [ b16 ] \grg a8 \bar "|." \break


    } %end staff
    
  \header {
%    meter = "4/4 March"
    piece = "Cabar Feidh"
    composer = "Traditional"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
