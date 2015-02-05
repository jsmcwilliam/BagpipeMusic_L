\version "2.18.0"
% When ready to include in collection: 1. Comment out paper.
% 				       2. Create include file of score and
%					  header.
%Comment out from here

%
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "letter") % option 'landscape
#(set-global-staff-size 18)
#(allow-volta-hook "|") % enables volta hook outside repeat context

\include "bagpipe_new.ly" 	%(Replaces bagpipe.ly)
%\include "bagpipe_extra.ly"	%(Extras)
%\include "BP_format_piobaireachd.ly" 	
				%(Tagline: Copied by John McWilliam, date)
				%(Paper format letter, portait)
%...to here
%}

common = {
  \bagpipeKey
  \time 2/4
  \override TextScript.staff-padding = #2
  \override Script #'padding = #1
  \override TextScript #'padding = #2 % horizontal text alignment
  \bar ".|:"
}
tr = ^\markup {\italic tr}

  \header {
    title = "Title"
    subtitle = ""
    composer = ""
  }

% ---------------------------------------------------------------------------

% Ground
  \score {

    {
      \common
      
% Part 1.
      \repeat volta 2 {
      	      
      } %end repeat
% Part 2.      
      \repeat volta 2 {
      	      
      } %end repeat
    } %end staff

    \header {
      piece = "I. Urlar"
    } %end header

  } %end score

% ---------------------------------------------------------------------------
% Var. I
  \score {

    {
      \common
      
% Part 1.
	\repeat volta 2 {
		
	} %end repeat
% Part 2.
	\repeat volta 2 {
		
	} % end repeat
    } % end staff

    \header {
      piece = "Var. I"
    } % end header

  } %end score

% ---------------------------------------------------------------------------

% Var. II
  \score {

    {
      \common
      
% Part 1.
	\repeat volta 2 {
		
	} %end repeat
% Part 2.
	\repeat volta 2 {
		
	} %end repeat
	
    } %end Staff

    \header {
      piece = "Var. II"
    } %end Header

    \layout {
%      ragged-right = ##t
    } %end Layout

  } %end score

  % ---------------------------------------------------------------------------
% Var. III
  \score {

    {
      \common
% Part 1      
      \repeat volta 2 {
      	      
      } %end repeat
% Part 2      
      \repeat volta 2 {
      	      
     } %end repeat
    } %end staff

    \header {
      piece = "Var. III - Taorluath"
%      breakbefore = ##t
    } %end header

  } %end score

  % ---------------------------------------------------------------------------

% Var. IV
  \score {

    {
      \common
% Part 1      
      \repeat volta 2 {
      	      
      } %end repeat
% Part 2      
      \repeat volta 2 {
      } %end repeat
    } %end staff

    \header {
      piece = "Var. IV Taorluath Doubling"
    } %end header

  } %end score

  % ---------------------------------------------------------------------------
% Var. V
  \score {

    {
      \common
% Part 1      
      \repeat volta 2 {
      	      
      } %end repeat
% Part 2      
      \repeat volta 2 {
      	      
      } %end repeat
    } %end staff

    \header {
      piece = "Var. V. Crunluath"
    } % end header

  } %end score
% -----------------------------------------------------------------------------
% Var. VI
  \score {

    {
      \common
% Part 1      
      \repeat volta 2 {
      	      
      } %end repeat
% Part 2      
      \repeat volta 2 {
      	      
      } %end repeat
    } %end staff

    \header {
      piece = "Var. VI Crunluath Doubling"
    } %end header

  } %end score

  % ---------------------------------------------------------------------------

% Movements
  \score {

    {
    \common
    \time 5/4
%      \textLengthOn

      d4\tr_\markup 
      {\italic \fontsize #-1 {"tr = pThrow and Darodo"}} r 
      \pthrwd d4 b \darodo b
      f4\mordent_\markup 
      {\italic \fontsize #-1 {"Mordent = Dare"}} r
      \dare f4 r r 
      e4^\txtaor_\markup 
      {\italic \fontsize #-1 {"T = Taorluath & dTaorluath"}} r
      \taor a4 d \dtaor a
      e4^\txcrun_\markup 
      {\italic \fontsize #-1 {"C = Crunluath & dCrunluath"}} r
      \crun e4 d \dcrun e
      \bar "|."
    } %end staff

    \header {
      piece = "Movements"
    } %end header

    \layout {
      ragged-right = ##f
    } %end layout

  } % end score

 % --------------------------------------------------------------------------
%{
Useful Commands:
      \set Score.repeatCommands = #'((volta "2"))  
      \set Score.repeatCommands = #'((volta #f)) 

Movements:
      d4\tr_\markup 
      {\italic \fontsize #-1 {"tr = pThrow and Darodo"}} r 
      \pthrwd d4 b \darodo b
      A4\tr_\markup 
      {\italic \fontsize #-1 {"tr = Double/Dare"}}  
      \dblA A4 r f\tr \dare f
     c4\mordent_\markup 
      {\italic \fontsize #-1 {"Mord. = Grip/Thrwe"}}
      \grip c4 r e\mordent \wthrwe e
      f4\mordent_\markup 
      {\italic \fontsize #-1 {"Mordent = Dare"}} r
      \dare f4 r r 
      e4^\txleum_\markup {\italic \fontsize #-1 {"L = Leumlauth"}} r
      \grg e4 \grip c
      e4^\txtaor_\markup 
      {\italic \fontsize #-1 {"T = Taorluath"}} r
      \taor a4 r2
      e4^\txtaor_\markup 
      {\italic \fontsize #-1 {"T = Taorluath & dTaorluath"}} r
      \taor a4 d \dtaor a
      e4^\txcrun_\markup 
      {\italic \fontsize #-1 {"C = Crunluath"}} r
      \crun e4 r2
      e4^\txcrun_\markup 
      {\italic \fontsize #-1 {"C = Crunluath & dCrunluath"}} r
      \crun e4 d \dcrun e
      b4^\txcrunam_\markup
      {\italic \fontsize #-1 {"Crunluath-a-mach"} } 
      \crunamb b r c^\txcrunam \crunamc c
      \bar "|."
      
%}