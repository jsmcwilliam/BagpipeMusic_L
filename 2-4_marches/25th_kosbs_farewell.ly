\version "2.18.0"

%{Running this template always results in the following warning:
  Cannot find property type-check for `print-function' (backend-type?).  
  Perhaps a typing error? 
  Warning: skipping assignment. It seems to have its source in "bagpipe_new.ly"
  but does not have any adverse effects
%}
%   	1. Comment out generation of midi files before compiling book
%  	2. Comment out top section when compiling book
%	3. Option to comment out "meter" from title e.g. if first tune following
%	   section title.
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
    \partial 8 {\grg a16. [ d32 ]}
     \grg f4 \grg e16. [ g32 \grA f32 A16. ]  
     \hdblf f8 [ d8 ] \slurd d8 [ \dblg g8 ]  
     b4 g16. [ f32 \grg e16. d32 ]  
     \dblc c8 [ e8 ] \gra e8 [ \grg a16. d32 ]   
     \break

     \grg f4 \grg e16. [ g32 \grA f32 A16. ]  
     \hdblf f8 [ d8 ] \slurd d8 [ \dblg g8 ]  
     b8. [ d16 ] \grg c32 [ e16. \grg a16. A32 ]  
     \hdblf f8 [ d8 ] \slurd d8 %\bar ":|:" 
     \break
    } %end repeat
    
    % Part 2
    \repeat volta 2 {
     \grg f16. [ g32 ]  
     \dblA A8 [ \birl a8 ] g16. [ f32 \grg e16. d32 ]  
     \dblc c8 [ \grg b8 ] \taor b8 [ \grg e16. f32 ]  
     \dblg g8. [ e16 ] \grg G16. [ \grd b32 \grg e16. d32 ]  
     \dblc c8 [ e8 ] \gra e8 [ \grg f16. g32 ]   
     \break

     \dblA A8 [ \birl a8 ] g16. [ f32 \grg e16. d32 ]  
     \dblc c8 [ \grg b8 ] \taor b8 [ \dblg g8 ]  
     a16. [ \grd c32 \grg e32 A16. ] g16. [ e32 \grg c32 \grd a16. ]  
     \thrwd d4 \slurd d8 %\bar ":|:" 
    \break } %end repeat

    % Part 3
    \repeat volta 2 {
     \grg a16. [ d32 ]  
     \grg f16. [ e32 \grg f32 A16. ] a16. [ d32 \grg f32 A16. ]  
     \hdblf f8 [ d8 ] \slurd d8 [ \dblg g8 ]  
     b32 [ \grd G16. \grg b32 d16. ] \grA g16. [ f32 \grg e16. d32 ]  
     \dblc c8 [ e8 ] \gra e8 [ \grg a16. d32 ]   
     \break

     \grg f16. [ e32 \grg f32 A16. ] a16. [ d32 \grg f32 A16. ]  
     \hdblf f8 [ d8 ] \slurd d8 [ \dblg g8 ]  
     b32 [ \grd G16. \grg b32 d16. ] \grg c32 [ e16. \grg a16. A32 ]  
     \hdblf f8 [ d8 ] \slurd d8 %\bar ":|:" 
    \break } %end repeat

    % Part 4
    \repeat volta 2 {
     \grg f16. [ g32 ]  
     A16. [ g32 A16. d32 ] \grg f16. [ d32 A16. d32 ]  
     \dblc c8 [ \grg b8 ] \taor b8 [ \grg e16. f32 ]  
     \grA g16. [ f32 g16. b32 ] \grg G16. [ \grd b32 \grg e16. d32 ]  
     \dblc c8 [ e8 ] \gra e8 [ \grg f16. g32 ]   
     \break

     A16. [ g32 A16. d32 ] \grg f16. [ d32 A16. d32 ]  
     \dblc c8 [ \grg b8 ] \taor b8 [ \dblg g8 ]  
     a16. [ \grd c32 \grg e32 A16. ] g16. [ e32 \grg c32 \grd a16. ]  
     \thrwd d4 \slurd d8 %\bar ":|" 
    \break } %end repeat

    } %end staff
    
  \header {
    meter = "March"
    piece = "25th K.O.S.Bs Farewell to Meerut"
    composer = "P/M J. Balloch (1860 - 1947)"
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