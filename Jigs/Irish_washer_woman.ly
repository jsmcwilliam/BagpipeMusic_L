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

\include "bagpipe.ly"
%\include "../../bagpipe_new.ly"%(Replaces bagpipe.ly)
%\include "../../BP_format.ly" 	%(Tagline: Copied by John McWilliam, date)
				%(Paper format A4, Landscape)
				%(Header: piece, meter and composer)
				%(Otherwise Lilypond subtitle)
%to here..........................................................
%}

\score {

    \new Staff  {
    \time 6/8	    %adjust time to suit specific tunes
    \tempo 4 = 160   % adjust speed accordingly for playback
%    \bagpipeKey
    \hideKeySignature
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
    \partial 8 A8 
 \hdblf f8.  d16 \grG d8  \grg a8.  d16 \grG d8  
 \grg f8. d16 f8  A8.  g16 \grA f8  
 \grA g8.  e16 \gra e8  \grg c8.  e16 \gra e8  
 \grg a8.  \grd c16 e8  \grA g8.  f16 \grg e8   
% \break

 
 \hdblf f8.  d16 \grG d8  \grg a8.  d16 \grG d8  
 \grg f8. d16 f8  A8.  g16 \grA f8  
  g8.  \grA f16 g8  \hdble e8.  c16 e8  
 \grA f8.  d16 \grG d8  \slurd d4 
 \break
    }
    
    % Part 2
    \repeat volta 2 {
 A8 
 \hdblf f8.  d16 \grG d8  A8.  d16 \grG d8  
 \grg f8.  d16 \grG d8  A8.  g16 \grA f8  
 \grA g8.  e16 \gra e8  \grg c8.  e16 \gra e8  
 \grA g8.  e16 \gra e8  \grg f16  A8.  g8   
% \break

 
 \hdblf f8.  d16 \grG d8  A8.  d16 \grG d8  
 \grg f8.  d16 \grG d8  A8.  g16 \grA f8  
 \grA g8. f16 g8  \hdble e8.  c16 e8  
 \grA f8.  d16 \grG d8  \slurd d4
 \break
 }   
    % Part 3
    \repeat volta 2 {
 A8 
 f16  A8. f8  \dbld d8.  c16 d8  
 \grg a8.  d16 \grg f8  A8.  g16 \grA f8  
 g8. \grA f16 g8  \hdble e8.  c16 e8  
 \grg a8.  \grd c16 e8  \grA g8.  f16 \grg e8   
% \break

 
 f16  A8. f8  \dbld d8.  c16 d8  
 \grg a8.  d16 \grg f8  A8.  g16 \grA f8  
  g8. \grA f16 g8  \hdble e8.  c16 e8  
 \grA f8.  d16 \grG d8  \slurd d4
 \break
}
    % Part 4
    \repeat volta 2 {
 e8 
 \grg f4 \grip f8 A8.  g16 \grA f8  
 \grg a8.  d16 \grg f8  A8.  g16 \grA f8  
 \grg e4 \grip e8 \grA g8.  f16 \grg e8  
 \grg a8.  \grd c16 e8  \grA g8.  f16 \grg e8   
% \break
    }
    \alternative {
    	    {
 \grg f4 \grip f8 A8.  g16 \grA f8  
 \grg a8.  d16 \grg f8  A8.  g16 \grA f8  
  g8. \grA f16 g8  \hdble e8.  c16 e8  
 \set Score.measureLength = #(ly:make-moment 5/8)
 \grA f8.  d16 \grG d8  \slurd d4 
 \break
 	    }
 	    {
 \set Score.measureLength = #(ly:make-moment 6/8)
 \grg f16  A8. f8  \dbld d8.  c16 d8  
 \grg a8.  d16 \grg f8  A8.  g16 \grA f8  
 g8.  \grA f16 g8  \hdble e8.  c16 e8  
 \grA f8.  d16 \grG d8  \slurd d4 
 \bar "|." 
 	    }
    }
    } %end staff
    
  \header {
%    meter = "Jig"
    piece = "The Irish Washer Woman"
    composer = "Trad."
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