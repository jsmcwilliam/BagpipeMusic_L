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

\include "bagpipe.ly"
\include "../../bagpipe_new.ly" %(Replaces bagpipe.ly)
\include "../../BP_format.ly" 	%(Tagline: Copied by John McWilliam, date)
				%(Paper format A4, Landscape)
				%(Header: piece, meter and composer)
				%(Otherwise Lilypond subtitle)
%to here..........................................................
%}

\score {

    \new Staff  {
    \time 2/4	    %adjust time to suit specific tunes
    \tempo 4 = 80   % adjust speed accordingly for playback
%    \bagpipeKey
    \hideKeySignature
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
    \partial 8 {\grg b32 [ d16. ]} 
 \dble e8 [ \gra e16. d32 ] \grg d16. [ e32 \gra e16. d32 ] 
 \grg b16. [ e32 \gra e16. d32 ] \dblb b8 [ \gre a8 ] 
 \grg G16. [ \grd G32 \gre G16. \grd b32 ] \grg G8 [ \grd b8 ] 
 \grg G16. [ \grd b32 \grG b16. d32 ] \dblb b8 [ \thrwd d8 ]  \break

 \set Score.repeatCommands = #'((volta "2. --1,2"))  
 \dble e8 [ \gra e16. d32 ] \grg d16. [ e32 \gra e16. d32 ] 
 \grg b16. [ e32 \gra e16. d32 ] \dblb b8 [ \grg a32 \grd G16. ] 
 \grg a16. [ \grd a32 \gre a16. \grd b32 ] \dble e8 [ \dbld d16. b32 ] 
 \grg a4 \wbirl a8 
 \set Score.repeatCommands = #'((volta #f)) 
 \break
    } %end repeat

    % Part 2
    \repeat volta 2 {
 \grg b32 [ d16. ] 
 \dble e8 [ \dblg g8 ] \dblA A8 [ e16. f32 ] 
 \grA g16. [ f32 \grg e16. d32 ] \dblb b8. [ \gre a16 ] 
 \grg G16. [ \grd G32 \gre G16. \grd b32 ] \grg G8 [ \grd b8 ] 
 \grg G16. [ \grd b32 \grG b16. d32 ] \dblb b8 [ \thrwd d8 ]  \break

 \set Score.repeatCommands = #'((volta "1"))  
 \grg e16. [ f32 \grA g16. e32 ] \dblA A8 [ \grip A8 ] 
 g16. [ f32 \grg e16. d32 ] \dblb b8 [ \grg a32 \grd G16. ] 
 \grg a16. [ \grd a32 \gre a16. \grd b32 ] \dble e8 [ \dbld d16. b32 ] 
 \grg a4 \wbirl a8 
 \set Score.repeatCommands = #'((volta #f)) 
\break
    } %end repeat
    
    % Part 3
    \repeat volta 2 {
 \grg b32 [ d16. ] 
 \dble e8 [ \grg a8 ] \wbirl a8 [ \grg b32 d16. ] 
 \grg e32 [ g16. \grA e16. d32 ] \dblb b8 [ \gre a32 \grd b16. ] 
 d32 [ \gre G16. \dblG G8 ] \grg b32 [ \grd a16. \grg b32 \grd G16. ] 
 \grg b32 [ d16. \grg G16. d32 ] \dblb b8 [ \thrwd d8 ]  \break

 \set Score.repeatCommands = #'((volta "2 --3,4"))  
 \dble e16. [ a32 \dbla a8 ] \grg b32 [ \grd a16. \grg b32 d16. ] 
 \grg e32 [ g16. \grA d32 e16. ] \dblb b8 [ \grg a32 \grd G16. ] 
 \grg a16. [ \grd a32 \gre a16. \grd b32 ] \dble e8 [ \dbld d16. b32 ] 
 \grg a4 \wbirl a8 
 \set Score.repeatCommands = #'((volta #f)) 
 \break
    } %end repeat
    
    % Part 4
    \repeat volta 2 {
 \grg b32 [ d16. ] 
 \dble e8 [ \gra e16. d32 ] \dble e8 [ \gra e16 f16 ] 
 \grA g16. [ f32 \grg e16. g32 ] \tdblb b8 [ \gre a8 ] 
 \grg G16. [ \grd G32 \gre G16. \grd b32 ] \grg G8 [ \grd b8 ] 
 \grg G16. [ \grd b32 \grG b16. d32 ] \dblb b8 [ \thrwd d8 ]  \break

 \set Score.repeatCommands = #'((volta "1"))  
 \dble e8 [ \gra e16. d32 ] \dble e8 [ \gra e16 f16 ] 
 \grA g16. [ f32 \grg e16. d32 ] \dblb b8 [ \grg a32 \grd G16. ] 
 \grg a16. [ \grd a32 \gre a16. \grd b32 ] \dble e8 [ \dbld d16. b32 ] 
 \grg a4 \wbirl a8 
 \set Score.repeatCommands = #'((volta #f)) 
 \break
    } %end repeat

    } %end staff
    
  \header {
    meter = "Hornpipe"
    piece = "The Man From Skye"
    composer = "P/M Donald MacLeod Q.O.H."
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