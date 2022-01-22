\version "2.22.1"

%Title: Kilberry Book No. ?? (Variable prefix = ?)

% When ready to include in collection: 1. Comment out Includes, variables & header.
% 				       2. Create seperate include file of variables.
%                                      3. Create seperate include file of score.
%				       4. Run book module containing the above includes.
%Comment out from here

%
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a4") % option 'landscape
#(set-global-staff-size 16)
#(allow-volta-hook "|") % enables volta hook outside repeat context

\include "../Includes/bagpipe_new.ily" 	%(Replaces bagpipe.ly)
\include "../Includes/bagpipe_extra.ily"	%(Extras)
\include "../Includes/BP_format_piobaireachd.ily" 	
				%(Tagline: Copied by John McWilliam, date)
				%(Paper format A4, Portrait  ))
								
\include "../Includes/???.ily"  %(???? variables)

  \header {
    title = "????" 
    subtitle = "????" 
    composer = "????"
          }
%}%...to here

% ---------------------------------------------------------------------------

% Ground
  \score {

    { %Staff
      \?common
      \time ?/?
%      \bar ""
      
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
% Var. 1
  \score {

    { %Staff
      \B_common
%      \bar ".|:"
      
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

    { %Staff
      \?common
%      \bar ".|:"
      
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
%  \pageBreak
% Var. III
  \score {

    { %Staff
      \?common
%      \bar ".|:"
      
% Part 1      
      \repeat volta 2 {

      } %end repeat
      
% Part 2      
      \repeat volta 2 {

      } %end repeat
    } %end staff

    \header {
      piece = "Var. III - Taorluath [S] & [D] Var. IV Crunluath [S] & [D]"
%      breakbefore = ##t
    } %end header

  } %end score

  % ---------------------------------------------------------------------------
% Movements

  \score { \new StaffGroup {
  	   \cadenzaOn
  	  <<
  	  \new Staff {	\?written }
  	  \new Staff { 	\?played  }
  	  >>
  	   \cadenzaOff
         } %end StaffGroup

    \header {
      piece = "Abreviations used:"
    } %end header
    
    \layout {
    	    indent = 2.0\cm 
   	    \context {
              \Staff
               \remove "Time_signature_engraver"
    	    } %end context

       } %end layout
  } %end score
  
\markup {S = Singling. D = Doubling}

% ---------------------------------------------------------------------------

