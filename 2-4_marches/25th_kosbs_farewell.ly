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
\include "../../Includes/BP_format_portrait.ly" 	

%to here..........................................................
%}
%{

% Using variable makes tunes more readable but requires a different
% book file structure - see snippets.

PartA =     \repeat volta 2 {
     \partial 8 {\grg a16. [ d32 ]}
     \dblf f4 \grg e16. [ g32 \grA f32 A16. ]  
     \hdblf f8 [ d8 ] \wslurd d8 [ \dblg g8 ]  
     \tslurb b4 \grA g16. [ f32 \grg e16. d32 ]  
     \dblc c8 [ e8 ] \gra e8 [ \grg a16. d32 ]   
     \break

     \dblf f4 \grg e16. [ g32 \grA f32 A16. ]  
     \hdblf f8 [ d8 ] \wslurd d8 [ \dblg g8 ]  
     \tslurb b8. [ d16 ] \grg c32 [ e16. \grg a16. A32 ]  
     \hdblf f8 [ d8 ] \wslurd d8
     \break } %end repeat


PartB =     \repeat volta 2 {
     \dblg g8  
     \dblA A8 [ \birl a8 ] \grA g16. [ f32 \grg e16. d32 ]  
     \dblc c8 [ \grg b8 ] \taor b8 [ \grg e16. f32 ]  
     \dblg g8 [ \hslurb b] \grg G16. [ \grd b32 \grg e16. d32 ]  
     \dblc c8 [ e8 ] \gra e8 [ \grg f16. g32 ]   
     \break

     \dblA A8 [ \birl a8 ] \grA g16. [ f32 \grg e16. d32 ]  
     \dblc c8 [ \grg b8 ] \taor b8 [ \dblg g8 ]  
     a16. [ \grd c32 \grg e16. A32 ] g16. [ e32 \grg c32 \grd a16. ]  
     \thrwd d4 \wslurd d8  
    \break } %end repeat


PartC =     \repeat volta 2 {
     \grg a16. [ d32 ]  
     \grg f16. [ e32 \grg f32 A16. ] a16. [ d32 \grg f32 A16. ]  
     \hdblf f8 [ d8 ] \wslurd d8 [ \dblg g8 ]  
     \grA b32 [ \grd G16. \grg b32 d16. ] \grA g16. [ f32 \grg e16. d32 ]  
     \dblc c8 [ e8 ] \gra e8 [ \grg a16. d32 ]   
     \break

     \grg f16. [ e32 \grg f32 A16. ] a16. [ d32 \grg f32 A16. ]  
     \hdblf f8 [ d8 ] \wslurd d8 [ \dblg g8 ]  
     \grA b32 [ \grd G16. \grg b32 d16. ] \grg c32 [ e16. \grg a16. A32 ]  
     \hdblf f8 [ d8 ] \wslurd d8  
    \break } %end repeat


PartD =     \repeat volta 2 {
     \grg f16. [ g32 ]  
     A16. [ g32 A16. d32 ] \grg f16. [ d32 A16. d32 ]  
     \dblc c8 [ \grg b8 ] \taor b8 [ \grg e16. f32 ]  
     \grA g16. [ f32 g16. b32 ] \grg G16. [ \grd b32 \grg e16. d32 ]  
     \dblc c8 [ e8 ] \gra e8 [ \grg f16. g32 ]   
     \break

     A16. [ g32 A16. d32 ] \grg f16. [ d32 A16. d32 ]  
     \dblc c8 [ \grg b8 ] \taor b8 [ \dblg g8 ]  
     a16. [ \grd c32 \grg e16. A32 ] g16. [ e32 \grg c32 \grd a16. ]  
     \thrwd d4 \wslurd d8 
    \break } %end repeat
%}


\score {

    \new Staff  {
    \time 2/4	    
    \tempo 4 = 80   
    \hideKeySignature

    \bar ".|:"

% Part 1
    \repeat volta 2 {
     \partial 8 {\grg a16. [ d32 ]}
     \dblf f4 \grg e16. [ g32 \grA f32 A16. ]  
     \hdblf f8 [ d8 ] \wslurd d8 [ \dblg g8 ]  
     \tslurb b4 \grA g16. [ f32 \grg e16. d32 ]  
     \dblc c8 [ e8 ] \gra e8 [ \grg a16. d32 ]   
     \break

     \dblf f4 \grg e16. [ g32 \grA f32 A16. ]  
     \hdblf f8 [ d8 ] \wslurd d8 [ \dblg g8 ]  
     \tslurb b8. [ d16 ] \grg c32 [ e16. \grg a16. A32 ]  
     \hdblf f8 [ d8 ] \wslurd d8
     \break } %end repeat

% Part 2
    \repeat volta 2 {
     \dblg g8  
     \dblA A8 [ \birl a8 ] \grA g16. [ f32 \grg e16. d32 ]  
     \dblc c8 [ \grg b8 ] \taor b8 [ \grg e16. f32 ]  
     \dblg g8 [ \hslurb b] \grg G16. [ \grd b32 \grg e16. d32 ]  
     \dblc c8 [ e8 ] \gra e8 [ \grg f16. g32 ]   
     \break

     \dblA A8 [ \birl a8 ] \grA g16. [ f32 \grg e16. d32 ]  
     \dblc c8 [ \grg b8 ] \taor b8 [ \dblg g8 ]  
     a16. [ \grd c32 \grg e16. A32 ] g16. [ e32 \grg c32 \grd a16. ]  
     \thrwd d4 \wslurd d8  
    \break } %end repeat

% Part 3
    \repeat volta 2 {
     \grg a16. [ d32 ]  
     \grg f16. [ e32 \grg f32 A16. ] a16. [ d32 \grg f32 A16. ]  
     \hdblf f8 [ d8 ] \wslurd d8 [ \dblg g8 ]  
     \grA b32 [ \grd G16. \grg b32 d16. ] \grA g16. [ f32 \grg e16. d32 ]  
     \dblc c8 [ e8 ] \gra e8 [ \grg a16. d32 ]   
     \break

     \grg f16. [ e32 \grg f32 A16. ] a16. [ d32 \grg f32 A16. ]  
     \hdblf f8 [ d8 ] \wslurd d8 [ \dblg g8 ]  
     \grA b32 [ \grd G16. \grg b32 d16. ] \grg c32 [ e16. \grg a16. A32 ]  
     \hdblf f8 [ d8 ] \wslurd d8  
    \break } %end repeat

% Part 4
    \repeat volta 2 {
     \grg f16. [ g32 ]  
     A16. [ g32 A16. d32 ] \grg f16. [ d32 A16. d32 ]  
     \dblc c8 [ \grg b8 ] \taor b8 [ \grg e16. f32 ]  
     \grA g16. [ f32 g16. b32 ] \grg G16. [ \grd b32 \grg e16. d32 ]  
     \dblc c8 [ e8 ] \gra e8 [ \grg f16. g32 ]   
     \break

     A16. [ g32 A16. d32 ] \grg f16. [ d32 A16. d32 ]  
     \dblc c8 [ \grg b8 ] \taor b8 [ \dblg g8 ]  
     a16. [ \grd c32 \grg e16. A32 ] g16. [ e32 \grg c32 \grd a16. ]  
     \thrwd d4 \wslurd d8 
    \break } %end repeat

    } %end staff
    
  \header {
    meter = "March"
    piece = "25th K.O.S.Bs Farewell to Meerut"
    composer = "P/M J. Balloch (1860 - 1947)"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score

