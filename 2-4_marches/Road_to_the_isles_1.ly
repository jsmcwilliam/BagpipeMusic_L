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
#(allow-volta-hook "||") % enables volta hook outside repeat context
%\defineBarLine ".|:-|." #'("|." ".|:" "|.")

% from here
%{
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a4" 'landscape)

\include "bagpipe.ly"           %(Original)
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
    \time 2/4	    %adjust time to suit specific tunes
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
    \partial 8 {a16 [ d16 ]}  
 \dblf f4 A16. [ f32 \grg e16. f32 ] 
 \thrwd d16. [ e32 \grg d16. c32 ] \dblb b8 [ \grg d16 c16 ] 
 \grg b32 [ \grd G16. \grg b16. c32 ] \thrwd d16. [ e32 \grg f32 A16. ] 
 \set Score.measureLength = #(ly:make-moment 3/8)
 \hdble e4 \gra e8 \break
 
 \set Score.repeatCommands = #'((volta "2. --2"))  
 \set Score.measureLength = #(ly:make-moment 1/8)
 \grg a16 [ d16 ] 
\set Score.measureLength = #(ly:make-moment 2/4) 
 \dblf f4 A16. [ f32 \grg e16. f32 ] 
 \thrwd d16. [ e32 \grg d16. c32 ] \dblb b8 [ \dblg g8 ] 
 \grA f32 [ A16. \hdblf f16. d32 ] \grg a16. [ \grd c32 \dble e16. c32 ] 
 \set Score.measureLength = #(ly:make-moment 3/8)
 \thrwd d4 \wslurd d8 \set Score.repeatCommands = #'((volta #f)) 
 \break
    } %end repeat

    % Part 2
    \repeat volta 2 {
 \set Score.measureLength = #(ly:make-moment 1/8)
 \grg f16 [ g16 ] 
 \set Score.measureLength = #(ly:make-moment 2/4)
 \dblA A16. [ a32 \wbirl a8 ] \dblf f16. [ a32 \wbirl a8 ] 
 \thrwd d16. [ e32 \grg d16. c32 ] \dblb b8 [ \grg d16 c16 ] 
 \grg b32 [ \grd G16. \grg b16. c32 ] \thrwd d16. [ e32 \grg f32 A16. ] 
 \set Score.measureLength = #(ly:make-moment 3/8)
 \hdble e4 \gra e8 \break
 
 \set Score.measureLength = #(ly:make-moment 1/8)
 \set Score.repeatCommands = #'((volta "1., 2-3"))  
 \grg f16 [ g16 ]
 \set Score.measureLength = #(ly:make-moment 2/4)
 \dblA A16. [ a32 \wbirl a8 ] \dblf f16. [ a32 \wbirl a8 ] 
 \thrwd d16. [ e32 \grg d16. c32 ] \dblb b8 [ \dblg g8 ] 
 \grA f32 [ A16. \hdblf f16. d32 ] \grg a16. [ \grd c32 \dble e16. c32 ]
 \set Score.measureLength = #(ly:make-moment 3/8)
 \thrwd d4 \wslurd d8 \break
 \set Score.repeatCommands = #'((volta #f)) 
 } %end repeat

    % Part 3
    \repeat volta 2 {
 \set Score.measureLength = #(ly:make-moment 1/8)
 \grg a16 [ d16 ] 
 \set Score.measureLength = #(ly:make-moment 2/4)
 \grg f16. [ a32 A16. f32 ] \grg d16. [ a32 b16. c32 ] 
 \thrwd d16. [ e32 d16. c32 ] \dblb b8 [ \grg d16 c16 ] 
 \grg b32 [ \grd G16. \grg b16. c32 ] \thrwd d16. [ e32 \grg f32 A16. ] 
 \set Score.measureLength = #(ly:make-moment 3/8)
 \hdble e4 \gra e8 \break 
    } %end repeat
    
    \alternative {{
    	    \set Score.measureLength = #(ly:make-moment 1/8)
    	    \grg a16 [ d16 ] 
    	    \set Score.measureLength = #(ly:make-moment 2/4)
    	    \grg f16. [ a32 A16. f32 ] \grg d16. [ a32 b16. c32 ] 
    	    \thrwd d16. [ e32 d16. c32 ] \dblb b8 [ \dblg g8 ] 
    	    \grA f32 [ A16. \hdblf f16. d32 ] \grg a16. [ \grd c32 
    	    \dble e16. c32 ] 
    	    \set Score.measureLength = #(ly:make-moment 3/8)
   	    \thrwd d4 \wslurd d8 \break
    	    }
    
    	   {
    	    \set Score.measureLength = #(ly:make-moment 1/8)
    	    \grg f16 g
    	    \set Score.measureLength = #(ly:make-moment 2/4 )
    	    \dblA A16. [ a32 \wbirl a8 ] \dblf f16. [ a32 \wbirl a8 ] 
    	    \thrwd d16. [ e32 ] \grg d16. [ c32 ] \dblb b8 [ \dblg g8 ] 
    	    \grA f32 [ A16. \hdblf f16. d32 ] \grg a16. [ \grd c32 ] 
    	    \dble e16. [ c32 ] 
    	    \set Score.measureLength = #(ly:make-moment 3/8)
   	    \thrwd d4 \wslurd d8 \bar ".|:" 
    		}}


    % Part 4
    \repeat volta 2 {
% \bar ".|:"
 \set Score.measureLength = #(ly:make-moment 1/8)
 \grg f16 [ g16 ] 
 \set Score.measureLength = #(ly:make-moment 2/4)
 \dblA A16. [ a32 f16. e32 ] \grg d16. [ a32 b16. c32 ] 
 \thrwd d16. [ e32 d16. c32 ] \grg b32 [ \grd a16. \grg b16. c32 ] 
 \grg d16. [ c32 d16. e32 ] \grg f16. [ d32 \grg f32 A16. ] 
 \hdble e4 \gra e8  %\break
    } %end repeat
    
    \alternative {{
 \grg f16 [ g16 ] 
 \set Score.measureLength = #(ly:make-moment 2/4)
 \dblA A16. [ a32 f16. e32 ] \grg d16. [ a32 b16. c32 ] 
 \thrwd d16. [ e32 d16. c32 ] \dblb b8 [ \dblg g8 ] 
 \grA f32 [ A16. \hdblf f16. d32 ] \grg a16. [ \grd c32 \dble e16. c32 ] 
 \set Score.measureLength = #(ly:make-moment 3/8)
 \thrwd d4 \wslurd d8 %\break 
 	    }
 	     
 	    {\set Score.measureLength = #(ly:make-moment 1/8)
 \grg a16 [ d16 ] 
 \set Score.measureLength = #(ly:make-moment 2/4)
 \grg f16. [ a32  A16. f32 ] \grg d16. [ a32 b16. c32 ] 
 \thrwd d16. [ e32 d16. c32 ] \dblb b8 [ \dblg g8 ] 
 \grA f32 [ A16. \hdblf f16. d32 ] \grg a16. [ \grd c32 \dble e16. c32 ] 
 \set Score.measureLength = #(ly:make-moment 3/8)
 \thrwd d4 \wslurd d8 \bar "|."
    \break }}

    } %end staff
    
  \header {
    meter = "March"
    piece = "The Road to the Isles"
    composer = "John MacLellan"
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