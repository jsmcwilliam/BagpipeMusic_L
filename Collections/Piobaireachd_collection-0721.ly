\version "2.22.1"   

tocSection = #(define-music-function (parser location text) (markup?) 
        	(add-toc-item! 'tocSectionMarkup text)) 

%#(ly:set-option 'relative-includes #t) 
%#(set-default-paper-size "a4" 'portrait)
%#(set-global-staff-size 15) % set staff-size when ready to print

date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\include "bagpipe.ly"
\include "../Includes/bagpipe_new.ly"
%\include "../Includes/bagpipe_extra.ly"
\include "../Includes/BP_format_piobaireachd.ly"
%\include "../Piobaireachd/Mackintoshs_lament_test_definitions.ly"
%\include "../Piobaireachd/Black_donalds_march_test_definitions.ly"

\book {

\header {
    title = "PIOBAIREACHD"
    subtitle = "Col Mor"
    copyright = \markup {
    	    		\line {"Compiled by John S. McWilliam,"
    	    			\concat { "(rev. " \date ")" }}}
%    parttagline = "Copied by John S. McWilliam"
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
    tocSectionMarkup = \markup {\large \column { 
    	    \hspace #1 
    	    \fill-line { \null \italic \fromproperty #'toc:text \null } 
    	    \hspace #1 
    	    }
    }    	    
}%end paper

	\pageBreak %after title page		
	\markuplist \table-of-contents
	\pageBreak

	\bookpart {	
		\header {
			title = "Black Donald's March"
			subtitle = "MacDhomhnuill Duibh"
			composer = "Traditional ca 1431" }
		\tocItem \markup {1. Black Donalds March }
		\include "../Piobaireachd/Black_donalds_march-0721.ly"
%		\pageBreak 
	} %end bookpart

%{
       \bookpart {	
		\header {
			title = "Mackintosh's Lament" 
		%	subtitle = ##f
		%	picture = ##f}
			subtitle = "Cumha Mhic-an-Toisich" 
			composer = "Macintyre ca 1550" }
		%\tocSection \markup { Mackintosh's Lament }
		\tocItem \markup {2. Mackintoshs Lament }
		\include "../Piobaireachd/Mackintoshs_lament-0721.ly"
		\pageBreak
	} %end bookpart
%}	
}%end book
