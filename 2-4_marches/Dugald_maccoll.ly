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
%{
% #(allow-volta-hook "|") % enables volta hook outside repeat context
% from here
%
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
    \partial 8 e8 
 \grg a8 [ \taor a16. e32 ] \dbld d16. [ c32 \grg b32 \grd a16. ] 
 \grg c32 [ e16. A16. e32 ] \grg f8 [ \grip e16. c32 ] 
 \grg G16. [ b32 \grg d16. G32 ] \dblb b8 [ \grg b32 \grd a16. ] 
 \grA g16. [ f32 \grg e16. d32 ] \grg b16. [ c32 \grg d16. b32 ]  \break

 \grg c32 [ e16. \grg c32 \grd a16. ] \dblc c8 [ \grg b32 \grd a16. ] 
 \grg c32 [ e16. \grg f16. g32 ] A16. [ e32 \grg f16. e32 ] 
 \thrwd d8 [ \gre G16. \grd b32 ] \dble e16. [ a32 \grg f16. e32 ] 
 \dblc c8 [ \gre a8 ] \wbirl a8 
 \break
    } %end repeat

    % Part 2
    \repeat volta 2 {
 \grg c16. [ d32 ] 
 \dble e8 [ \dblA A8 ] \birl a8 [ \grg c16. d32 ] 
 \dble e16. [ c32 A16. g32 ] \grA f16. [ e32 \grg d16. c32 ] 
 \thrwd d8 [ \dblg g8 ] \tdblG G8 [ \grg b16. c32 ] 
 \grg d16. [ a32 \grA g16. f32 ] \dble e16. [ d32 ] 
 \times 2/3 {b16 ( c16 d16 )} 
 \break

 \dble e8 [ \dblA A8 ] \birl a8 [ \grg c16. d32 ] 
 \dble e16. [ c32 A16. g32 ] \grA f16. [ e32 \grg d16. c32 ]
 \thrwd d8 [ \gre G16. \grd b32 ] \dble e16. [ a32 \grg f16. e32 ] 
 \dblc c8 [ \gre a8 ] \wbirl a8 
 \break
    } %end repeat

    % Part 3
    \repeat volta 2 {
 A16. [ f32 ] 
 \dble e8 [ \grg a16. \grd c32 ] \grg a8 [ \taor a16. \grd c32 ] 
 \dble e8 [ \grg a16. \grd c32 ] \dble e16. [ a32 \grg f16. e32 ] 
 \thrwd d8 [ \gre G16. \grd b32 ] \grg G16. [ \grd G32 \gre G16. \grd b32 ] 
 \thrwd d8 [ \grg b16. c32 ] \grg d16. [ G32 \grg f16. d32 ]  \break

 \dble e8 [ \grg a16. \grd c32 ] \grg a8 [ \taor a16. \grd c32 ] 
 \dble e8 [ \grg c16. d32 ] \grg e16. [ A32 \grA f32 A16. ] 
 \thrwd d8 [ \gre G16. \grd b32 ] \dble e16. [ a32 \grg f16. e32 ] 
 \dblc c8 [ \gre a8 ] \wbirl a8
 \break
    } %end repeat

    % Part 4
    \repeat volta 2 {
 \grg c16. [ d32 ] 
 \dble e8 [ A16. c32 ] \grg c32 [ e16. \grg a16. d32 ] 
 \grg c32 [ e16. A16. c32 ] \dble e8 [ \grg b16. c32 ] 
 \thrwd d8 [ g16. b32 ] \grg b32 [ d16. \grg G16. \grd c32 ] 
 \grg b32 [ d16. g16. b32 ] \thrwd d8 [ \grg c16. d32 ]  
 \break
    } %end repeat

    \alternative {
    	  { \dble e8 [ A16. c32 ] \grg c32 [ e16. \grg a16. d32 ] 
    	    \grg c32 [ e16. A16. c32 ] \dble e8 [ \grg f16. e32 ] 
    	    \thrwd d8 [ \gre G16. \grd b32 ] \dble e16. [ a32 \grg f16. e32 ] 
    	    \dblc c8 [ \gre a8 ] \wbirl a8 
    	    \break
    }
 
    	  {  \set Score.measureLength = #(ly:make-moment 5/8)
    	    \dble e8 [\grg f16. g32] A16. [e32 \grg f16. d32]  
    	    \grg c32 [ e16. \grg c32 \grd a16. ] \dble e8 [ \grg f16. e32 ] 
    	    \thrwd d8 [ \gre G16. \grd b32 ] \dble e16. [ a32 \grg f16. e32 ] 
    	    \dblc c8 [ \gre a8 ] \wbirl a8 
    	    \bar "|." \break
 	  }
    } %end alternatives

    } %end staff
    
  \header {
    meter = "March"
    piece = "Dugald MacColl's Farewell to France"
    composer = "John MacColl"
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