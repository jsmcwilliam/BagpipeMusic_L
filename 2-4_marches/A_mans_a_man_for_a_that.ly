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
    \quarterBeaming
    \set Staff.midiInstrument = #"bagpipe"
    \bar ".|:"

    % Part 1
    \partial 8
    \repeat volta 2 {
		 \grg a16 [ b16 ] |
 \thrwd d8. [ e16 ] \thrwd d8 [ \gre a8 ] |
 \dblb b8 [ \thrwd d8 ] \dble e8. [ \dblg g16 ] |
 \hdblf f8. [ e16 ] \thrwd d8 [ \gre a8 ] |
 \grg b4 \taor b8 [ \grg a16. b32 ] | 
% \break

 \thrwd d8. [ e16 ] \thrwd d8 [ \gre a8 ] |
 \dblb b8 [ \thrwd d8 ] \dble e8 [ \dblg g8 ] |
 \hdblf f8. [ e16 ] \thrwd d8. [ b16 ] |
    \grg a4 \wbirl a8  \break
    }
   
    % Part 2
    \repeat volta 2 {
 \dblg g8 |
 \hdblf f8. [ g16 ] \dblA A8. [ f16 ] |
 \dblg g8. [ f16 ] \dble e8. [ \dblg g16 ] |
 \hdblf f8. [ g16 ] \dblA A8 [ \wbirl a8 ] |
 \grg b4 \taor b8. [ \dblg g16 ] | 
% \break

 \tdblf f8. [ g16 ] \dblA A8. [ f16 ] |
 \dblg g8. [ f16 ] \dble e8. [ \dblg g16 ] |
 \hdblf f8. [ e16 ] \thrwd d8. [ b16 ] |
    \grg a4 \wbirl a8 \break} 

    } %end staff
    
  \header {
    meter = "March"
    piece = "A man's a man for a' that"
    composer = "Burns Set"
    parttagline = "Copied by John S. McWilliam"

  }
  	
%Generation of midi files can be removed here.

%  \midi {}

}%end score
