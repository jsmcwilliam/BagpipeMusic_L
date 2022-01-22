\version "2.22.0"

%Black Donalds March: Kilberry Book No. 92 (Variable prefix = A) 

% When ready to include in collection: 1. Comment out Includes, variables & header.
% 				       2. Create seperate include file of variables.
%                                      3. Create seperate include file of score.
%				       4. Run book module containing the above includes.
%Comment out from here

%
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a4") % option 'landscape
#(set-global-staff-size 16)
#(allow-volta-hook "||") % enables volta hook outside repeat context

\include "../Includes/bagpipe_new.ily" 	%(Replaces bagpipe.ly)
\include "../Includes/bagpipe_extra.ily"	%(Extras)
\include "../Includes/BP_format_piobaireachd.ily" 	
				%(Tagline: Copied by John McWilliam, date)
				%(Paper format A4, Portrait  ))
								
\include "../Includes/A92_Var.ily" %(Black Donalds March: variables)

  \header {
    title = "Black Donald's March"
    subtitle = "MacDhomhnuill Duibh"
    composer = "Traditional ca 1431"
          }
%}%...to here
% ---------------------------------------------------------------------------

% Ground (Urlar)
  \score {

    { %Staff
      \A_common
      \time 4/4
      \bar ".|:"
            
      \grg e4. c8\mordent \grg c4 \grGcad a |\grg e4. c8\mordent \grg b4 \grGcad a
      \grg e4. c8\mordent \grg c4 
      \A_VarIII
      \grg e4. c8\mordent \grg c4 \grGcad a 
      \grg e4. c8\mordent \grg b4 
      \A_VarIII
      \grg e4. c8\mordent \grg b4 \grGcad a 
      \bar "||"
      \break
      \markMarkEol \markup {\italic "Fine"}
      
      \grg e4. c8\mordent \grg c4 
      \A_VarIII
      \grg e4. c8\mordent \grg c4 \grGcad a |\grg e4. c8\mordent \grg b4 \grGcad a
      \grg e4. c8\mordent \grg c4 \grGcad a |\grg e4. c8\mordent \grg b4 
      \A_VarIII
      \grg e4. c8\mordent \grg b4 \grGcad a 
      \bar "||"
      \break
      
      \grg e4. c8\mordent \grg c4 
      \A_VarIII
      \grg e4. c8\mordent \grg c4 \dre e 
      \grg e4. c8\mordent \grg b4 
      \A_VarIII
      \grg e4. c8\mordent \grg b4 \grGcad a 
      \bar ":|."
      \break
    } %end staff

    \header {
      piece = "I. GROUND II. THUMB VAR. substituting high A for F where shown and omitting following G grace note. "
            } %end header

  } %end score

% ---------------------------------------------------------------------------
% Var. III
  \score {

    { %Staff
        \A_common   
        
	\grg e8	A\trill c \grG a\fermata |\grg e A\trill b \grG a\fermata
	\grg e8 A\trill c A\trill |f A\trill c \grG a\fermata
	\grg e8 A\trill c A\trill |f A\trill b \grG a\fermata
	\bar "||"
	\break
	\grg e8 A\trill c A\trill |f A\trill c \grG a\fermata
	\grg e8 A\trill b \grG a\fermata |\grg e8	A\trill c \grG a\fermata 
	\grg e A\trill c A\trill |f A\trill b \grG a\fermata
	\bar "||"
	\break
	\grg e8	A\trill c A\trill |f A\trill c A\trill
	e8 A\trill c A\trill |f A\trill b \grG a\fermata
	\bar "|." \break
    } %end Staff

    \header {
      piece = "Var. III"
            } %end Header

    \layout {
%      ragged-last = ##t
            } %end Layout

  } %end score

  % ---------------------------------------------------------------------------
% Var. IV - IX
  \score {

    { %Staff
      \A_common
      \bar ".|:"
      
	e4_\txleumtaorcrun \A_VarIVa
	e4_\txleumtaorcrun \A_VarIVb
	e4_\txleumtaorcrun c_\txleumtaorcrun
	f4_\txleumtaorcrun \A_VarIVa
	e4_\txleumtaorcrun c_\txleumtaorcrun
	f4_\txleumtaorcrun \A_VarIVb
	\bar "||"
	\break
	e4_\txleumtaorcrun c_\txleumtaorcrun
	f4_\txleumtaorcrun \A_VarIVa
	e4_\txleumtaorcrun \A_VarIVb
	e4_\txleumtaorcrun \A_VarIVa
	e4_\txleumtaorcrun c_\txleumtaorcrun
	f4_\txleumtaorcrun \A_VarIVb	
	\bar "||"
	\break
	e4_\txleumtaorcrun c_\txleumtaorcrun
	f4_\txleumtaorcrun c_\txleumtaorcrun
	e4_\txleumtaorcrun c_\txleumtaorcrun
	f4_\txleumtaorcrun \A_VarIVb
	\bar "||"

    } %end staff

    \header {
      piece = "IV LEUMLUATH, V Doubling VI TAORLUATH VII Doubling VIII CRUNLUATH IX Doubling. "
%      breakbefore = ##t
            } %end header

  } %end score

  % ---------------------------------------------------------------------------
\pageBreak
% Var. VI
  \score {

    { %Staff
      \A_common
      
      e4_\txcrun c_\txcrunam
      e4_\txcrun b_\txcrunam
      e4_\txcrun c_\txcrunam
      f4_\txcrun c_\txcrunam
      e4_\txcrun c_\txcrunam
      f4_\txcrun b_\txcrunam
      \bar "||"
      \break
      e4_\txcrun c_\txcrunam
      f4_\txcrun c_\txcrunam
      e4_\txcrun b_\txcrunam
      e4_\txcrun c_\txcrunam
      e4_\txcrun c_\txcrunam
      f4_\txcrun b_\txcrunam
      \bar "||"
      \break
      e4_\txcrun c_\txcrunam
      f4_\txcrun c_\txcrunam
      e4_\txcrun c_\txcrunam
      e4_\txcrun
      b_\txcrunam    %_\markup {\lower #2 \halign #-2 \italic {"D.C. al Fine"}} 
      \bar "|." \break
      \markMarkEol \markup {\italic "D.C. al Fine"}

    } %end staff

    \header {
      piece = "Var. X CRUNLUATH-A-MACH"
            } %end header

  } %end score

  % ---------------------------------------------------------------------------

% Movements
  \score { 
        \new StaffGroup {
  	   \cadenzaOn
  	      <<
  	        \new Staff {	\A_written }
  	        \new Staff { 	\A_played  }
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

 % --------------------------------------------------------------------------


