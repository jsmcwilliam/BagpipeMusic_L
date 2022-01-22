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
    \time 4/4
    \tempo 4 = 100   
%    \bagpipeKey
    \hideKeySignature
    \bar ".|:"
    		
    % Part 1
   \repeat volta 2 {
 \partial 8 a8  
 \thrwd d4 \grg a8. [ d16 ] \grg b16 [ d8. ] \grg a8. [ b16 ]  |
 \thrwd d4 \dblf f8. [ d16 ] \dble e8. [ d16 ] \grg b8. [ c16 ] | 
 \thrwd d4 \grg a8. [ d16 ] \grg b16 [ d8. ] \grg a8. [ g16 ]  |
 \grA f16 [ A8. ] \times 2/3 {e8 [ ( f8 g8 ] )} \dblf f8 [ e8 ] \thrwd d8  
 \break
    }
    % Part 2
    \repeat volta 2 {
 a8  
 \thrwd d4 \dblf f8. [ d16 ] A8. [ d16 ] \dblf f8. [ d16 ]  
 \grg c16 [ \grd a8. ] \dble e8. [ a16 ] \dblf f8. [ a16 ] \dble e8. c16
    }
    \alternative {
    	    {
    	    \thrwd d4 \dblf f8. [ d16 ] A8. [ d16 ] \dblf f8. [ d16 ] 
    	    \set Score.measureLength = #(ly:make-moment 7/8)
    	    \dble e4 \grip e8. [ g16 ] \tdblf f8 [ e8 ] \thrwd d8   
    	    \break
    	    }
    	    { 
    	    \set Score.measureLength = #(ly:make-moment 4/4)
    	    \thrwd d4 \times 2/3 {\grg e8 [ ( f8 g8 ] )} A8. [ e16 ] 
    	    \dblf f8. [ d16 ] 
    	    \set Score.measureLength = #(ly:make-moment 7/8)
    	    \dble e4 \grip e8. [ g16 ] \tdblf f8 [ e8 ] \thrwd d8 
    	    \bar "|." 
%    	    \break 
    	    }
    }
    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "Strathspey"
    piece = "Inverness Rant"
    composer = "Trad."
    parttagline = "Copied by John S. McWilliam"
  }

  \layout {
    ragged-last = ##t
  }
% \midi {} %Generation of midi files option.

}%end score
