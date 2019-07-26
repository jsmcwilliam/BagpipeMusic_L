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
 #(allow-volta-hook "||") % enables volta hook outside repeat context
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
    \time 6/8	    %adjust time to suit specific tunes
    \tempo 4 = 80   % adjust speed accordingly for playback
    \hideKeySignature
    \defineBarLine ".|:-|." #'("|." ".|:" "|.")
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
    	\partial 8 {\grg f16. [ e32 ]  }
    	\thrwd d8 [ \gre a8 ] \dblb b8 [ \gre a8 ]  
    	\thrwd d8 [ \gre a16. d32 ] \dblf f4  
    	\dble e8 [ g16. e32 ] \dblc c8 [ \dble e16. c32 ]  
    	\grg a16. [ \grd c32 \grg e16. f32 ] \dblg g8 [ \grA f16. e32 ]  
    	\break
  
    	\thrwd d8 [ \gre a8 ] \dblb b8 [ \gre a8 ]  
    	\thrwd d8 [ \gre a16. d32 ] \dblf f8 [ \grg e16. f32 ]  
    	\dblg g8 [ \grA e16. c32 ] \grg a16. [ \grd c32 \grg e16. g32 ]  
    	\hdblf f8 [ d8 ] \wslurd d8 
        \bar ".|:-|."
     	\break	
    } %end repeat
    
    % Part 2
    \repeat volta 2 {
    	\grg f16 [ g16 ]  
    	\dblA A8. [ g16 ] \hdblf f8 [ d ]  
    	\gre a8 [ \thrwd d16. f32 ] \dblA A8 [ e16. f32 ]  
    	\dblg g8. [ e16 ] \dblc c8 [ \dble e16. c32 ]  
    	\grg a16. [ \grd c32 \grg e16. f32 ] \dblg g8    
%    	\break
    } %end repeat
    
    \alternative { {
    	\grA f16. g32
    	\break
   	\dblA A8. [ g16 ] \hdblf f8 [ d ]  
    	\gre a8 [ \thrwd d16. f32 ] \dblA A8 [ e16. f32 ]  
    	\dblg g8 [ \grA e16. c32 ] \grg a16. [ \grd c32 \grg e16. g32 ]  
    	\hdblf f8 [ d8 ] \wslurd d8  
    	\break }

    	{ \grA f16. g32
    	A16. [ g32 \grA g16. f32 ] \grg f16. [ e32 \grg e16. d32 ]  
    	\grg d16. [ c32 \grg c32 \grd b16. ] \dblA A8 [ e16. f32 ]  
    	\dblg g8 [ \grA e16. c32 ] \grg a16. [ \grd c32 \grg e16. g32 ]  
    	\tdblf f8 [ d ] \wslurd d8 
        \bar ".|:-|."
    	\break	}
    } % end alternative
    
    % Part 3
    \repeat volta 2 {
    	\grg a8  
    	\thrwd d8 [ \grg c16. d32 ] \dblb b8 [ \gre a8 ]  
    	\thrwd d8 [ \gre a16. d32 ] \dblf f4  
    	\dble e8 [ g16. e32 ] \dblc c8 [ \dble e16. c32 ]  
    	\grg a16. [ \grd c32 \grg e16. f32 ] \dblg g8 [ \grA f16. e32 ]   
    	\break
  
    	\thrwd d8 [ \grg c16. d32 ] \dblb b8 [ \gre a8 ]  
    	\thrwd d8 [ \gre a16. d32 ] \dblf f8 [ \grg e16. f32 ]  
    	\dblg g8 [ \grA e16. c32 ] \grg a16. [ \grd c32 \grg e16. g32 ]  
    	\hdblf f8 [ d8 ] \wslurd d8 \bar "|." 
    	\break	
    } %end repeat
    
    % Part 4 
    \repeat volta 2 {
    	\grg f16. [ g32 ]  
    	\dblA A8 [ \grg A16. g32 ] \hdblf f8 [ \thrwd d8 ]  
    	\grg f16. [ g32 A16. g32 ] \hdblf f8 [ \grg e16. f32 ]  
    	\dblg g8 [ \grA g16. e32 ] \dblc c8 [ \dble e16. c32 ]  
    	\grg a16. [ \grd c32 \grg e16. f32 ] \dblg g8
    } %end repeat
    
    \alternative {
      { \grA f16. g32 
    	\break
    	\dblA A8 [ \grg A16. g32 ] \hdblf f8 [ \thrwd d8 ]  
    	\grg f16. [ g32 A16. g32 ] \hdblf f8 [ \grg e16. f32 ]  
    	\dblg g8 [ \grg e16. c32 ] \grg a16. [ \grd c32 \grg e16. g32 ]  
    	\hdblf f8 [ d8 ] \wslurd d8    
    	\break
    	    }
    	{
    	\grA f16. e32
    	\grg d16. [ c32 \grg c16. b32 ] \grg b16. [ a32 \grg a32 \grd G16. ]  
    	\Gthrwd d8 [ \gre a16. d32 ] \dblf f8 [ \grg e16. f32 ]  
    	\dblg g8 [ \grA e16. c32 ] \grg a16. [ \grd c32 \grg e16. g32 ]  
    	\hdblf f8 [ d8 ] \wslurd d8 \bar "|."
    	\break
        } }
%}        
    } %end staff
    
  \header {
    meter = "Polka"
    piece = "Royal Scots Polka"
    composer = "P/M Willie Denholm"
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