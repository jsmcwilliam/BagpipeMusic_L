\version "2.22.1"

% When ready to include in collection:	
%	1. Comment out top section with \Include file(s)
%					
%	2. \midi section if present.
%	3. Option to comment out "meter" from title e.g. if first tune following
%	   section title.
                                    
%Comment out from here
%{
\include "bagpipe.ly" %(Original)
\include "../Includes/BP_format14.ily" 	

%to here..........................................................
%}

#(allow-volta-hook "|") % enables volta hook outside repeat context

\score {

    \new Staff  {
    \time 4/4	    %adjust time to suit specific tunes
    \tempo 4 = 80   % adjust speed accordingly for playback
    \hideKeySignature
    \bar ".|:"
    		
    % Part 1
    \set Score.repeatCommands = #'(start-repeat)
    	\grg a4 \taor a8. [ \grd b16 ] \dble e4 \birl a8. [ A16 ] 
    	\set Score.repeatCommands = #'((volta "1."))  
    	a4 \taor a8. [ e16 ] 
        \once \hide Score.BarLine
        \once \hide Score.SpanBar
        \set Score.repeatCommands = #'((volta #f)(volta "2.") end-repeat)
    	\birl a4 \grg a8. [ e16 ] 
    	\set Score.repeatCommands = #'((volta #f) ) 
        \once \hide Score.BarLine
        \set Score.measureLength = #(ly:make-moment 2 4)
    	\dbld d8. [ b16 ] \grg G8. [ \grd b16 ] 
        \set Score.measureLength = #(ly:make-moment 4 4)
    	\grg a4 \taor a8. [ \grd b16 ] \grg a8. [ b16 ] \grip c8. [ d16 ] 
    	\grg e16 [ g8. ] \grA d16 [ g8. ] 
    	\grA b8. [ \grd G16 ] \gre G8. [ \grd b16 ] 
    \set Score.repeatCommands = #'(end-repeat)
    \bar ":|.-.|"
    \break	

    % Part 2
 	\gbirl a4 A8. [ g16 ] A4 \taor a8. [ \grd b16 ] 
 	\gbirl a4 A8. [ f16 ] \grA g4 \taor G8. [ \grd b16 ] 
 	\gbirl a4 A8. [ g16 ] A4 \grip A8. [ g16 ] 
 	\grA e16 [ g8. ] \grA d16 [ g8. ] \grA b8. [ \grd G16 ] \gre G8. [ \grd b16 ]  
 	\break

 	\gbirl a8. [ A16 e16 A8. ] c4 \taor a8. [ \grd b16 ] 
 	\gbirl a8. [ A16 ] e8. [ f16 ] \grA g8. [ G16 ] \dbld d8. [ b16 ] 
 	\gbirl a8. [ A16 g16 A8. ] f16 [ A8. ] e8. [ g16 ] 
 	\grA f16 [ A8. ] e8. [ f16 ] \grA g8. [ G16 ] \dbld d8. [ c16 ] 
 	\bar "|.-.|" \break 

    % Part 3
    	\grg b4 \taor b8. [ \grd c16 ] \grg f8. [ b16 ] \grG b8. [ \grd c16 ] 
    	\grg b4 \taor b8. [ \grd c16 ] \dble e8. [ a16 ] \dble e8. [ c16 ] 
    	\grg b4 \taor b8. [ c16 ] \thrwd d4 \grG d8. [ e16 ] 
    	\dblf f4 \grg e8. [ d16 ] \grg c4 \taor a8. [ \grd c16 ]  
    	\break

    	\grg b4 \taor b8. [ \grd c16 ] \grg f8. [ b16 ] \grG b8. [ c16 ] 
    	\darodo b4 \grg b8. [ \grd c16 ] \dble e8. [ a16 ] \dble e8. [ c16 ] 
    	\grg b4 \taor b8. [ c16 ] \thrwd d4 \grG d8. [ e16 ] 
    	\dblf f4 \grg e8. [ d16 ] \grg c4 \taor a8. [ \grd c16 ] 
    	\bar "|.-.|" \break 

    % Part 4
    	\grg b16 [ \grd b8. ] \grg f8. [ e16 ] \grg f8. [ b16 ] \grG b8. [ \grd c16 ] 
    	\grg b16 [ \grd b8. ] A8. [ f16 ] \dble e8. [ a16 ] \dble e8. [ c16 ] 
    	\grg b16 [ \grd b8. ] \grg f8. [ e16 ] \grg f8. [ b16 ] \grg f8. [ g16 ] 
    	\dblA A4 \hdble e8. [ d16 ] \grg c4 \taor a8. [ \grd c16 ]  
    	\break

    	\grg b16 [ \grd b8. ] \grg f8. [ e16 ] \grg f8. [ b16 ] \grG b8. [ c16 ] 
    	\darodo b4 A8. [ f16 ] \dble e8. [ a16 ] \dble e8. [ c16 ] 
    	\grg b16 [ \grd b8. ] \grg f8. [ e16 ] \grg f8. [ b16 ] \grg f8. [ g16 ] 
    	\dblA A4 \hdble e8. [ d16 ] \grg c4 \taor a8. [ A16 ] 	
    	\bar "|.-.|" \break 

    % Part 5
    	a8. [ b16 ] \grip c8. [ d16 ] \dble e8. [ a16 \grd c16 A8. ] 
    	a8. [ b16 ] \grip c8. [ d16 ] \dbld d8. [ G16 \grd b16 A8. ] 
    	a8. [ b16 ] \grip c8. [ d16 ] \dble e8. [ d16 ] \grg c8. [ d16 ] 
    	\dble e8. [ a16 ] \dbld d8. [ a16 ] \grg b8. [ \grd G16 ] \gre G8. [ \grd b16 ] 
    	\break

    	\grg a8. [ b16 ] \grip c8. [ d16 ] \dble e8. [ a16 \grd c16 A8. ] 
    	a8. [ b16 ] \grip c8. [ d16 ] \dbld d8. [ G16 \grd b16 A8. ] 
    	\birl a4 \dble e8. [ c16 ] \grg f8. [ d16 ] \dble e8. [ c16 ] 
    	\dbld d8. [ b16 \grg c16 \grd a8. ] \grg b8. [ \grd G16 ] \gre G8. [ \grd b16 ] 
    	\bar "|.-.|" \break 

    % Part 6
    	\gbirl a8. [ A16 ] a8. [ A16 ] g16 [ \grA a8. ] \dble e8. [ c16 ] 
    	\gbirl a8. [ A16 ] a8. [ A16 ] g16 [ \grA G8. ] \dbld d8. [ b16 ] 
    	\gbirl a8. [ A16 ] a8. [ A16 ] g16 [ A8. ] e8. [ A16 ] 
    	g16 [ \grA e8. ] \dblg g4 \grA g8. [ G16 ] \dbld d8. [ b16 ]  
    	\break

    	\dblA A4 g16 [ \grA e8. ] A4 \birl a8. [ e16 ] 
    	\dblA A4 g16 [ \grA e8. ] \grA g4 \taor G8. [ \grd b16 ] 
    	\dblA A4 \grg A4 \times 2/3 {e8 ( f8 g8 )} \dblA A4 
    	\times 2/3 {e8 ( f8 g8 )} \grA f8. [ d16 ] \grA g4 \taor G8. [ b16 ] 
    	\bar "|.-.|:" \break

    % Part 7
    \set Score.repeatCommands = #'(start-repeat)
    	\gbirl a8. [ e16 ] \grg a8. [ e16 ] \gra e8. [ a16 ] \dbld d8. [ b16 ] 
    	\gbirl a8. [ e16 ] \grg a8. [ e16 ] \gra e8. [ G16 ] \dbld d8. [ b16 ] 
    	\gbirl a8. [ e16 ] \grg a8. [ e16 ] \grg d8. [ e16 ] \gra e8. [ d16 ] 
    	\grg b8. [ d16 ] \grG d8. [ e16 ] \gra e8. [ G16 ] \dbld d8. [ b16 ] 
    \set Score.repeatCommands = #'(end-repeat)
    	\bar ":|.-.|"
    	\break	

    % Part 8
    	\gbirl a4 \dblg g4 A4 \taor a8. [ \grd b16 ] 
    	\gbirl a4 \dblA A4 g4 \taor G8. [ \grd b16 ] 
    	\gbirl a4 \dblA A4 \birl a8. [ A16 ] a8. [ A16 ] 
    	\grg A4 \birl a8. [ A16 ] g4 \taor G8. [ \grd b16 ]  
    	\break

    	\gbirl a4 \dblg g4 A4 \taor a8. [ \grd b16 ] 
    	\gbirl a4 \dblA A4 g4 \taor G8. [ \grd b16 ] 
    	\gbirl a4 \dblA A4 \times 2/3 {e8 ( f8 g8 )} \dblA A4 
    	\times 2/3 {e8 ( f8 g8 )} \grA f8. [ d16 ] \grA g4 \taor G8 
    	\bar "|." \break 
    
    } %end staff
    
  \header {
    meter = "Reel"
    piece = "Charlies Welcome"
    composer = "Arr: D. Johnstone"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
