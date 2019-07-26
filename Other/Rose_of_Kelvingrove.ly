\version "2.18.2"


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
%
#(ly:set-option 'point-and-click #t)
%#(set-default-paper-size "a4" 'landscape)

\include "bagpipe.ly" 		%(Origonal)
\include "../../Includes/BP_format.ly" 	
                                %(Tagline: Copied by John McWilliam, date)
				%(Paper format A4, Landscape)
				%(Header: piece, meter and composer)
				%(Otherwise Lilypond subtitle)
%to here..........................................................
%

\score {

    \new Staff  {
    \time 4/4	    %adjust time to suit specific tunes
    \tempo "Moderato" 4 = 84
%   \tempo 4 = 84  % adjust speed accordingly for playback
    
%    \bagpipeKey
    \hideKeySignature
    \compressFullBarRests
%   \set Staff.midiInstrument = #"bagpipe"  is set in bagpipe_new.ly (\layout)
%   \showKeySignature (for BMW compatibility)
%   \quarterBeaming % Sets the autobeamer to span quarter notes only. 
    		    % Use for fast music.
%   \halfBeaming    % Sets the autobeamer to span half notes. 
                    % Mostly used in reels.
%   \reelTime       % Reels are in allabreve time with half note beaming.
    \marchTime      % 4/4 marches are written with numerical time signature and 
                    % with quarter beaming.
%   \stemspace      % Add appropriate tweaks needed for piping grace notes 
                    % to look great.
%   \pgrace         % variant of above (\stemspace)
%   \bar ".|:"
    		
    % Part 1
    \partial 4 r4 {R1*3 }
    
    \tweak self-alignment-X #LEFT
    \mark \markup\fontsize #-1 "* (Strike)"

    R1 |r2 r4 \grg a8.d16
    
    \repeat volta 2 {
      \inStaffSegno
      \grg f8 e \grg d c \thrwd d4 \grg a8. d16 | \grg b2.~ b8 \grg b 
      \dblg g f \grg e d \grg b4 \grg G8. d16 |\grg c2. 
      \grg c8. b16 |\grg a4. d8 \grg f4 A8. g16 |\grA g2. d4
    }
    \alternative {
      {\dble e4. \gra e8 \grg f4 e8. d16 |\dble e2. \grg a8. d16}
    
      {\dble e4. \gra e8 \grg f8 e \grg d c |\thrwd d2. \grg a4}
    }
    
    \repeat volta 2 {
      \dblA A4. g8 \grA f4 e |\thrwd d2. b4 
      \dblg g4. f8 \grg e4 \thrwd d |\dbld d2 \dblc c4 \gre a
      \dblA A4. g8 \grA f4 e |\thrwd d4. g8 \grA g2
      \mark \markup { \musicglyph #"scripts.coda" }
      \grA f4. a8 \grg f e \grg d c  
    }
    \alternative {
      {\thrwd d2. \grg a4 }
      {\thrwd d2._"D.S. al Coda (with repeats)" \grg a8. d16 \bar "||"
       \break}
    }  
    
    % Coda
    \mark \markup { \musicglyph #"scripts.coda" }
    \grA f2. a4 |\grg f4 e \grg d c |\thrwd d1~ |d~ |d\fermata \bar "|." 
    % Part 2
    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "Air"
    piece = "The Rose of Kelvingrove"
    composer = "David Knox"
    parttagline = "Copied by John S. McWilliam"
  }
% added layout options. See bagpipe_new.ly (\layout) for default settings
  \layout {
  	  #(layout-set-staff-size 18)
  	  ragged-last = ##t
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