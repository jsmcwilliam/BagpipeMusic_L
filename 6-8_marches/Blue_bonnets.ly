\version "2.18.0"

%{Running this template always results in the following warning:
  Cannot find property type-check for `print-function' (backend-type?).  
  Perhaps a typing error? 
  Warning: skipping assignment. It seems to have its source in "bagpipe_new.ly"
  but does not have any adverse effects
%}
%   	1. Comment out generation of midi files before compiling book
%  	2. Comment out top section when compiling book.........................
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
    \time 6/8	    %adjust time to suit specific tunes
    \tempo 4 = 140  % adjust speed accordingly for playback
    \bagpipeKey
   \set Staff.midiInstrument = #"bagpipe"  %is set in bagpipe_new.ly (\layout)
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
 \grg a4 \taor a8 \dblc c4 e8 
 A4 \grip A8 \grg A4 e8 
 \grg f4 \grip f8 \grg f16 [ A8. f8 ] 
 \dble e8. [ c16 \grG a8 ] \dblb b4 \grd c8 \break  

 \grg a4 \taor a8 \dblc c4 e8 
 A4 \grip A8 \grg A4 e8 
 \dblf f8. [ e16 d8 ] \grg c4 \grip e8 
    \grg f16 [ A8. c8 ] \dblb b4 \grG a8 \break }

    % Part 2
    \repeat volta 2 {
 \grg a8. [ \grd c16 e8 ] \dble e8. [ c16 e8 ] 
 \dblf f8. [ e16 d8 ] \dblc c8. [ b16 \grG a8 ] 
 \grg a8. [ \grd c16 e8 ] \grg f8. [ g16 A8 ] 
 a8. [ b16 \grip c8 ] \dblb b4 \grG a8  \break

 \grg a8. [ \grd c16 e8 ] \dble e8. [ c16 e8 ] 
 \dblf f8. [ e16 d8 ] \dblc c8. [ b16 \grG a8 ] 
 A8. [ g16 f8 ] \dble e8. [ c16 e8 ] 
    \grg f16 [ A8. c8 ] \dblb b4 \grG a8 \break }
  
    % Part 3
    \repeat volta 2 {
\thrwd d4. \slurd d4. 
 \grg d16 [ f8. e8 ] \dbld d8. [ b16 \grG a8 ] 
 \dbld d8. [ b16 \grG b8 ] \dblb b4 \grG a8 
 A8. [ g16 f8 ] \dble e4 d8  \break

 \thrwd d4. \slurd d4. 
 \grg d16 [ f8. e8 ] \dbld d8. [ b16 \grG a8 ] 
 \dbld d8. [ c16 b8 ] \grg a8. [ b16 c8 ] 
    \thrwd d8. [ e16 f8 ] \dble e4 d8 \break }

    % Part 4
    \repeat volta 2 {
 \slurd d8. [ f16 A8 ] \grg A8. [ f16 d8 ] 
 A8. [ g16 f8 ] \dblf f8. [ e16 f8 ] 
 \thrwd d8. [ f16 A8 ] \grg A8. [ f16 d8 ] 
 \slurd d8. [ e16 f8 ] \dble e4 d8  \break

 \slurd d8. [ f16 A8 ] \grg A8. [ f16 d8 ] 
 A8. [ g16 f8 ] \dblf f8. [ e16 f8 ] 
 \dbld d8. [ c16 b8 ] \grg a8. [ b16 c8 ] 
    \thrwd d8. [ e16 f8 ] \dble e4 d8 \break }
    

    } %end staff
    
  \header {
    meter = "March"
    piece = "Blue Bonnets over the Border"
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