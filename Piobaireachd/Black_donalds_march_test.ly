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
				%(Paper format Letter, portrait)
\include "Black_donalds_march_test_definitions.ly"
				%(Includes user-defined music variables)
				
\header {
	title = "Black Donald's March"
	subtitle = "MacDhomhnuill Duibh"
	composer = "Traditional ca 1431" }			
%...to here
%}
	      
% ---------------------------------------------------------------------------

% Ground (Urlar)
  \score {

    {
      \common
      \time 4/4
      \bar ".|:"
      
      \repeat volta 2 {      
      \grg e4. c8\mordent \grg c4 \grGcad a |\grg e4. c8\mordent \grg b4 \grGcad a
      \grg e4. c8\mordent \grg c4 
      \VarII
      c8\mordent \grg c4 \grGcad a 
      \grg e4. c8\mordent \grg b4 
      \VarII
      c8\mordent \grg b4      %^\markup {\halign #-2 \italic Fine.} 
      \grGcad a 
      \break
      \markTextEol \markup {\italic "Fine"}
      
      \grg e4. c8\mordent \grg c4 
      \VarII
      c8\mordent \grg c4 \grGcad a 
      \grg e4. c8\mordent \grg b4 \grGcad a    |\grg e4. c8\mordent \grg c4 \grGcad a 
      \grg e4. c8\mordent \grg b4 
      \VarII
      c8\mordent \grg b4 \grGcad a |
      \break
      
      \grg e4. c8\mordent \grg c4 
      \VarII
      c8\mordent \grg c4 \dre e |
      \grg e4. c8\mordent \grg b4 
      \VarII
      c8\mordent \grg b4 \grGcad a 
      \break
      } %end repeat
    } %end staff

    \header {
      piece = "Urlar with repeat into Var. I. - Thumb Var. "
    } %end header

  } %end score

% ---------------------------------------------------------------------------
% Var. II
  \score {

    {
      \common
      
	\grg e8	A\trill c \grG a\fermata |\grg e A\trill b \grG a\fermata
	\grg e8 A\trill c A\trill |f A\trill c \grG a\fermata
	\grg e8 A\trill c A\trill |f A\trill b \grG a\fermata
	\break
	\grg e8 A\trill c A\trill |f A\trill c \grG a\fermata
	\grg e8 A\trill b \grG a\fermata |\grg e8	A\trill c \grG a\fermata 
	\grg e A\trill c A\trill |f A\trill b \grG a\fermata
	\break
	\grg e8	A\trill c A\trill |f A\trill c A\trill
	e8 A\trill c A\trill |f A\trill b \grG a\fermata
	\bar "|." \break
    } %end Staff

    \header {
      piece = "Var. II"
    } %end Header

    \layout {
%      ragged-last = ##t
    } %end Layout

  } %end score

  % ---------------------------------------------------------------------------
% Var. III
  \score {

    {
      \common
      \bar ".|:"
      
      \repeat Volta 2 {
	e4_\txleumtaorcrun \VarIIIa
	e4_\txleumtaorcrun \VarIIIb
	e4_\txleumtaorcrun c_\txleumtaorcrun
	f4_\txleumtaorcrun \VarIIIa
	e4_\txleumtaorcrun c_\txleumtaorcrun
	f4_\txleumtaorcrun \VarIIIb
	\break
	e4_\txleumtaorcrun c_\txleumtaorcrun
	f4_\txleumtaorcrun \VarIIIa
	e4_\txleumtaorcrun \VarIIIb
	e4_\txleumtaorcrun \VarIIIa
	e4_\txleumtaorcrun c_\txleumtaorcrun
	f4_\txleumtaorcrun \VarIIIb	
	\break
	e4_\txleumtaorcrun c_\txleumtaorcrun
	f4_\txleumtaorcrun c_\txleumtaorcrun
	e4_\txleumtaorcrun c_\txleumtaorcrun
	f4_\txleumtaorcrun \VarIIIb
      } %end repeat
    } %end staff

    \header {
      piece = "Var. III - Leumluath, IV. Taorluath [S & D] and V. Crunluath [S & D]: "
%      breakbefore = ##t
    } %end header

  } %end score

  % ---------------------------------------------------------------------------
\pageBreak
% Var. VI
  \score {

    {
      \common
      
      e4_\txcrun c_\txcrunam
      e4_\txcrun b_\txcrunam
      e4_\txcrun c_\txcrunam
      f4_\txcrun c_\txcrunam
      e4_\txcrun c_\txcrunam
      f4_\txcrun b_\txcrunam
      \break
      e4_\txcrun c_\txcrunam
      f4_\txcrun c_\txcrunam
      e4_\txcrun b_\txcrunam
      e4_\txcrun c_\txcrunam
      e4_\txcrun c_\txcrunam
      f4_\txcrun b_\txcrunam
      \break
      e4_\txcrun c_\txcrunam
      f4_\txcrun c_\txcrunam
      e4_\txcrun c_\txcrunam
      e4_\txcrun
      b_\txcrunam    %_\markup {\lower #2 \halign #-2 \italic {"D.C. al Fine"}} 
      \bar "|." \break
      \markTextEol \markup {\italic "D.C. al Fine"}

    } %end staff

    \header {
      piece = "Var. VI Crunluath-a-Mach"
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
      \set Score.measureLength = #(ly:make-moment 3 4)
 
%}