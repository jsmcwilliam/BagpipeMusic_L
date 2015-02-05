\version "2.18.0"
% When ready to include in collection: 1. Comment out paper.
% 				       2. Create include file of score and
%					  header.
%Comment out from here

%{
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "letter") % option 'landscape
#(set-global-staff-size 16)
#(allow-volta-hook "|") % enables volta hook outside repeat context

\include "bagpipe_new.ly" 	%(Replaces bagpipe.ly)
\include "bagpipe_extra.ly"	%(Extras)
\include "BP_format_piobaireachd.ly" 	
				%(Tagline: Copied by John McWilliam, date)
				%(Paper format Letter, Portrait  ))
\include "Mackintoshs_lament_test_definitions.ly"
				%(Includes user-defined music variables)
				
\header {
	title = "Mackintosh's Lament" 
	subtitle = "Cumha Mhic-an-Toisich" 
	composer = "Macintyre ca 1550" }

%...to here
%}

% ---------------------------------------------------------------------------

% Ground
  \score {
    {
      \common
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
%{
    \header {
    piece = "Mackintosh's Lament" 
    subtitle = "Cumha Mhic-an-Toisich" 
    composer = "Macintyre ca 1550"
  }
%}
    \header {
      title = "Mackintosh's Lament"
      piece = "I. Urlar"
    } %end header

  } %end score

% ---------------------------------------------------------------------------
% Var. 1
  \score {

    {
      \common
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

    {
      \common
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

    {
      \common
      \bar ".|:"
      
% Part 1      
      \repeat volta 2 {
      f4_\txtaorcrun f_\txtaorcrun |\VarIIIfd
      e4_\txtaorcrun f_\txtaorcrun |\VarIIIeb
      \Secondtime \VarIIIfb 
      d4_\txtaorcrun d_\txtaorcrun |\VarIIIda
      b4_\txtaorcrun f_\txtaorcrun |
      \set Score.repeatCommands = #'((volta "S"))  
      \grg f8 e\fermata \grg d4
      \set Score.repeatCommands = #'((volta #f)(volta "D."))
      e4_\txtaorcrun a_\txtaorcrun
      \set Score.repeatCommands = #'((volta #f))
      \break } %end repeat
% Part 2      
      \repeat volta 2 {
      f4_\txtaorcrun A_\txtaorcrun |\VarIIIfd
      e4_\txtaorcrun f_\txtaorcrun |\VarIIIeb
      \Secondtime \VarIIIfb      
      d4_\txtaorcrun d_\txtaorcrun |\VarIIIda
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
  	  \new Staff {	\written }
  	  \new Staff { 	\played  }
  	  >>
  	   \cadenzaOff
}

    \header {
      piece = "Abreviations used:"
    } %end header
    
    \layout {
    	    indent = 2.0\cm 
   	    \context {
    \Staff
    \remove "Time_signature_engraver"
    	    }

    }
  } %end score
  
\markup {S = Singling. D = Doubling}  

% ---------------------------------------------------------------------------

%{
Useful Commands:
      \set Score.repeatCommands = #'((volta "2"))  
      \set Score.repeatCommands = #'((volta #f)) 

%}