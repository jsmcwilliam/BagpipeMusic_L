\version "2.18.0"

% When ready to include in collection:	
%	1. Comment out top section with \Include file(s)
%					
%	2. \midi section if present.
%	3. Option to comment out "meter" from title e.g. if first tune following
%	   section title.
                                    
%Comment out from here
%{
\include "bagpipe.ly" %(Original)
\include "../Includes/BP_format.ily" 	

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
    \partial 8 {a16 [ d16 ]}  
 \dblf f4 A16. [ f32 \grg e16. f32 ] 
 \thrwd d16. [ e32 \grg d16. c32 ] \dblb b8 [ \grg d16 c16 ] 
 \grg b32 [ \grd G16. \grg b16. c32 ] \thrwd d16. [ e32 \grg f32 A16. ] 
 \set Score.measureLength = #(ly:make-moment 3/8)
 \hdble e4 \gra e8 \break
 
 \set Score.repeatCommands = #'((volta "2. --2"))  
 \set Score.measureLength = #(ly:make-moment 1/8)
 \grg a16 [ d16 ] 
\set Score.measureLength = #(ly:make-moment 2/4) 
 \dblf f4 A16. [ f32 \grg e16. f32 ] 
 \thrwd d16. [ e32 \grg d16. c32 ] \dblb b8 [ \dblg g8 ] 
 \grA f32 [ A16. \hdblf f16. d32 ] \grg a16. [ \grd c32 \dble e16. c32 ] 
 \set Score.measureLength = #(ly:make-moment 3/8)
 \thrwd d4 \wslurd d8 \set Score.repeatCommands = #'((volta #f)) 
 \break
    } %end repeat

    % Part 2
    \repeat volta 2 {
 \set Score.measureLength = #(ly:make-moment 1/8)
 \grg f16 [ g16 ] 
 \set Score.measureLength = #(ly:make-moment 2/4)
 \dblA A16. [ a32 \wbirl a8 ] \dblf f16. [ a32 \wbirl a8 ] 
 \thrwd d16. [ e32 \grg d16. c32 ] \dblb b8 [ \grg d16 c16 ] 
 \grg b32 [ \grd G16. \grg b16. c32 ] \thrwd d16. [ e32 \grg f32 A16. ] 
 \set Score.measureLength = #(ly:make-moment 3/8)
 \hdble e4 \gra e8 \break
 
 \set Score.measureLength = #(ly:make-moment 1/8)
 \set Score.repeatCommands = #'((volta "1., 2-3"))  
 \grg f16 [ g16 ]
 \set Score.measureLength = #(ly:make-moment 2/4)
 \dblA A16. [ a32 \wbirl a8 ] \dblf f16. [ a32 \wbirl a8 ] 
 \thrwd d16. [ e32 \grg d16. c32 ] \dblb b8 [ \dblg g8 ] 
 \grA f32 [ A16. \hdblf f16. d32 ] \grg a16. [ \grd c32 \dble e16. c32 ]
 \set Score.measureLength = #(ly:make-moment 3/8)
 \thrwd d4 \wslurd d8 \break
 \set Score.repeatCommands = #'((volta #f)) 
 } %end repeat

    % Part 3
    \repeat volta 2 {
 \set Score.measureLength = #(ly:make-moment 1/8)
 \grg a16 [ d16 ] 
 \set Score.measureLength = #(ly:make-moment 2/4)
 \grg f16. [ a32 A16. f32 ] \grg d16. [ a32 b16. c32 ] 
 \thrwd d16. [ e32 d16. c32 ] \dblb b8 [ \grg d16 c16 ] 
 \grg b32 [ \grd G16. \grg b16. c32 ] \thrwd d16. [ e32 \grg f32 A16. ] 
 \set Score.measureLength = #(ly:make-moment 3/8)
 \hdble e4 \gra e8 \break 
    } %end repeat
    
    \alternative {{
    	    \set Score.measureLength = #(ly:make-moment 1/8)
    	    \grg a16 [ d16 ] 
    	    \set Score.measureLength = #(ly:make-moment 2/4)
    	    \grg f16. [ a32 A16. f32 ] \grg d16. [ a32 b16. c32 ] 
    	    \thrwd d16. [ e32 d16. c32 ] \dblb b8 [ \dblg g8 ] 
    	    \grA f32 [ A16. \hdblf f16. d32 ] \grg a16. [ \grd c32 
    	    \dble e16. c32 ] 
    	    \set Score.measureLength = #(ly:make-moment 3/8)
   	    \thrwd d4 \wslurd d8 \break
    	    }
    
    	   {
    	    \set Score.measureLength = #(ly:make-moment 1/8)
    	    \grg f16 g
    	    \set Score.measureLength = #(ly:make-moment 2/4 )
    	    \dblA A16. [ a32 \wbirl a8 ] \dblf f16. [ a32 \wbirl a8 ] 
    	    \thrwd d16. [ e32 ] \grg d16. [ c32 ] \dblb b8 [ \dblg g8 ] 
    	    \grA f32 [ A16. \hdblf f16. d32 ] \grg a16. [ \grd c32 ] 
    	    \dble e16. [ c32 ] 
    	    \set Score.measureLength = #(ly:make-moment 3/8)
   	    \thrwd d4 \wslurd d8 \bar ".|:" 
    		}}


    % Part 4
    \repeat volta 2 {
% \bar ".|:"
 \set Score.measureLength = #(ly:make-moment 1/8)
 \grg f16 [ g16 ] 
 \set Score.measureLength = #(ly:make-moment 2/4)
 \dblA A16. [ a32 f16. e32 ] \grg d16. [ a32 b16. c32 ] 
 \thrwd d16. [ e32 d16. c32 ] \grg b32 [ \grd a16. \grg b16. c32 ] 
 \grg d16. [ c32 d16. e32 ] \grg f16. [ d32 \grg f32 A16. ] 
 \hdble e4 \gra e8  %\break
    } %end repeat
    
    \alternative {{
 \grg f16 [ g16 ] 
 \set Score.measureLength = #(ly:make-moment 2/4)
 \dblA A16. [ a32 f16. e32 ] \grg d16. [ a32 b16. c32 ] 
 \thrwd d16. [ e32 d16. c32 ] \dblb b8 [ \dblg g8 ] 
 \grA f32 [ A16. \hdblf f16. d32 ] \grg a16. [ \grd c32 \dble e16. c32 ] 
 \set Score.measureLength = #(ly:make-moment 3/8)
 \thrwd d4 \wslurd d8 %\break 
 	    }
 	     
 	    {\set Score.measureLength = #(ly:make-moment 1/8)
 \grg a16 [ d16 ] 
 \set Score.measureLength = #(ly:make-moment 2/4)
 \grg f16. [ a32  A16. f32 ] \grg d16. [ a32 b16. c32 ] 
 \thrwd d16. [ e32 d16. c32 ] \dblb b8 [ \dblg g8 ] 
 \grA f32 [ A16. \hdblf f16. d32 ] \grg a16. [ \grd c32 \dble e16. c32 ] 
 \set Score.measureLength = #(ly:make-moment 3/8)
 \thrwd d4 \wslurd d8 \bar "|."
    \break }}

    } %end staff
    
  \header {
    meter = "March"
    piece = "The Road to the Isles"
    composer = "John MacLellan"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

} %end score
