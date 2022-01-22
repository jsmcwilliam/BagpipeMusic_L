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
%    \bagpipeKey

%    \bar ".|:"
    		
    % Part 1
    \partial 8 A16. g32
    \repeat volta 2 {
  	\grA f4 \grg e32 g16. \grA f16. e32 
  	\thrwd d8 \gre a \grg a32 \grd a16. \grg d16. c32
  	\grg b8 \thrwd d \dblg g16. f32 \grg e16. d32
  	\dblf f8 e \gra e A16. g32
  	\grA f4 \grg e32 g16. \grA f16. e32 
  	\break
  	\thrwd d16. e32 \grg f16. d32 \dblb b8 [\dblg g]
  	\dblA A8 a \grg f32 g16. \grA e32 f16.
    } %end repeat
    \alternative {
    	    {\thrwd d4 \grg d8 A16. g32}
	    {\thrwd d4 \grg d8 \grg a16. d32 \break}
    }
    % Part 2
    \repeat volta 2 {
	\grg f8 e32 d16. A16. f32 \grg e32 f16.
	\thrwd d8 \gre a \grg a32 \grd a16. \grg d16. c32
	\thrwd d8 \gre a \grg a32 \grd a16. \grg d16. c32
  	\grg b8 \thrwd d \dblg g16. f32 \grg e16. d32
  	\dblf f8 e \gra e \grg a16. d32 
  	\break
	\grg f8 e32 d16. A16. f32 \grg e32 f16.
  	\thrwd d16. e32 \grg f16. d32 \dblb b8 [\dblg g]
  	\dblA A8 a \grg f32 g16. \grA e32 f16.
  	\thrwd d4 \grg d8 \grg a16. d32 \break
    } %end repeat
    
    % Part 3
    \repeat volta 2 {
    	\grg f16. a32 \grg a32 \grd a16. A16. a32 \grg f16. e32
    	\thrwd d8 \gre a \grg a32 \grd a16. \grg d16. c32
    	\grg b32 d16. \grg a32 d16. \grg f32 A16. d32 f16.
    	\dblf f8 e \gra e \grg a16. d32
    	\grg f16. a32 \grg a32 \grd a16. A16. a32 \grg f16. e32
    	\break
  	\thrwd d16. e32 \grg f16. d32 \dblb b8 [\dblg g]
  	\dblA A8 a \grg f32 g16. \grA e32 f16.
    } %end repeat
    \alternative {
  	{ \thrwd d4 \grg d8 \grg a16. d32 }
    	{\thrwd d4 \grg d8 A16. g32 \break}
}
    
    % Part 4
    \repeat volta 2 {
	\grA e32 g16. \grA e32 f16. \grg d16. a32 \grg b32 g16.
    	\thrwd d8 \gre a \grg a32 \grd a16. \grg d16. c32
    	\grg b32 d16. g32 A16. f32 d16. \grg b16. f32
	\dblf f8 e \gra e A16. g32
	\grA f32 g16. \grA e32 f16. \grg d16. a32 \grg b32 g16.
	\break
  	\thrwd d16. e32 \grg f16. d32 \dblb b8 [\dblg g]
  	\dblA A8 a \grg f32 g16. \grA e32 f16.	
    } %end repeat
    \alternative {
    	    {\thrwd d4 \grg d8 A16. g32}
	    {\thrwd d4 \grg d8 r \bar "|."}
    }

    } %end staff
    
  \header {
    meter = "March"
    piece = "The Bens of Jura"
    composer = "John McLellan of Dunoon. Arr: Jane Gulden & Jay Close"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score

