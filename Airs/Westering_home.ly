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
    \time 6/8	   
    \tempo 4 = 80   
    \hideKeySignature
    \bar ".|:"
    		
    % Part 1
    \repeat volta 2 {
 \grg a8. [ \grd b16 \gre a8 ] \grg a4 \taor a8 
 \thrwd d4 e8 \dblf f4. 
 \dblg g8. [ f16 \grg e8 ] \grg f8. [ e16 \grg d8 ] 
 \grg b4 \taor b8 \grg a4.  
% \break

 \grg a8. [ \grd b16 \gre a8 ] \grg a4 \taor a8 
 \thrwd d4 e8 \dblf f4. 
 \dblA A8. [ f16 \grg d8 ] \grg f4 \grg e8
 \set Score.measureLength = #(ly:make-moment 9/8) 
 \thrwd d4. 
 \set Score.repeatCommands = #'((volta "1"))  
 \dbld d8. [ c16 b8 ]
 \once \hide Score.BarLine
 \once \hide Score.SpanBar
 \set Score.repeatCommands = #'((volta #f) (volta "2.") end-repeat) 
 \dbld d4. 
 \set Score.repeatCommands = #'((volta #f)) 
 \break
    } % end repeat

    % Part 2
    \repeat volta 2 {
 \set Score.measureLength = #(ly:make-moment 6/8)
 \dblA A8. [ f16 \grg d8 ] \dbld d8. [ e16 f8 ] 
 \dble e8. [ \grg d16 e8 ] \birl a4. 
 \grg a8. [ b16 c8 ] \thrwd d8. [ e16 f8 ] 
 \dblg g8. [ f16 g8 ] \hdble e4.  
% \break

 \dblA A8. [ f16 \grg d8 ] \dbld d8. [ e16 f8 ] 
 \dble e8. [ \grg d16 e8 ] \birl a4 \dblg g8 
 \hdblf f8. [ e16 \grg d8 ] \grg f4 \grg e8 
 \thrwd d4. \dbld d4. 
 \break
    } %end repeat
    
    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "Slow March"
    piece = "Westering Home (Eilean Mo Chridhe)"
    composer = "Traditional"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
