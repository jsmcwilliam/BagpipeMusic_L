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

\defineBarLine ".|:-|." #'("|." ".|:" "|.")

\score {

    \new Staff  {
    \time 2/2	    %adjust time to suit specific tunes
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
%    \bar ".|:"
    		
    % Part 1
    \partial 16 g16
    \set Score.repeatCommands = #'(start-repeat)
	 \tdblf f4 A8. [ f16 ] \grg d16 [ f8. \grg a8. d16 ]  
	 \dblf f4 A8. [ f16 ] \dblf f8. [ e16 \gra e8. f16 ]  
	 \dble e4 \grA g8. [ e16 ] \grg c16 [ e8. \grg a8. \grd c8 ]  
    	 \set Score.measureLength = #(ly:make-moment 17/16)
	 \dble e4 f16 [ g8. ] \tdblf f8. d16 \grc d8. 
         \set Score.repeatCommands = #'((volta "1."))	 
	 g16   
         \once \hide Score.BarLine
         \once \hide Score.SpanBar
         \set Score.repeatCommands = #'((volta #f)(volta "2.") end-repeat)
         a16
         \set Score.repeatCommands = #'((volta #f) end-repeat)
	 \break
	 
    % Part 2
        \set Score.measureLength = #(ly:make-moment 17/16)
    	\thrwd d4 \gre a8. [ d16 ] \grg d16 [ f8. \grg a8. d16 ] 
        \set Score.measureLength = #(ly:make-moment 4/4)
    	\wslurd d4 \gre a8. [ d16 ] \dbld d8. [ c16 \grG c8. d16 ] 
    	\dblc c4 \gre a8. [ \grd c16 ] \grg c16 [ e8. \grg a8. \grd c16 ] 
    	\dblc c4 \gre a8. [ \grd c16 ] \dble e8. [ d16 \grc d8. a16 ]  \break

    	\thrwd d4 \gre a8. [ d16 ] \grg d16 [ f8. \grg a8. d16 ] 
    	\wslurd d4 \gre a8. [ d16 ] \dbld d8. [ c16 \grG c8. d16 ] 
    	\grg c4 \taor a8. [ b16 ] \grg c8. [ d16 \grg e8. f16 ] 
    	\grA g8. [ f16 \grg e16 A8. ] \hdblf f8. [ d16 \grc d8. g16 ] 
    	\bar ".|:-|."
    	\break 

    % Part 3
    \set Score.repeatCommands = #'(start-repeat)
    	\tdblf f4 \grA g8. [ f16 ] A8. [ f16 \gre f8. g16 ] 
    	A8. [ f16 \gre f8. g16 ] \tdblf f8. [ e16 \gra e8. f16 ] 
    	\dble e4 \grg f8. [ e16 ] \grA g8. [ e16 \gra e8. f16 ] 
    	\grA g8. [ e16 \gra e8. f16 ] \dble e8.  [ d16 \grc d8. ] 
         \set Score.repeatCommands = #'((volta "1."))	 
	 g16   
         \once \hide Score.BarLine
         \once \hide Score.SpanBar
         \set Score.repeatCommands = #'((volta #f)(volta "2.") end-repeat)
         a16
         \set Score.repeatCommands = #'((volta #f) end-repeat)
         \break
    
    % Part 4
        \set Score.measureLength = #(ly:make-moment 17/16)
    	\thrwd d4 \gre a8. [ d16 ] \grg f16 [ A8. e f16 ] 
        \set Score.measureLength = #(ly:make-moment 4/4)
    	\grg d16 [ f8. \grg e8. d16 ] \dbld d8. [ c16 \grG c8. d16 ] 
    	\dblc c4 \gre a8. [ \grd c16 ] \grg e16 [ g8. \grA d16 f8. ] 
    	\grg c16 [ e8. \grg b8. \grd c16 ] \dble e8. [ d16 \grc d8. a16 ]  
    	\break

    	\thrwd d4 \gre a8. [ d16 ] \grg f16 [ A8. e f16 ] 
    	\grg d16 [ f8. \grg e8. d16 ] \dbld d8. [ c16 \grG c8. d16 ] 
    	\dblc c4 \grg b8. [ \grd c16 ] \grg a8. [ \grd c16 \grg e8. g16 ] 
    	\grA f16 [ A8. c16 e8. ] \dble e8. [ d16 \grc d8. g16 ]  
    	\bar ".|:-|."
    	\break 

    % Part 5
    \repeat vota 2 {
    	\tdblf f4 \dble e8. [ d16 ] A8. [ f16 \gre f8.  g16 ] 
    	\dblA A4 g16 [ \grA f8. ] \dblf f8. [ e16 \gra e8. f16 ] 
    	\dble e4 \dbld d8. [ c16 ] \grA g8. [ e16 \gra e8. f16 ] 
    	\dblg g4 \tdblf f8. [ e16 ] \dble e8. [ d16 \grc d8. ]  
         \set Score.repeatCommands = #'((volta "1."))	 
	 g16   
         \once \hide Score.BarLine
         \once \hide Score.SpanBar
         \set Score.repeatCommands = #'((volta #f)(volta "2.") end-repeat)
         a16
         \set Score.repeatCommands = #'((volta #f) end-repeat)
    	\break
     } %end repeat
 
    % Part 6
        \set Score.measureLength = #(ly:make-moment 17/16)
    	\thrwd d4 \gre a8. [ d16 ] \dblf f4 \grg d16 [ f8. ] 
        \set Score.measureLength = #(ly:make-moment 4/4)
    	\grA g8. [ f16 \dble e8. d16 ] \dbld d8. [ c16 \grG c8. d16 ] 
    	\dblc c4 \gre a8. [ \grd c16 ] \dble e4 \grg c16 [ e8. ] 
    	\grA g8. [ e16 \dbld d8. c16 ] \dble e8. [ d16 \grc100 d8. a16 ]  
    	\break
  
    	\thrwd d4 \gre a8. [ d16 ] \dblf f4 \grg d16 [ f8. ] 
    	\grA g8. [ f16 \dble e8. d16 ] \dbld d8. [ c16 \grG c8. d16 ] 
    	\grg c16 [ \grd a8. \dbld d8. b16 ] \dble e8. [ c16 \grg f8. d16 ] 
    	\grA g8. [ e16 \dbld d8. c16 ] \dble e8. [ d16 \grG d8. ] \bar "|." 
    	\break 

    } %end staff
    
  \header {
    meter = "Reel"
    piece = "Mrs MacPherson of Inveran"
    composer = "P/M G.S. McLennen"
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