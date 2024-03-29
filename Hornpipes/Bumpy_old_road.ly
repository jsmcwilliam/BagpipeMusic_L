\version "2.22.1"
				%(Otherwise Lilypond subtitle)

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
\grg e8 [ \grg f16 g16 ] \grA e8 [ \grg f16 g16 ] 
 \grA d8 [ \grg e16 f16 ] \grg d16 [ e16 \grg f16 d16 ] 
 \grg e8 [ \grg f16 g16 ] \grA e8 [ \grg d16 c16 ] 
 d16 [ \grg d16 \grc d16 e16 ] \grg f4  \break

 \grg e8 [ \grg f16 g16 ] \grA e8 [ \grg f16 g16 ] 
 \grA d8 [ \grg e16 f16 ] \grg d16 [ e16 \grg f16 d16 ] 
 \grg e8 [ \grg f16 g16 ] \grA e8 [ \grg d16 c16 ] 
 d16 [ \grg d16 \grc d16 c16 ] \thrwd d4 
    \break }%end repeat

    % Part 2
 \repeat volta 2 {
 \grg a8 [ \grg f16 d16 ] \grg a8 [ \grg f16 d16 ] 
 \grg b8 [ g16 e16 ] \grg b16 [ g16 e16 b16 ] 
 \grg c8 [ g16 e16 ] \grg c16 [ a16 \grg b16 c16 ] 
 d16 [ \grg d16 \grc d16 e16 ] \grg f4  \break

 \grg a8 [ \grg f16 d16 ] \grg a8 [ \grg f16 d16 ] 
 \grg b8 [ g16 e16 ] \grg b16 [ g16 e16 b16 ] 
 \grg c8 [ g16 e16 ] \grg c16 [ a16 \grg b16 c16 ] 
 d16 [ \grg d16 \grc d16 c16 ] \thrwd d4 
  \break }%end repeat

    % Part 3
 \repeat volta 2 {
 \grg e8 [ \grg b16 g16 ] \grA e8 [ \grg b16 g16 ] 
 \grA d8 [ \grg a16 f16 ] \grg d16 [ a16 \grg b16 d16 ] 
 \grg e8 [ \grg b16 g16 ] \grA e8 [ d16 c16 ] 
 d16 [ \grg d16 \grc d16 e16 ] \grg f4  \break

 \grg e8 [ \grg b16 g16 ] \grA e8 [ \grg b16 g16 ] 
 \grA d8 [ \grg a16 f16 ] \grg d16 [ a16 \grg b16 d16 ] 
 \grg e8 [ \grg b16 g16 ] \grA e8 [ d16 c16 ] 
 d16 [ \grg d16 \grc d16 c16 ] \thrwd d4 
  \break }%end repeat

    % Part 4
 \repeat volta 2 {
 \grg a8 [ \grg d16 f16 ] \grg a16 [ d16 \grg c16 d16 ] 
 \grg G8 [ \grg b16 d16 ] \grg G16 [ b16 \grg b16 \grG b16 ] 
 \grg a8 [ e16 c16 ] \grG c16 [ a16 \grg b16 c16 ] 
 d16 [ \grg d16 \grc d16 e16 ] \grg f4  \break

 \grg a8 [ \grg d16 f16 ] \grg a16 [ d16 \grg c16 d16 ] 
 \grg G8 [ \grg b16 d16 ] \grg G16 [ b16 \grg b16 \grG b16 ] 
 \grg a16 [ c16 \grg c16 \grG c16 ] \grg e16 [ a16 \grg b16 c16 ] 
 d16 [ \grg d16 \grc d16 c16 ] \thrwd d4 
  \break }%end repeat

    } %end staff
    
  \header {
%    meter = "Hornpipe"
    piece = "The Bumpy Old Road"
    composer = "Philip Greer"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
