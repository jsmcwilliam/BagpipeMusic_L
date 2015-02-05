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

\score {

    \new Staff  {
    \time 2/4	    %adjust time to suit specific tunes
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
    \repeat volta 2 {
    \partial 8 {\grg a16. [ d32 ]} 
 \dblf f16. [ a32 \gbirl a8 ] \dblf f8 [ \grg e16. f32 ] 
 \grA g16. [ b32 \shakeb b8 ] \dblg g8 [ A16. g32 ] 
 \tdblf f16. [ a32 \gbirl a8 ] \dblf f8 [ \grg e16. f32 ] 
 \grA g16. [ b32 \dble e16. d32 ] \dbld d16. [ c32 \grd d16. e32 ]  \break

 \dblf f16. [ a32 \gbirl a8 ] \dblf f8 [ \grg e16. f32 ] 
 \grA g16. [ b32 \shakeb b8 ] \dblg g8 [ A16. g32 ] 
 \grA f16. [ g32 A16. f32 ] \grA g16. [ e32 \grg c16. d32 ] 
 \dble e8 [ d8 ] \wslurd d8 
 \break
    } %end repeat

    % Part 2
    \repeat volta 2 {
 \grg a16. [ d32 ] 
 \dblf f16. [ a32 \gbirl a8 ] \grg f16. [ g32 A16. f32 ] 
 \grA g16. [ b32 \shakeb b8 ] \grA g16. [ A32 A16. g32 ] 
 \tdblf f16. [ a32 \gbirl a8 ] \grg f16. [ g32 A16. f32 ] 
 \grA g16. [ b32 \dble e16. d32 ] \dbld d16. [ c32 \grd d16. e32 ]  \break

 \dblf f16. [ a32 \gbirl a8 ] \grg f16. [ g32 A16. f32 ] 
 \grA g16. [ b32 \shakeb b8 ] \dblg g8 [ A16. g32 ] 
 \grA f16. g32 A16. f32 ] \grA g16. [ e32 \grg c16. d32 ] 
 \dble e8 [ d8 ] \wslurd d8 
 \break
    } %end repeat

    % Part 3
    \repeat volta 2 {
 \grg a16. [ d32 ] 
 \dblf f16. [ a32 \gbirl a8 ] \dblf f16. [ a32 \grg e16. f32 ] 
 \grA g16. [ b32 \shakeb b8 ] \grA g16. [ b32 A16. g32 ] 
 \dblf f16. [ a32 \gbirl a8 ] \dblf f16. [ a32 \grg e16. f32 ] 
 \grA g16. [ b32 \dble e16. d32 ] \dbld d16. [ c32 \grd d16. e32 ]  \break

 \dblf f16. [ a32 \gbirl a8] \dblf f16. [a32 \grg e16. f32 ] 
 \grA g16. [ b32 \shakeb b8 ] \dblg g8 [ A16. g32 ] 
 \grA f16. [ g32 A16. f32 ] \grA g16. [e32 \grg c16. d32 ] 
 \dble e8 [ d8 ] \wslurd d8 
 \break
    } %end repeat

    % Part 4
    \repeat volta 2 {
    \set Score.measureLength = #(ly:make-moment 1/8)
 \grg a16. [ d32 ]
 \set Score.measureLength = #(ly:make-moment 4/8)
 \grg f16. [ a32 \gbirl a8 ] f16. [ a32 \gbirl a8 ] 
 \grA g16. [ a32 \gbirl a8 ] \grA g16. [ a32 \gbirl a8 ] 
 \grg f16. [ a32 \gbirl a8 ] f16. [ a32 \gbirl a8 ] 
 \grg e16. [ f32 e16. d32 ] \dbld d16. [ c32 \grd d16. e32 ]  
 \break
    } %end repeat

    \alternative {{
 \grg f16. [ a32 \gbirl a8 ] f16. [ a32 \gbirl a8 ] 
 \grA g16. [ b32 \shakeb b8 ] \dblg g8 [ A16. g32 ] 
 \grA f16. [ g32 A16. f32 ] \grA g16. [ e32 \grg c16. d32 ] 
 \set Score.measureLength = #(ly:make-moment 3/8)
 \dble e8 [ d8 ] \wslurd d8 
 \set Score.repeatCommands = #'((volta #f)) 
 	    \break }
{\set Score.measureLength = #(ly:make-moment 4/8)
 \grg f16. [ a32 \gbirl a8 ] \gbirl a8 [ \gbirl a8 ] 
 \grA g16. [ b32 \shakeb b8 ] \dblg g8 [ A16. g32 ] 
 \grA f16. [ g32 A16. f32 ] \grA g16. [ e32 \grg c16. d32 ]
 \set Score.measureLength = #(ly:make-moment 3/8)
 \dble e8 [ d8 ] \wslurd d8 \bar "|."  
 \set Score.repeatCommands = #'((volta #f)) 
    \break }} 

    } %end staff
    
  \header {
%    meter = "Hornpipe"
    piece = "Crossing the Minch"
    composer = "P/M Donald MacLeod, M.B.E."
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