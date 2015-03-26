\version "2.18.0"

%{Running this template always results in the following warning:
  Cannot find property type-check for `print-function' (backend-type?).  
  Perhaps a typing error? 
  Warning: skipping assignment. It seems to have its source in "bagpipe_new.ly"
  but does not have any adverse effects
%}
%   	1. Comment out generation of midi files before compiling book
%  	2. Comment out top section when compiling book.........................
%	3. Option to comment out "meter" from title e.g. if more than one tune
%	   per page.
%
% #(allow-volta-hook "|") % enables volta hook outside repeat context
% from here
%{
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a4" 'landscape)

\include "bagpipe_new.ly" 	%(Replaces bagpipe.ly)
%\include "bagpipe_extra.ly"	%(Extras)
\include "BP_format.ly" 	%(Tagline: Copied by John McWilliam, date)
				%(Paper format A4, Landscape)
				%(Header: piece, meter and composer)
				%(Otherwise Lilypond subtitle)
%to here..........................................................
%}

\defineBarLine "|.-.|" #'("|." ".|" "")

\score {

    \new Staff  {
    \time 6/8	    %adjust time to suit specific tunes
    \tempo 4 = 80   % adjust speed accordingly for playback
    \override Score.TimeSignature.break-visibility = #end-of-line-invisible

    \bagpipeKey
%   \set Staff.midiInstrument = #"bagpipe"  is set in bagpipe_new.ly (\layout)
%   \showKeySignature (for BMW compatibility)
%   \quarterBeaming % Sets the autobeamer to span quarter notes only. 
    		    % Use for fast music.
%   \halfBeaming    % Sets the autobeamer to span half notes. 
                    % Mostly used in reels.
%   \reelTime       % Reels are in allabreve time with half note beaming.
%   \marchTime      % 4/4 marches are written with numerical time signature and 
                    % with quarter beaming.
%   \stemspace      % Add appropriate tweaks needed for piping grace notes 
                    % to look great.
%   \pgrace         % variant of above (\stemspace)
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
        \break       
        \startStaff  % Resume bar count and show staff lines again 

    % Part 2
 \time 6/8           
 \grg f4^\markup {\center-align\bold\large\fontsize #3 {2nd Part}} 
  A8 \hdblf f4 e16 [ d16 ] 
 \grg e4 f8 \grg b4 c16 [ d16 ] 
 \grg e4 f8 A4 g16 [ A16 ] 
 \gre f2. 
 \grg f4^\markup {\center-align\large\underline {Bar 5.}} 
  A8 \hdblf f4 e16 [ d16 ] 
 \grg e4 f8 \grg b4 c16 [ d16 ] 
 \grg e4 f8 \dbld d4 c8 
 \dblc c16 [ \gre b8.~ b8 ] \grd b4. \bar "|." \break 

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
  	  #(layout-set-staff-size 18)
  	  ragged-last = ##t
  	}

% \midi {} %Generation of midi files option.

}%end score

%................................................................
%Useful commands for upgrading from older versions of Lilypond:
%\set Score.measureLength = #(ly:make-moment 5/8)
%\set Score.repeatCommands = #'((volta "1.--2."))
%\set Score.repeatCommands = #'((volta #f))
%\once \hide Score.BarLine
%\once \hide Score.SpanBar
%\once \override Score.VoltaBracket.shorten-pair = #'(0.5 . 0)
%\unfoldRepeats for better playback
%remove midi when compiling book
% see Examples or Leaving Glen Urquhart for implementation guide
%................................................................