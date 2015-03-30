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
    \bar ".|"
    		
    % Part 1
	\partial 8 e8 
 \grg a4 \taor a8 [ d8 ] \dblc c8. [ b16 ] \gra a8 [ \grd c8 ] 
 \dble e8. [ c16 ] A8 [ c8 ] \dble e4~ e8 [ f8 ] 
 \grg f8. [ e16 ] \grg f16 [ A8. ] \hdble e8. [ c16 ] \grg a8 [ \grd c8 ] 
 \dble e8. [ d16 ] \dbld d16 [ c8. ] \grg b4~ b8 [ e8 ]  \break

 \grg a4 \taor a8 [ d8 ] \dblc c8. [ b16 ] \gra a8 [ \grd c8 ] 
 \dble e8. [ c16 ] A8 [ c8 ] \dble e4~ e8 [ f8 ] 
 \grg f8. [ e16 ] \grg f16 [ A8. ] \hdble e8. [ c16 ] \dbld d8 [ b8 ] 
 \grg a2 \wbirl a4.  \bar "|.-.|" 
 \break 

    % Part 2
 e8
 \grg f8. [ e16 ] \grg f8 [ A8 ] \hdble e8. [ c16 ] \dbld d8 [ b8 ] 
 \grg a8. [ b16 ] \grip c8 [ d8 ] \dble e4~ e8 [ f8 ] 
 \grg f8. [ e16 ] \grg f16 [ A8. ] \hdble e8. [ c16 ] \grg a8 [ \grd c8 ] 
 \dble e8. [ d16 ] \dbld d16 [ c8. ] \gre b4~ b8 [ e8 ]  \break

 \grg f8. [ e16 ] \grg f8 A8 \hdble e8. [ c16 ] \dbld d8 [ b8 ] 
 \grg a8. [ b16 ] \grip c8 [ d8 ] \dble e4~ e8 [ f8 ] 
 \grg f8. [ e16 ] \grg f16 [ A8. ] \hdble e8. [ c16 ] \dbld d8 [ b8 ] 
 \grg a2 \wbirl a4. \bar "|.-.|" 
 \break 

    % Part 3
 e8
 \birl a8. [ b16 ] \grg c8 [ d8 ] \dbld d8 [ c8~ ] c8 [ e8 ] 
 \grg f8. [ e16 ] \grg d8 [ A8 ] \hdble e4~ e8 [ f8 ] 
 \grg f8. [ e16 ] \grg f16 [ A8. ] \hdble e8. [ c16 ] \grg a8 [ \grd c8 ] 
 \dble e8. [ d16 ] \dbld d16 [ c8. ] \grg b4~ b8 [ e8 ]  \break

 \birl a8. [ b16 ] \grg c8 [ d8 ] \dbld d8 [ c8~ ] c8 [ e8 ] 
 \grg f8. [ e16 ] \grg d8 [ A8 ] \hdble e4~ e8 [ f8 ] 
 \grg f8. [ e16 ] \grg f16 [ A8. ] \hdble e8. [ c16 ] \dbld d8 [ b8 ] 
 \grg a2 \wbirl a4. \bar "|.-.|" 
 \break 

    % Part 4
 e8
 \dblA A4 \taor a8 [ e8 ] A8. [ f16 ] \grg a16 [ A8. ] 
 \hdblf f8. [ \grg a16 ] \grg f16 [ A8. ] \hdble e4~ e8 [ f8 ] 
 \grg f8. [ e16 ] \grg f16 [ A8. ] \hdble e8. [ c16 ] \grg a8 [ \grd c8 ] 
 \dble e8. [ d16 ] \dbld d16 [ c8. ] \grg b4~ b8 [ e8 ]  \break

 \birl a8. [ b16 ] \grg c8 [ d8 ] \dbld d8 [ c8~ ] c8 [ e8 ] 
 \grg f8. [ e16 ] \grg d8 [ A8 ] \hdble e4~ e8 [ f8 ] 
 \grg f8. [ e16 ] \grg f16 [ A8. ] \hdble e8. [ c16 ] \dbld d8 [ b8 ] 
 \grg a2 \wbirl a4 \bar "|." 
 \break 


    } %end staff
    
  \header {
    meter = "March"
    piece = "Jimmie Findlater"
    composer = "Gordon K. Speirs"
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