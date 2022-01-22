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

\defineBarLine "|.-.|" #'("|." ".|" "|.")

\score {

    \new Staff  {
    \time 6/8	    
    \tempo 4 = 80   
    \hideKeySignature
    \bar ".|"
    		
    % Part 1
 \grg b4 \grd b8 \grg f4. 
 \grA g8 [ f8 e8 ] \grg d4. 
 \grg e8 [ f8 e8 ] \dbld d4 b8
 \time 9/8
 \dble e4 d8 \dblc c2.
 \time 6/8
 \grg b4^\markup {\center-align\large\underline {Bar 5.}} 
 \grd b8 \grg f4. 
 \hdbld d8 [ c8 d8 ] \grg e4. 
 \grA g8 [ f8 e8 ] \dbld d4 b8 
 \time 9/8
 \grg c4 d8 \dblb b2. \bar "|.-.|" \break 
 
 \time 6/8
 \grg d4.^\markup {\center-align\large\fontsize #3 {Harmony - Bar 5, 1st part}} 
 \gre b4. 
 \grg b8 [ c8 d8 ] \dble e8 [ d8 c8 ] 
 \grg d4 e8 \grg f4. 
 \time 9/8

 \grg e8 [ c8 d8 ] \dble e8 [ d8 c8 ] \dblb b4. \bar "|.-.|" 
 
  	\stopStaff 
        % Increasing the unfold counter will expand the staff-free space
        \repeat unfold 6 { s4. s4. s4. }
        \once\override Score.BarLine.break-visibility = #end-of-line-invisible
        \once\override Staff.TimeSignature.break-visibility = #end-of-line-invisible
        \break       
        \startStaff  % Resume bar count and show staff lines again 

    % Part 2
 \time 6/8   
 \bar ".|"
 \grg f4^\markup {\center-align\bold\large\fontsize #3 {2nd Part}} 
  A8 \hdblf f4 e16 [ d16 ] 
 \grg e4 f8 \grg b4 c16 [ d16 ] 
 \grg e4 f8 A4 g16 [ A16 ] 
 \gre f2. 
 \grg f4^\markup {\center-align\large\underline {Bar 5.}} 
  A8 \hdblf f4 e16 [ d16 ] 
 \grg e4 f8 \grg b4 c16 [ d16 ] 
 \grg e4 f8 \dbld d4 c8 
 \dblc c16 [ \gre b8.~ b8 ] \grd b4. \bar "|.-.|" \break 

  \time 6/8
  \grg b4.^\markup {\center-align\large\fontsize #3 {Harmony - Bar 5, 2nd part}} 
  \thrwd d4. 
 \grg c8 [ e8 d8 ] \dblb b4 a8 
 \grg G8 [ a8 b8 ] \dblb b4 c8 
 \dblc c16 [ \gre b8. b8 ] \grd b4. \bar "|." \break 

    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "Air"
    piece = "Lament for Jef ar Penven"
    composer = "P. Monjarret"
    parttagline = "Copied by John S. McWilliam"
  }
% added layout options. See bagpipe_new.ly (\layout) for default settings
  \layout {
  	  ragged-last = ##t
  	}

% \midi {} %Generation of midi files option.

}%end score
