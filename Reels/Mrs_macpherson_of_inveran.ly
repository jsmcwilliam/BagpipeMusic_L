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
	\partial 8 g8
	 \tdblf f4 A8. [ f16 ] \grg d8 [ f8 \grg a8 d8 ]  
 \dblf f4 A8. [ f16 ] \grg f4 \hslure e8. [ f16 ]  
 \dble e4 \grA g8. [ e16 ] \grg c8 [ e8 a8 \grd c8 ]  
 \dble e4 f8 [ g8 ] \tdblf f4 \Gthrwd d8. [ g16 ]   \break

  
 \tdblf f4 A8. [ f16 ] \grg d8 [ f8 \grg a8 d8 ]  
 \dblf f4 A8. [ f16 ] \grg f4 \hslure e8. [ f16 ]  
 \dble e4 \grA g8. [ e16 ] \grg c8 [ e8 \grg a8 \grd c8 ]  
 \dble e4 f8 [ g8 ] \tdblf f4 \Gthrwd d8 a8 \bar "|." \break 

    % Part 2
      
 \thrwd d4 \gre a8. [ d16 ] \grg d8 [ f8 \grg a8 d8 ] 
 \wslurd d4 \gre a8 [ d8 ] \dbld d4 \hslurc c8. [ d16 ] 
 \dblc c4 \grg a8 [ \grd c8 ] \grg c8 [ e8 \grg a8 \grd c8 ] 
 \dblc c4 \gre a8 [ \grd c8 ] \dble e4 \Gthrwd d8. [ a16 ]  \break

 
 \thrwd d4 \gre a8 [ d8 ] \grg d8 [ f8 \grg a8 d8 ] 
 \wslurd d4 \gre a8 [ d8 ] \dbld d4 \hslurc c8. [ d16 ] 
 \grg c4 \taor a8 [ b8 ] \grg c8 [ d8 \grg e8 d8 ] 
 \grA g8 [ f8 \grg e8 A8 ] \hdblf f4 \Gthrwd d8 g \bar "|." \break 

    % Part 3
 \tdblf f4 \grA g8 [ f8 ] A4 \hdblf f8. [ g16 ] 
 A4 \hdblf f8 [ g8 ] \tdblf f4 \hslure e8. [ f16 ] 
 \dble e4 \grg f8 [ e8 ] \grA g4 \hslure e8. [ f16 ] 
 \grA g4 \hslure e8. [ f16 ] \dble e4 d8. [ g16 ]  \break

 
 \tdblf f4 \grA g8 [ f8 ] A4 \hdblf f8. [ g16 ] 
 A4 \hdblf f8 [ g8 ] \tdblf f4 \hslure e8. [ f16 ] 
 \dble e4 \grg f8 [ e8 ] \grA g4 \hslure e8. [ f16 ] 
 \grA g4 \hslure e8. [ f16 ] \dble e4 \Gthrwd d8 a \bar "|." \break 

    % Part 4
 \thrwd d4 \gre a8 [ d8 ] \grg f8 [ A8 e f8 ] 
 \grg d8 [ f8 \grg e8 d8 ] \dbld d4 \hslurc c8. [ d16 ] 
 \dblc c4 \gre a8 [ \grd c8 ] \grg e8 [ g8 \grA d8 f8 ] 
 \grg c8 [ e8 \grg b8 \grd c8 ] \dble e4 \Gthrwd d8. [ a16 ]  \break

 \thrwd d4 \gre a8 [ d8 ] \grg f8 [ A8 e f8 ] 
 \grg d8 [ f8 \grg e8 d8 ] \dbld d4 \hslurc c8. [ d16 ] 
 \dblc c4 \gre b8 [ \grd c8 ] \grg a8 [ \grd c8 \grg e8 g8 ] 
 \grA f8 [ A8 c e8 ] \dble e4 \Gthrwd d8 g  \bar "|." \break 

    % Part 5
 \tdblf f4 \grg e8 [ d8 ] A4 \hdblf f8. [ g16 ] 
 \dblA A4 g8 [ \grA f8 ] \dblf f4 \hslure e8. [ f16 ] 
 \dble e4 \dbld d8 [ c8 ] \grA g4 \hslure e8. [ f16 ] 
 \dblg g4 \tdblf f8 [ e8 ] \dble e4 d8. [ g16 ]  \break

 
 \tdblf f4 \grg e8 [ d8 ] A4 \hdblf f8. [ g16 ] 
 \dblA A4 g8 [ \grA f8 ] \dblf f4 \hslure e8. [ f16 ] 
 \dble e4 \dbld d8 [ c8 ] \grA g4 \hslure e8. [ f16 ] 
 \dblg g4 \tdblf f8 [ e8 ] \dble e4 \Gthrwd d8 a \bar "|." \break 
    
    % Part 6
 \thrwd d4 \gre a8 [ d8 ] \dblf f4 \grg d8 [ f8 ] 
 \grA g8 [ f8 \dble e8 d8 ] \dbld d4 \hslurc c8. [ d16 ] 
 \dblc c4 \gre a8 [ \grd c8 ] \dble e4 \grg c8 [ e8 ] 
 \grA g8 [ e8 \dbld d8 c8 ] \dble e4 \Gthrwd d8. [ a16 ]  \break

 
 \thrwd d4 \gre a8 [ d8 ] \dblf f4 \grg d8 [ f8 ] 
 \grA g8 [ f8 \dble e8 d8 ] \dbld d4 \hslurc c8. [ d16 ] 
 \grg c8 [ \grd a8 \dbld d8 b8 ] \dble e8 [ c8 \grg f8 d8 ] 
 \grA g8 [ e8 \dbld d8 c8 ] \dble e4 \Gthrwd d8 \bar "|." \break 

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