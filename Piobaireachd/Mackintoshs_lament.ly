\version "2.22.1"

%Mackintoshs Lament: Kilberry Book No. 50 (Variable prefix = B)

% When ready to include in collection: 1. Comment out Includes, variables & header.
% 				       2. Create seperate include file of variables.
%                                      3. Create seperate include file of score.
%				       4. Run book module containing the above includes.
%Comment out from here

%{
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a4") % option 'landscape
#(set-global-staff-size 16)
#(allow-volta-hook "|") % enables volta hook outside repeat context

\include "../Includes/bagpipe_new.ly" 	%(Replaces bagpipe.ly)
\include "../Includes/bagpipe_extra.ly"	%(Extras)
\include "../Includes/BP_format_piobaireachd.ly" 	
				%(Tagline: Copied by John McWilliam, date)
				%(Paper format A4, Portrait  ))
				

%\include "bagpipe_new.ly" 	%(Replaces bagpipe.ly)
%\include "BP_format_piobaireachd.ly" 	
				%(Tagline: Copied by John McWilliam, date)
				%(Paper format A4, Portrait  ))
				
\include "../Includes/B50_Var.ly" %(Mackintosh's Lament variables)

  \header {
    title = "Mackintosh's Lament" 
    subtitle = "Cumha Mhic-an-Toisich" 
    composer = "Macintyre ca 1550"
          }
%}%...to here

% ---------------------------------------------------------------------------

% Ground
  \score {

    { %Staff
      \B_common
      \time 3/4
      \bar ".|:"
      
% Part 1.
      \repeat volta 2 {
      \grg f16 [ \gre f8. ] \grecad f8 \grg f4. 
      \grg f8. [ e16 ] d8\tr \grg d4. 
      \grg e4 \grip e8 \grg f4. 
      \cad b16 [ \grG b8. ] \grGcad b8 \grg b4. 
      \set Score.repeatCommands = #'((volta "2."))  
      \grg f8. [ e16 ] d8\tr \grg f4.  \break

      \cad b16 [ \grG b8. ] \grGcad b8 \grg b4. 
      \set Score.repeatCommands = #'((volta #f))  
      
      \grg e8. [ d16 ] \gre a4 \grg b16 [ d8.\tr ] 
      \grg e8. [ d16 ] \gre a4 \grg b16 [ d8.\tr ] 
      \grg b16 [ \grGcad a8. ] b4\tr f4\mordent 
      \grg f8 [ e8\fermata ] \grg d2^\markup {\halign #-2 \italic Fine.} \break
      } %end repeat
      
% Part 2. 
      \repeat volta 2 {
      \grg f16 [ \gre f8. ] \grecad f8 A4. 
      f8. [ e16 ] d8\tr \grg d4. 
      \grg e4 \grip e8 \grg f4. 
      \cad b16 [ \grG b8. ] \grGcad b8 \grg b4. 
      \set Score.repeatCommands = #'((volta "2"))  
      \grg f8. [ e16 ] d8\tr \grg f4.  \break

      \cad b16 [ \grG b8. ] \grGcad b8 \grg b4. 
      \set Score.repeatCommands = #'((volta #f)) 
 
      \grg e8. [ d16 ] \gre a4 \grg b16 [ d8.\tr ] 
      \grg e8. [ d16 ] \gre a4 \grg b16 [ d8.\tr ] 
      \grg b16 [ \grGcad a8. ] b4\tr f4\mordent 
      \grg f8 [ e8\fermata ] \grg d2 \break
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
      \bar ".|:"
      
% Part 1.
	\repeat volta 2 {
	\grg f8. e16 \grg f8. e16
	\grg f8. e16 \grg d4
	\grg e8. d16 \grg f8. d16
	\grg e8. d16 \grg b4
	\set Score.repeatCommands = #'((volta "2"))  
	\grg f8. e16 \grg f8. e16 %\break
	
	\grg f8. d16 \grg b4
	\set Score.repeatCommands = #'((volta #f)) 
	\grg d8. b16 \grg d8. b16
	\grg d8. b16 \grg a4
	\grg b8. a16 \grg f8. a16
	\grg f8 e\fermata \grg d4 \break
	} %end repeat
% Part 2.
	\repeat volta 2 {
	\grg f8. e16 \grg A8. e16
	\grg f8. e16 \grg d4
	\grg e8. d16 \grg f8. d16
	\grg e8. d16 \grg b4
	\set Score.repeatCommands = #'((volta "2"))  
	\grg f8. e16 \grg f8. e16 %\break
	
	\grg f8. d16 \grg b4
	\set Score.repeatCommands = #'((volta #f)) 
	\grg d8. b16 \grg d8. b16
	\grg d8. b16 \grg a4
	\grg b8. a16 \grg f8. a16
	\grg f8 e\fermata \grg d4 \break		
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
      \B_common
      \bar ".|:"
      
% Part 1.
	\repeat volta 2 {
	\grg f8. \grg a16 \grg f8. \grg a16
	\grg f8. \grg a16 \grg d8. \gre a16
	\grg e8. \grg a16 \grg f8. \grg a16
	\grg e8. \grg a16 \grg b8. \gre a16
	\set Score.repeatCommands = #'((volta "2"))  
	\grg f8. \grg a16 \grg f8. \grg a16 %\break
	
	\grg f8. \grg a16 \grg b8. \gre a16
	\set Score.repeatCommands = #'((volta #f)) 
	\grg d8. \gre a16 \grg d8. \gre a16
	\grg d8. \grg a16 \grg a8. \gre a16
	\grg b8. \gre a16 \grg f8. \grg a16
	\grg e8. \grg a16 \grg a8. \gre a16 \break
	} %end repeat
	
% Part 2.
	\repeat volta 2 {
	\grg f8. \grg a16 \grg A8. \grg a16
	\grg f8. \grg a16 \grg d8. \gre a16
	\grg e8. \grg a16 \grg f8. \grg a16
	\grg e8. \grg a16 \grg b8. \gre a16
	\set Score.repeatCommands = #'((volta "2"))  
	\grg f8. \grg a16 \grg f8. \grg a16 %\break
	
	\grg f8. \grg a16 \grg b8. \gre a16
	\set Score.repeatCommands = #'((volta #f)) 
	\grg d8. \gre a16 \grg d8. \gre a16
	\grg d8. \grg a16 \grg a8. \gre a16
	\grg b8. \gre a16 \grg f8. \grg a16
	\grg e8. \grg a16 \grg a8. \gre a16 \break
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
      \B_common
      \bar ".|:"
      
% Part 1      
      \repeat volta 2 {
      f4_\txtaorcrun f_\txtaorcrun |\B_VarIIIfd
      e4_\txtaorcrun f_\txtaorcrun |\B_VarIIIeb
      \B_Secondtime \B_VarIIIfb 
      d4_\txtaorcrun d_\txtaorcrun |\B_VarIIIda
      b4_\txtaorcrun f_\txtaorcrun |
      \set Score.repeatCommands = #'((volta "S"))  
      \grg f8 e\fermata \grg d4
      \set Score.repeatCommands = #'((volta #f)(volta "D."))
      e4_\txtaorcrun a_\txtaorcrun
      \set Score.repeatCommands = #'((volta #f))
      \break } %end repeat
      
% Part 2      
      \repeat volta 2 {
      f4_\txtaorcrun A_\txtaorcrun |\B_VarIIIfd
      e4_\txtaorcrun f_\txtaorcrun |\B_VarIIIeb
      \B_Secondtime \B_VarIIIfb      
      d4_\txtaorcrun d_\txtaorcrun |\B_VarIIIda
      b4_\txtaorcrun f_\txtaorcrun |
      \set Score.repeatCommands = #'((volta "S"))  
      \grg f8 e\fermata \grg d4
      \set Score.repeatCommands = #'((volta #f)(volta "D."))
      e4_\txtaorcrun a_\txtaorcrun
      \set Score.repeatCommands = #'((volta #f))      
      \break } %end repeat
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
  	  \new Staff {	\B_written }
  	  \new Staff { 	\B_played  }
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

%{
Useful Commands:
      \set Score.repeatCommands = #'((volta "2"))  
      \set Score.repeatCommands = #'((volta #f)) 

%}

%{
convert-ly (GNU LilyPond) 2.22.1  convert-ly: Processing `'...
Applying conversion: 2.19.2, 2.19.7, 2.19.11, 2.19.16, 2.19.22,
2.19.24, 2.19.28, 2.19.29, 2.19.32, 2.19.39, 2.19.40, 2.19.46,
2.19.49, 2.20.0, 2.21.0, 2.21.2, 2.22.0
%}
