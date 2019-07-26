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
    \time 6/8	    %adjust time to suit specific tunes
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
	\partial 8 e8
	\grg a8. [ e16 \gra e8 ] \dble e4.  
	\grg a8. [ e16 \gra e8 ] \dbld d8. [ b16 g8 ]  
	\grA G8. [ b16 d8 ] \dbld d8. [ b16 d8 ]  
	\grg e16 [ g8. \grA G8 ] \dblb b8. [ \grg a16 \grd G8 ]   
	%\break
 
	\grg a8. [ e16 \gra e8 ] \dble e4. 
	\grg a8. [ e16 \gra e8 ] \dbld d8. [ b16 A8 ] 
	\grf g8. [ f16 \grg e8 ] \thrwd d8. [ \grg e16 g8 ] 
	\grA e8. [ d16 b8 ] \grG a4 \bar ":..:" 
	\break	
    } % end repeat
       
    % Part 2
      \set Score.repeatCommands = #'(start-repeat)
      \set Score.measureLength = #(ly:make-moment 1/8)
    	 \grd b8 
      \set Score.measureLength = #(ly:make-moment 6/8)
    	 \grg a8. [ A16 \grg A8 ] \grg A4. 
    	 a8. [ A16 \grg A8 ] \grf g8. [ e16 A8 ] 
    	 g8. [ f16 \grg e8 ] \thrwd d8. [ \grg e16 f8 ] 
    	 \dblg g8. [ G16 d8 ] \dblb b8. [ \grg a16 \grd G8 ]  

    	 \set Score.repeatCommands = #'((volta "1."))
    	 \grg a8. [ A16 \grg A8 ] \grg A4. 
    	 a8. [ A16 \grg A8 ] \grf g8. [ e16 A8 ] 
    	 g8. [ f16 \grg e8 ] \thrwd d8. [ \grg e16 g8 ] 
         \set Score.measureLength = #(ly:make-moment 5/8)
    	 \grA e8. [ d16 b8 ] \grG a4
    	 \set Score.repeatCommands = #'((volta #f) (volta "2. --2,4") end-repeat)       
    	 \break    	    
    
         \set Score.measureLength = #(ly:make-moment 6/8)
         \dble e4. \birl a4 e8
         \grg a8. b16 d8 \dble e4 A8
         \grf g8. f16 \grg e8 \thrwd d8. \grg e16 g8
         \set Score.measureLength = #(ly:make-moment 5/8)
         \grA e8. d16 b8 \grG a4 \bar "|."
         \set Score.repeatCommands = #'((volta #f)) 

         \override Score.BarLine.break-visibility = #end-of-line-invisible
         \stopStaff 
        % Increasing the unfold counter will expand the staff-free space
        \repeat unfold 3 { s4 s4 }  
%      	\once \hide Score.BarLine
      	\break 	
      	\startStaff  % Resume bar count and show staff lines again  
    
    % Part 3
    \repeat volta 2 {
    	 \set Score.measureLength = #(ly:make-moment 1/8)
    	 e8 
    	 \set Score.measureLength = #(ly:make-moment 6/8)
    	 \gbirl a4. \dble e4. 
    	 \birl a4 e8 \dbld d8. [ b16 g8 ] 
    	 \tdblb b4. \gre G4. 
    	 \grg e16 [ g8. G8 ] \dblb b8. [ \grg a16 \grd G8 ]  
    	 \revert Score.BarLine.break-visibility
    	 %\break
 
    	 \gbirl a4. \dble e4. 
    	 \birl a4 e8 \dbld d8. [ b16 A8 ] 
    	 \grf g8. [ f16 e8 ] \thrwd d8. [ \grg e16 g8 ] 
    	 \grA e8. [ d16 b8 ] \grG a4 %\bar ":|:" 
    	 \break    	       	    
    } %end repeat
    
    % Part 4
    \repeat volta 2 {
    	 b8 
    	 \grg a8. [ A16 a8 ] g8. [ \grA a16 A8 ] 
    	 a8. [ g16 \grA a8 ] A8. [ a16 A8 ] 
    	 \grf g8. [ f16 \grg e8 ] \thrwd d8. [ \grg e16 f8 ] 
    	 \dblg g8. [ G16 d8 ] \dblb b8. [ \grg a16 \grd G8 ]  
    	 %\break

    	 \set Score.repeatCommands = #'((volta "1."))
    	 \grg a8. [ A16 a8 ] g8. [ \grA a16 A8 ] 
    	 a8. [ g16 \grA a8 ] A8. [ a16 A8 ] 
    	 \grf g8. [ f16 \grg e8 ] \thrwd d8. [ \grg e16 g8 ] 
    	 \grA e8. [ d16 b8 ] \grG a4 %\bar ":|" 
    	 \set Score.repeatCommands = #'((volta #f))
    	 \break
    } %end repeat

    } %end staff
    
  \header {
    meter = "March"
    piece = "Murdo MacKenzie of Torridon"
    composer = "Bobby MacLeod"
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