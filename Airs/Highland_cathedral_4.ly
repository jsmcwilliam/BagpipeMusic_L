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
 \thrwd d4~ d8 [ e16 f16 ] \dble e8 [ d8 ] \grg a8 [ d8 ] |
 \dble e4~ e8 [ f8 ] \dblf f2 
 \grg f4~ f8 [ g16 A16 ] \grf g8 [ f8 ] \dble e8 [ d8 ] |
 \dble e4~ e8 [ f8 ] \birl a2 \break
 
 \grg b4~ b8 [ c16 d16 ] \dbld d8 [ a8 ] \grg c8 [ d8 ] |
 \dblA A4. \grf g8  \tdblf f2 
 \dble e4~ e8 [ f16 g ] \dblA f8 [ d ] \grg a8 [ d ] |
 \dble e4~ e8 [ d ] \wslurd d2_\markup {\italic\lower #2 Fine} | \break
    } %end-repeat

    % Part 2
 \dblc c4~ c8 \gre a8 \dble e4. \grg c16 e16 |
 \grg f4~ f8 c8 \dblc c4. \gre b8 |
 \grG a4~ a8 [ \grg b16 c ] \dblb b2 |
 \dblc c4~ c8 [ \grg d16 e ] \dblb b2 | \break
 
 \dblc c4~ c8 [ \gre a8 ] \dble e4. \grg c16 e |
 \grg f4~ f8 c8 \dblc c4. \gre b8 |
 \grG a 4~ a8 [ \grg b16 c ] \dblb b4. \grG a8 |
 \grg a2 \gbirl a_\markup {\italic\lower #2 {D.C. al Fine}} |
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
