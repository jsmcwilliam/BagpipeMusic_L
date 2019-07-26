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

\include "bagpipe.ly"
%\include "bagpipe_new.ly" 	%(Replaces bagpipe.ly)
%\include "bagpipe_extra.ly"	%(Extras)
\include "../../Includes/BP_format.ly" 	
                                %(Tagline: Copied by John McWilliam, date)
				%(Paper format A4, Landscape)
				%(Header: piece, meter and composer)
				%(Otherwise Lilypond subtitle)
%to here..........................................................
%}

\score {

    \new Staff  {
    \time 3/4	    %adjust time to suit specific tunes
    \tempo 4 = 80   % adjust speed accordingly for playback
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
    \grg a8. [ \grd c16 ] \dble e4 \gra e4 
    \dblf f8. [ d16 ] \dble e4 \grd c4 
    \dbld d8. [ c16 ] \grG a4. \grd c8 
    \dble e8. [ c16 ] \dblb b2  %\break
 
    \grg a8. [ \grd c16 ] \dble e4 \gra e4 
    \dblf f8. [ d16 ] \dble e4 \grd c4 
    \grg a8. [ \grd c16 ] \dble e4. b8 
    \dbld d16 [ c8. ] \grG a2 %\bar ":|:" 
    \break	    
    } %end repeat
    
    % Part 2
    \repeat volta 2 {
     \grg f8. [ e16 ] \grg f4. \dblg g8 
     \dblA A8. [ f16 ] \dble e4 \grd c4 
     \dbld d8. [ c16 ] \grG a4. \grd c8 
     \dble e8. [ c16 ] \dblb b2  %\break
 
     \dble e8. [ d16 ] \dblc c4. d8 
     \grg e8. [ f16 ] \dble e4 \grd c4 
     \grg a8. [ \grd c16 ] \dble e4. b8 
     \dbld d16 [ c8. ] \grG a2 %\bar ":|:" 
     \break	    
    } %end repeat
    
    % Part 3
    \repeat volta 2 {
     \grg b8. [ c16 ] \thrwd d4 \dbld d4 
     \dble e8. [ d16 ] d4 \gre c4 
     \dblc c4 a4. \grd c8 
     \dble e8. [ c16 ] \dblb b2  %\break

     \thrwd d8. [ e16 ] \grg f4 \gre f4 
     \dble e4 \dbld d4 \gre c4 
     \grg a8. [ \grd c16 ] \dble e4. b8 
     \dbld d16 [ c8. ] \grG a2 %\bar ":|:" 
     \break  	    
    } %end repeat
    
    % Part 4
    \repeat volta 2 {
     \dblA A8. [ g16 ] \grA f4. \dblg g8 
     \dblA A8. [ f16 ] \dble e4 \grd c4 
     \grg f8. [ e16 ] \grg c4. f8 
     \dble e8. [ c16 ] \dblb b2  %\break

 
     \dblc c4 a4. \grd c8 
     \grg e8. [ f16 ] \dble e4 \grd c4 
     \grg a8. [ \grd c16 ] \dble e4. b8 
     \dbld d16 [ c8. ] \grG a2 %\bar ":|" 
     \break	    
    } %end repeat

    } %end staff
    
  \header {
    meter = "March"
    piece = "Kilworth Hills"
    composer = "P/M G.S. McLennan"
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