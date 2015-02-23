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
% needed to allow the "volta-hook" mid-line:
%#(allow-volta-hook ".|:-|.")
% enables volta hook outside repeat context
% #(allow-volta-hook "|") 
%
% from here
%{
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a4" 'landscape)
%
\defineBarLine ".|:-|." #'("|." ".|:" "|.")

\include "bagpipe_new.ly" 	%(Replaces bagpipe.ly)
%\include "bagpipe_extra.ly"	%(Extras)
\include "BP_format.ly" 	%(Tagline: Copied by John McWilliam, date)
				%(Paper format A4, Landscape)
				%(Header: piece, meter and composer)
				%(Otherwise Lilypond subtitle)
%to here..........................................................
%}

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
 \bar "|." \grg a4 \taor a8. [ \grd b16 ] \grg a8. [ \grd c16 ] \dble e8. [ c16 ] 
 \grg a4 \taor a8. [ \grd b16 ] \grg G8. [ b16 ] \thrwd d8. [ b16 ] 
 \grg a4 \taor a8. [ \grd b16 ] \grg a8. [ \grd b16 ] \dble e8. [ d16 ] 
 \grg e16 [ f16 g8 ] \thrwd d8. [ g16 ] \hdblb b16 [ \gre G8. ] \Gthrwd d8. [ b16 ]  
 \break

 \grg a4 \taor a8. [ \grd b16 ] \grg a8. [ \grd c16 ] \dble e8. [ c16 ] 
 \gbirl a4 \dblc c16 [ \gre a8. ] \dblb b16 [ \gre G8. ] \Gthrwd d8. [ b16 ] 
 \grg a4 \taor a8. [ \grd b16 ] \grg a8. [ \grd b16 ] \dble e8. [ d16 ] 
 \grg e16 [ f16 g8 ] \thrwd d8. [ g16 ] \hdblb b16 [ \gre G8. ] \Gthrwd d8. [ b16 ] 
 \bar ".|" \break 

    % Part 2
 \bar "|." \dble e8. [ a16 ] \dble e8. [ d16 ] \dble e8. [ a16 ] \grg e16 [ A8. ] 
 \hdble e8. [ a16 ] \dble e8. [ d16 ] \dblb b16 [ \gre G8. ] \Gthrwd d8. [ b16 ] 
 \dble e8. [ a16 ] \dble e8. [ d16 ] \grg a8. [ \grd b16 ] \dble e8. [ d16 ] 
 \grg e16 [ f16 g8 ] \thrwd d8. [ g16 ] \hdblb b16 [ \gre G8. ] \Gthrwd d8. [ b16 ]  
 \break

 \dble e8. [ a16 ] \dble e8. [ d16 ] \dble e8. [ a16 ] \grg e16 [ A8. ] 
 \birl a4 \dble e8. [ d16 ] \dblb b16 [ \gre G8. ] \Gthrwd d8. [ b16 ] 
 \dble e8. [ a16 ] \dble e8. [ b16 ] \thrwd d8. [ e16 ] \grg f16 [ g16 A8 ] 
 g16 [ f16 e8 ] \dblg g8. [ d16 ] \dblb b16 [ \gre G8. ] \Gthrwd d8. [ c16 ] 
 \bar ".|" \break 
 
    % Part 3
 \bar "|." \grg b4 \taor b8. [ \grd c16 ] \grg b8. [ \grd c16 ] \dblf f8. [ e16 ] 
 \darodo b4 \taor b8. [ \grd c16 ] \grg a8. [ \grd c16 ] \dble e8. [ c16 ] 
 \darodo b4 \taor b8. [ \grd c16 ] \grg b8. [ \grd c16 ] \dblf f8. [ e16 ] 
 \grg f16 [ g16 A8 ] \hdble e8. [ A16 ] \hdblc c16 [ \gre a8. ] \dble e8. [ c16 ]  
 \break

 \grg b4 \taor b8. [ \grd c16 ] \grg b8. [ \grd c16 ] \dblf f8. [ e16 ] 
 \grg f16 [ b16 \grG b8 ] \dblc c8. [ b16 ] \grg a8. [ \grd c16 ] \dble e8. [ c16 ] 
 \darodo b4 \dblc c16 [ \gre a8. ] \grg b8. [ \grd c16 ] \dblf f8. [ e16 ] 
 \grg f16 [ g16 A8 ] \hdble e8. [ A16 ] \hdblc c16 [ \gre a8. ] \dble e8. [ c16 ] 
 \bar ".|" \break 
 
    % Part 4
 \bar "|." \dblf f8. [ b16 ] \dblf f8. [ e16 ] \dblf f8. [ b16 ] \grg f16 [ A8. ] 
 \hdblf f8. [ b16 ] \dblf f8. [ e16 ] \dblc c16 [ \gre a8. ] \dble e8. [ c16 ] 
 \dblf f8. [ b16 ] \dblf f8. [ e16 ] \grg f16 [ b16 \grG b8 ] \dblf f8. [ e16 ] 
 \grg f16 [ g16 A8 ] \hdble e8. [ A16 ] \hdblc c16 [ \gre a8. ] \dble e8. [ c16 ]  
 \break

 \dblf f8. [ b16 ] \dblf f8. [ e16 ] \dblf f8. [ b16 ] \grg f16 [ A8. ] 
 \darodo b4 \dblf f8. [ e16 ] \dblc c16 [ \gre a8. ] \dble e8. [ c16 ] 
 \dblf f8. [ b16 ] \dblf f8. [ e16 ] \thrwd d8. [ e16 ] \grg f16 [ g16 A8 ] 
 g16 [ f16 e8 ] \grg f16 [ g16 A8 ] \hdblb b16 [ \gre G8. ] \dblb b16 [ A8. ] 
 \bar ".|:-|." \break

    % Part 5
 \set Score.repeatCommands = #'(start-repeat)
 \birl a4 \dble e8. [ d16 ] \dble e4 \birl a16 [ A8. ] 
 \birl a4 \dble e8. [ d16 ] \dblb b16 [ \gre G8. ] \Gthrwd d8. [ b16 ] 
 \gbirl a4 \dble e8. [ d16 ] \dblc c16 [ \gre a8. ] \dble e8. [ d16 ]
 \set Score.measureLength = #(ly:make-moment 5/4)
 \grg e16 [ f16 g8 ] \thrwd d8. [ g16 ] \hdblb b16 [ \gre G8. ] 
 \set Score.repeatCommands = #'((volta "1")) 
  \Gthrwd d8. [ b16 ] 
 \once \hide Score.BarLine
 \once \hide Score.SpanBar
 \set Score.repeatCommands = #'((volta #f)(volta "2.") end-repeat)
  \Gthrwd d8. [ c16 ] 
 \set Score.repeatCommands = #'((volta #f)) 
 \bar ":|."
 \break
  \set Score.measureLength = #(ly:make-moment 4/4) 
 
    % Part 6
% \bar "|." 
 \dblb b16 [ A8. ] \hdblf f8. [ e16 ] \dblf f8. [ \grg b16 ] \grG b8. [ \grd c16 ] 
 \dblb b16 [ A8. ] \hdblf f8. [ e16 ] \dblc c16 [ \gre a8. ] \dble e8. [ c16 ] 
 \dblb b16 [ A8. ] \hdblf f8. [ e16 ] \grg f16 [ b16 \grG b8 ] \dblf f8. [ e16 ] 
 \grg f16 [ g16 A8 ] \hdble e8. [ A16 ] \hdblc c16 [ \gre a8. ] \dble e8. [ c16 ]  
 \break

 \dblb b16 [ A8. ] \hdblf f8. [ e16 ] \dblf f8. [ \grg b16 ] \grG b8. [ \grd c16 ] 
 \dblb b16 [ A8. ] \hdblf f8. [ e16 ] \dblc c16 [ \gre a8. ] \dble e8. [ c16 ] 
 \dblb b16 [ A8. ] \hdblf f8. [ e16 ] \thrwd d8. [ e16 ] \grg f16 [ g16 A8 ] 
 g16 [ f16 e8 ] \grg f16 [ g16 A8 ] \hdblb b16 [ \gre G8. ] \dblb b16 [ A8. ] 
 \bar "|." \break 

    } %end staff
    
  \header {
    meter = "Strathspey"
    piece = "Atholl Cummers"
    composer = "Trad."
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