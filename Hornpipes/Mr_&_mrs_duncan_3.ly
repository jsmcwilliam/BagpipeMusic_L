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
    \partial 8 {\grg d16 b}
    \grg a d \grG d e \grg e d \grG d f
    g a \grg f a \grg e d \grG d b
    \grg G b \grg d b \grg a d \grG d a~
    a \grg c \grG c d \dble e8
    \set Score.repeatCommands = #'((volta "2. --2"))
    \grg d16 b \break

    \grg a d \grG d e \grg e d \grG d f
    g a \grg f a \grg e d \grG d b
    \grg G b \grg d b \grg a d \grG d a
    \grg c d \grG d c \thrwd d8
    \set Score.repeatCommands = #'((volta #f)) 
    \break
    } %end repeat

    % Part 2
    \repeat volta 2 {
    \grg f16 g
    A a \grA g a \grg f d \grG d f
    \dblg g8 \grA f16 d \grg e d \grG d b
    \grg G b \grg d b \grg a d \grG d a~
    a \grg c \grG c d \dble e8
    \set Score.repeatCommands = #'((volta "1."))
    \grg f16 g \break

    A a \grA g a \grg f d \grG d f
    \dblg g8 f16 d \grg e d \grG d b
    \grg G b \grg d b \grg a d \grG d a
    \grg c d \grG d c \thrwd d8
    \set Score.repeatCommands = #'((volta #f)) 
    \break
    } %end repeat
%{    
    % Part 3
    \repeat volta 2 {
    \grg d16 e
    \grg e [ f \gre f \gbirl a~ ] a f \grg f a
    g a \grg f a \grg e d \grG d e
    \grg e [ f \gre f \gbirl a~ ] a f \grg f a
    \grg e [ a \gbirl a8 ] \grg e16 a \grg d e
    \break

    \grg f a \grG a \grg a~ a f \grg f b
    \dblg g8 \grA f16 d \grg e d \grG d b
    \grg G b \grg d b \grg a d \grc d a
    \grg c d \grG d c \thrwd d8
    \break
    } %end repeat

    % Part 4
    \grg f16 g
    A f \grG f \grg f~ f A \grg A f
    \dblg g8 \grA f16 d \grg e d \grg e f
    \grA g d a \grg f d a \grg e d
    a e \grg d a \grg e a \grg d e
    \break
    
    A f \grG f \grg f~ f A \grg A f
    \dblg g8 \grA f16 d \grg e d \grG d b
    \grg G b \grg d b \grg a d \grG d a
    \grg c d \grG d c \thrwd d8 \grg f16 g
    \break

    A f \gre f \grg f~ f A \grg A f
    \dblg g8 \grA f16 d \grg e a \grg d b
    \grg G \grd b \grG b a \grd c \grG c \grg b d
    \grc d c \grg e \grG e \grg d f \gre f g
    \break

    A g \grf g \grA g f \gre f \grg f e
    \gra e \grg e d \grc d \grg d c \grG c b
    \grg G b d b \grg a d \grc d a
    \grg c d \grc d c \thrwd d8
    \bar "|."
%}    
    } %end staff
    
  \header {
    meter = "Hornpipe"
    piece = "Mr. & Mrs. Duncans Golden Wedding"
    composer = "Gordon Duncan"
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