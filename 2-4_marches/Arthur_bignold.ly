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
  \partial 8 {A16. [ f32 ]} 
 \dble e8. [ a16 ] \dblc c8. [ b16 ] 
 \grg a16. [ \grd c32 A16. f32] \dble e16 [ a16 \dblc c8 ] 
 \thrwd d8. [ G16 ] \dblb b8. [ a16 ] 
 \grg G16. [ \grd b32 g16. ] e32 ] \thrwd d8 [ \grg c16. d32 ]  \break

 \dble e8. [ a16 ] \dblc c8. [ b16 ] 
 \grg a16. [ \grd c32 A16. f32] \dble e16 [ a16 \dblc c8 ] 
 \grip e8. [ c16 ] \grg b32 [ d16. G16. \grd b32 ] 
 \grg a4 \wbirl a8 
 \break
    } %end repeat

    % Part 2
    \repeat volta 2 {
 \grg c16. [ d32 ] 
 \dble e8 [ \dblA A8 ] \hdblc c8 [ \dblA A8 ] 
 a16. [ \grd c32 A16. f32] \dble e16 [ a16 \dblc c8 ] 
 \thrwd d8 [ \dblg g8 ] \hdblb b8 [ \dblg g8 ] 
 G16. [ \grd b32 g16. e32 ] \thrwd d8 [ \grg c16. d32 ]  
 \break

 \dble e8 [ \dblA A8 ] \hdblc c8 [ \dblA A8 ] 
 \grg a16. [ \grd c32 A16. f32] \dble e16 [ a16 \dblc c8 ] 
 \grip e8. [ c16 ] \grg b32 [ d16. G16. \grd b32 ] 
 \grg a4 \wbirl a8 
 \break
     } %end repeat

    % Part 3
    \repeat volta 2 {
 \dble e8 
 \grg a8 [ \taor a16. \grd c32 ] \dble e16 [ a16 \dblc c8 ] 
 \grg a16. [ \grd c32  A16. f32 ] \dble e8 [ \dbld d16. b32 ] 
 \grg G16. [ \grd G32 G16. b32 ] d16 [ \grd G16 \dblc c8 ] 
 \grg G16. [ \grd b32 g16. e32 ] \thrwd d8 [ \dblc c16. b32 ]  \break
 
 \grg a8 [ \taor a16. \grd c32 ] \dble e16 [ a16 \dblc c8 ] 
 \grg a16. [ \grd c32 A16. f32] \dble e16 [ a16 \dblc c8 ] 
 \grip e8. [ c16 ] \grg b32 [ d16. G16. \grd b32 ] 
 \grg a4 \wbirl a8 
 \break
     } %end repeat

    % Part 4
    \repeat volta 2 {
 \grg c16. [ d32 ] 
 \grg e32 [ A16. c16 A16 ] a8 [ \taor a16. \grd c32 ] 
 \dble e16. [ d32 c16. d32 ] \dble e16 [a \dblc c8 ] 
 \grg d32 [ g16. b16 g16 ] G16. [ \grd G32 G16. \grd b32 ] 
 \dbld d16. [ c32 \grg b32 e16. ] \dbld d16 [ G16 \dblb b8 ]  \break
     } %end repeat
     \alternative {
     	 {   \grg e32 [ A16. c16 A16 ] a8 [ \taor a16. \grd c32 ] 
     	     \dble e16. [ d32 c16. d32 ] \dble e16 [ a16 \dblc c8 ] 
     	     \grip e8. [ c16 ] \grg b32 [ d16. G16. \grd b32 ] 
     	     \grg a4 \wbirl a8 
     	     \break }
 
     	 {  \set Score.measureLength = #(ly:make-moment 6/8)
     	     \grg a16. [ b32 \grip c16. d32 ] \grg c32 [ e16. \grg a16. \grd c32 ] 
     	     \grg d32 [ f16. \grg c32 e16. ] \dble e16 [ a16 \dblc c8 ] 
     	     \grip e8. [ c16 ] \grg b32 [ d16. \grg G16. \grd b32 ] 
     	     \grg a4 \wbirl a8 
     	     \bar "|." \break }
     }

    } %end staff
    
  \header {
%    meter = "March"
    piece = "Arthur Bignold of Lochrosque"
    composer = "J. MacColl"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
