\version "2.18.0"

%{Running this template always results in the following warning:
  Cannot find property type-check for `print-function' (backend-type?).  
  Perhaps a typing error? 
  Warning: skipping assignment. It seems to have its source in "bagpipe_new.ly"
  but does not have any adverse effects
%}
%   	1. Comment out generation of midi files before compiling book
%  	2. Comment out top section when compiling book
%	3. Option to comment out "meter" from title e.g. if more than one tune
%	   per page.
%
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

#(allow-volta-hook "|") % enables volta hook outside repeat context
\defineBarLine "|.-.|:" #'("|." ".|:" "")
\defineBarLine ":|.-.|" #'(":|." ".|" "")
\defineBarLine "|.-.|" #'("|." ".|" "")

\score {

    \new Staff  {
    \time 4/4	    %adjust time to suit specific tunes
    \tempo 4 = 80   % adjust speed accordingly for playback
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
\pageBreak
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
% added layout options. See bagpipe_new.ly (\layout) for default settings
  \layout {
  	  #(layout-set-staff-size 18)
%  	  ragged-last = ##t
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