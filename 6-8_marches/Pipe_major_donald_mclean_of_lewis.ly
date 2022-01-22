\version "2.22.1"

% When ready to include in collection:	
%	1. Comment out top section with \Include file(s)
%					
%	2. \midi section if present.
%	3. Option to comment out "meter" from title e.g. if first tune following
%	   section title.
                                    
%Comment out from here
%{
\include "bagpipe.ly" %(default Lilypond formats)
\include "../Includes/BP_format_portrait.ily" 	

%to here..........................................................
%}

\score {

    \new Staff  {
    \time 6/8	   
    \tempo 4 = 80   
    \hideKeySignature
%    \quarterBeaming
    \bar ".|:"

    % Part 1
    \repeat volta 2 {
      \partial 8 e8
      \grg a8. \grd b16 \gre G8 \grg a4.
      \dble e8. d16 g8 \hdble e8. d16 b8
      \grg a8. \grd b16 \gre a8 \grg G4 \grd b8
      \thrwd d4 e8 \dble e8. d16 b8
%      \break
      \set Score.repeatCommands = #'((volta "2. --2,4"))       
      \grg a8. \grd b16 \gre G8 \grg a4.
      \dble e8. d16 g8 \hdble e8. d16 b8
      \grg G8. \grd b16 g8 \hdble e8. d16 b8
      \grg a4. \wbirl a4
      \set Score.repeatCommands = #'((volta #f))
      \break }

    % Part 2
    \repeat volta 2 {
%    \set Timing.measurePosition = #(ly:make-moment -8)
      \dblg g8
      \dblA A4 e8 \gra e4 \dblg g8
      A8. e16 \gra e8 \dble e8. d16 b8
      \grg a8. \grd b16 \gre a8 \grg G4 \grd b8
      \thrwd d4 e8 \dble e8. d16 b8
%      \break

      \set Score.repeatCommands = #'((volta "1."))
      \dblA A4 e8 \gra e4 \dblg g8
      A8. e16 \gra e8 \dble e8. d16 b8
      \grg G8. \grd b16 g8 \hdble e8. d16 b8
%      \barLength 5 8
      \grg a4. \wbirl a4
      \set Score.repeatCommands = #'((volta #f))
    \break }
   
    
    % Part 3
      \repeat volta 2 {
      e8
      \grg a8. e16 \gra e8 \grg d8. e16 \gra e8
      \grg a8. e16 \gra e8 \dble e8. d16 b8
      \grg a8. \grd b16 \gre a8 \grg G8. \grd G16 \gre G8
      \grg b16 d8. e8 \dble e8. d16 b8
%      \break
      
      \grg a8. e16 \gra e8 \grg d8. e16 \gra e8
      \grg a8. e16 \gra e8 \dble e8. d16 b8
      \grg G8. \grd b16 g8 \hdble e8. d16 b8
%      \barLength 5 8
      \grg a4. \wbirl a4
      \break }
      
    
    % Part 4
    \repeat volta 2 {
      e8
      \gbirl a4 A8 \grg A8. g16 A8
      g8. e16 \gra e8 \dble e8. d16 b8
      \grg a8. \grd b16 \gre a8 \grg G4 \grd b8
      \thrwd d4 e8 \dble e8. d16 b8
%      \break
      
      \set Score.repeatCommands = #'((volta "1."))
      \gbirl a4 A8 \grg A8. g16 A8
      g8. e16 \gra e8 \dble e8. d16 b8
      \grg G8. \grd b16 g8 \hdble e8. d16 b8
%      \barLength 5 8
      \grg a4. \wbirl a4
      \set Score.repeatCommands = #'((volta #f))
    \break }
    

    } %end staff
    
  \header {
    meter = "March"
    piece = "Pipe Major Donald McLean of Lewis"
    composer = "Traditional"
    parttagline = "Copied by John S. McWilliam"

  }
  	
%Generation of midi files can be removed here.
%  \midi {}

} %end score
