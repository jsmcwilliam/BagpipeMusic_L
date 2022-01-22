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
    \time 2/4	    
    \tempo 4 = 80  
    \hideKeySignature

    \bar ".|:"
    		
    % Part 1
    \repeat volta 2 {
    \partial 8 \dble e8 
 \grg a16. [ e32 \grg c32 e16. ] \grg a16. [ e32 \grg c32 e16. ] 
 \dble e16. [ c32 \grg f16. a32 ] \dble e8 [ \dbld d16. b32 ] 
 \grg G16. [ d32 \grg b32 d16. ] \grg G16. [ d32 \grg b32 d16. ] 
 \grg G16. [ a32 \grg b16. c32 ] \dbld d16. [ b32 \grg e16. c32 ]  
 \break

 \grg a16. [ e32 \grg c32 e16. ] \grg a16. [ e32 \grg c32 e16. ] 
 \dble e16. [ c32 \grg f16. a32 ] \dble e8 [ \dbld d16. c32 ] 
 \grg b32 [ d16. \grg G16. \grd b32 ] \grA g16. [ f32 \dble e16. d32 ] 
 \set Score.measureLength = #(ly:make-moment 3/8)
 \dblc c8 [ \gre a8 ] \wbirl a8 
 \break 
    } %end repeat

    % Part 2
    \repeat volta 2 {
 \set Score.measureLength = #(ly:make-moment 1/8)
 \dble e8 
 \set Score.measureLength = #(ly:make-moment 4/8)
 \grg c32 [ e16. \dblA A8 ] c32 [ e16. \dblA A8 ] 
 c32 [ e16. A16. f32 ] \dble e8 [ \dbld d16. c32 ] 
 \shakeb b8 [ \dblg g8 ] \catchb b8 [ \dblg g8 ] 
 \catchb b8 [ \dblg g8 ] A16. [ g32 \hdblf f16. e32 ]  
 \break

 \grg c32 [ e16. \dblA A8 ] g32 [ \grA e16. \dblA A8 ] 
 g16. [ e32 \grg f16. d32 ] \dble e8 [ \dbld d16. c32 ] 
 \grg b32 [ d16. \grg G16. \grd b32 ] \grA g16. [ f32 \dble e16. d32 ] 
 \set Score.measureLength = #(ly:make-moment 3/8)
 \dblc c8 [ \gre a8 ] \wbirl a8 
 \break
    } %end repeat

    % Part 3
    \repeat volta 2 {
\set Score.measureLength = #(ly:make-moment 1/8)
 \dble e8 
 \set Score.measureLength = #(ly:make-moment 4/8)
 \grg a16. [ \grd a32 \gre a16. \grd c32 ] \grg a16. [ \grd a32 \gre a16. \grd c32 ] 
 \grg a16. [ \grd a32 \gre a16. \grd c32 ] \dble e8 [ \dbld d16. b32 ] 
 \grg G16. [ \grd G32 \gre G16. \grd b32 ] \grg G16. [\grd G32 \gre G16. \grd b32 ] 
 \grg G16. [ \grd G32 \gre G16. \grd b32 ] \thrwd d16. [ b32 \dble e16. c32 ] 
 \break

 \grg a8 [ \taor a16. d32 ] \grg c32 [ e16. \grg a16. \grd c32 ] 
 \dble e16. [ a32 \grg f16. a32 ] \dble e8 [ \dbld d16. c32 ] 
 \grg b32 [d16.\grg G16. b32 ] \grA g16. [ f32 \dble e16. d32 ] 
 \set Score.measureLength = #(ly:make-moment 3/8)
 \dblc c8 [ \gre a8 ] \wbirl a8 
 \break
    } %end repeat

    % Part 4
    \repeat volta 2 {
 \set Score.measureLength = #(ly:make-moment 1/8)
 \dble e16. [ d32 ] 
 \set Score.measureLength = #(ly:make-moment 4/8)
 \grg c32 [ e16. A16. e32 ] \dblg g16. [ e32 \dblA A8 ] 
 c32 [ e16. A16. g32 ] \hdblf f16. [ e32 \dbld d16. c32 ] 
 \catchb b8 [ \dblg g16. b32 ] A16. [ b32 \dblg g8 ] 
 \hcatchb b8 [ \dblg g8 ] A16. [ g32 \hdblf f16. e32 ]  
 \break

 \grg c32 [ e16. \dblA A8] g32 [ \grA e16. \dblA A8 ] 
 g16. [ e32 \grg f16. d32 ] \dble e8 [ \dbld d16. c32 ] 
 \grg b32 [ d16. \grg G16. \grd b32 ] \grA g16. [ f32 \dble e16. d32 ] 
 \set Score.measureLength = #(ly:make-moment 3/8)
 \dblc c8 [ \gre a8 ] \wbirl a8 
 \break
    } %end repeat
  
    } %end staff
    
  \header {
    meter = "March"
    piece = "Balmoral Highlanders"
    composer = "A. MacKay"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score

