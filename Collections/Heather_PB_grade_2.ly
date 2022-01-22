\version "2.22.1"    

tocSection = #(define-music-function (parser location text) (markup?) 
        	(add-toc-item! 'tocSectionMarkup text)) 

\include "bagpipe.ly" %(default Lilypond formats)
\include "../Includes/BP_format_portrait.ily"

\book {

\header {
    title = "Heather Pipes & Drums"
    subtitle = "Grade 2 Band Collection - 2015"
    copyright = \markup {
    	    		\line {"Compiled by John S. McWilliam,"
    	    			\concat { "(rev. " \today ")" }}}
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
			title = "March, Strathspey & Reel"
			subtitle = ##f
			picture = ##f}
		\tocSection \markup { March, Strathspey & Reel } 
		\tocItem \markup {1. Balmoral Highlanders }
		\include "../2-4_marches/Balmoral_highlanders_4.ly"
		\pageBreak
		\tocItem \markup {2. Atholl Cummers }
		\include "../Strathspeys/Atholl_cummers.ly"
		\pageBreak
		\tocItem \markup {3. Charlies Welcome }
		\include "../Reels/Charlies_welcome.ly"
		\pageBreak
		\tocItem \markup {1. Highland Wedding }
		\include "../2-4_marches/Highland_wedding.ly"
		\pageBreak
		\tocItem \markup {2. Dora MacLeod }
		\include "../Strathspeys/Dora_macleod.ly" 
		\pageBreak
		\tocItem \markup {3. Pretty Marion }
		\include "../Reels/Pretty_marion.ly" 
		\pageBreak 		
		
		}

}%end book
