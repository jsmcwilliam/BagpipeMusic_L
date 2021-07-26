\version "2.22.0"    

%Black Donalds March: Kilberry Book No. 92 (Variable prefix = A)
%Mackintoshs Lament : Kilberry Book No. 50 (Variable prefix = B)

#(ly:set-option 'relative-includes #t) 
#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 15) % set staff-size when ready to print

date = #(strftime "%d-%m-%Y" (localtime (current-time)))

\include "../Includes/bagpipe_new.ly"
\include "../Includes/bagpipe_extra.ly"
%\include "../Includes/BP_format_piobaireachd.ly

%\include "bagpipe_new.ly"
%\include "bagpipe_extra.ly"
%\include "BP_format_piobaireachd.ly"	
				%(Tagline: Copied by John McWilliam, date)
				%(Paper format A4, Portrait  ))

\include "../Includes/B50_Var.ly"		%Variables for Makintosh's Lament:  Prefix: B	
\include "../Includes/A92_Var.ly"	%    "      "  Black Donalds March: Prefix: A


\book {

\header {
    title = "PIOBAIREACHD"
    subtitle = "Col Mor"
    copyright = \markup {
    	    		\line {"Compiled by John S. McWilliam,"
    	    			\concat { "(rev. " \date ")" }}}
    parttagline = "Copied by John S. McWilliam"
  }


\paper {
%    ragged-last-bottom = ##t
    %% Page footer: add a different part-tagline at part last page
    oddFooterMarkup = \markup {
      \column {
        \fill-line {
          %% Copyright header field only on book first page.
          \on-the-fly #first-page \fromproperty #'header:copyright
        }
        \fill-line {
          %% Part tagline header field only on each part last page.
          \on-the-fly #part-last-page \fromproperty #'header:parttagline
        }
        \fill-line {
          %% Tagline header field only on book last page.
          \on-the-fly #last-page \fromproperty #'header:tagline
        }
      }
    }
%    line-width = 11.0\cm
    tocTitleMarkup = \markup {\huge \column { 
    	    \fill-line { \null "Table of Contents" \null } 
    	    \hspace #1 
    	    } 
    }     
    tocItemMarkup = \tocItemWithDotsMarkup
}%end paper

	\pageBreak %after title page		
	\markuplist \table-of-contents
	\pageBreak

	\bookpart {	
		\tocItem \markup {50. Mackintoshs Lament }
		\header {
			title = "Mackintosh's Lament" 
			subtitle = "Cumha Mhic-an-Toisich" 
			composer = "Macintyre ca 1550" }
		\include "../Piobaireachd/Mackintoshs_lament.ly"
	} %end bookpart	

        \bookpart {	
		\tocItem \markup {92. Black Donalds March }
		\header {
			title = "Black Donald's March"
			subtitle = "MacDhomhnuill Duibh"
			composer = "Traditional ca 1431" }
		
		\include "../Piobaireachd/Black_donalds_march.ly"
%		\pageBreak 
	} %end bookpart

%		\pageBreak
} %end book

