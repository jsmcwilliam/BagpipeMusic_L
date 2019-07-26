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
    \grg c8. [ d16 ] \grg c [ b \grg a b ] 
    c [ \gre c \grG c d ] \grg c [ b \grg a c ] 
    \grd d8. [ e16 ] \grg d [ c \grg b c ] 
    \grg d [ G \grg b d ] \dble e [ d \grg b A ]  \break

    \grg c8. [ d16 ] \grg c [ b \grg a b ] 
    c [ \gre c \grG c d ] \grg c [ b \grg a8 ] 
    \grg G16 [ d \gra d G ] \shakee d8 [ \grg G16 d ] 
    \set Score.measureLength = #(ly:make-moment 5/8)
    \grg b [ e \gra e G ] 
    \set Score.repeatCommands = #'((volta "1"))  \grg a4 
    \once \hide Score.BarLine
    \once \hide Score.SpanBar
    \set Score.repeatCommands = #'((volta #f)(volta "2.") end-repeat) \grg a8 
    \set Score.repeatCommands = #'((volta #f)) 
    \break
    } %end repeat

    % Part 2
    \repeat volta 2 {
     \set Score.measureLength = #(ly:make-moment 1/8)
     c16 [ e ] 
     \set Score.measureLength = #(ly:make-moment 2/4)
     \dble e8. [ A16 ] f [ A e8~ ]
     e [ \dblA A ] f16 [ A e A ] 
     \grc d8. [ e16 ] \grg d [ c \grg b c ] 
     \grg d [ G \grg b d ] \dble e [ d \grg b d ]  \break

     \dble e8. [ A16 ] f [ A e A ] 
     c [ A e A ] f [ A e A ] 
     c [ d \gra d G ] \shakee d8 [ \grg G16 d ] 
     \grg b [ e \gra e G ] \grg a8
     \break
    } %end repeat

    % Part 4

    } %end staff
    
  \header {
    meter = "Hornpipe"
    piece = "Electric Chopsticks"
    composer = "R.S. MacDonald"
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