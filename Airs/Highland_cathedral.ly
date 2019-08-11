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
    \time 4/4	   
    \tempo 4 = 80   
    \hideKeySignature
    \bar ".|:"
    		
    % Part 1
    \repeat volta 2 {
 \thrwd d4~ d8 [ e16 f16 ] \dble e8 [ d8 ] \grg a8 [ d8 ] 
 \dble e4~ e8 [ f8 ] \gre f2 
 \grg f4~ f8 [ g16 A16 ] \grf g8 [ f8 ] \grg e8 [ d8 ] 
 \dble e4~ e8 [ f8 ] \birl a2 
 \grip b4~ b8 [ c16 d16 ] \grc d8 [ \gre a8 ] \grg c8 [ d8 ] 
 \dblA A4~ A8 [ g8 ] \grA f2 
 \dble e4~
 _\markup {\italic\lower #2 {Ritardando 3rd. time through}}
 e8 [ f16 g16 ] \tdblf f8 [ d8 ] \grg a8 [ d8 ] 
 \dble e4~ e8 [ d8 ] \wslurd d2_\markup {\italic\lower #2 Fine} 
 \break
    } %end-repeat

    % Part 2
 \dblc c4~ c8 [ \gre a8 ] \dble e4 e8 [ \grg c16 e16 ] 
 \dblf f4~ f8 [ c8 ] \grip c4 c8 [ b8 ] 
 \grG a4~ a16 [ b16 c8 ] \dblb b2 
 \dblc c4~ c16 [ d16 e8 ] \dblb b2 
 \dblc c4~ c8 [ \gre a8 ] \dble e4 e8 [ \grg c16 e16 ] 
 \dblf f4~ f8 [ c8 ] \grip c4 c8 [ b8 ] 
 \grG a4~ a16 [ b16 c8 ] \dblb b4~ b8 [ \grG a8 ] 
 \gbirl a1~ a1_\markup {\italic\lower #2 {D.C. al Fine}} 
 \bar "|." 

    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "Air"
    piece = "Highland Cathedral"
    composer = "Ulrich Roever & Michael Korb"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
