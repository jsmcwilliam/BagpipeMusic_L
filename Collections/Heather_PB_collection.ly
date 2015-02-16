\version "2.18.0"    

#(ly:set-option 'relative-includes #t) 
#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 15) % set staff-size when ready to print

date = #(strftime "%d-%m-%Y" (localtime (current-time)))
tocSection = #(define-music-function (parser location text) (markup?) 
        	(add-toc-item! 'tocSectionMarkup text)) 
VoltaTxtTwoFour = \markup { 2. \text\fontsize #2 {--Parts: 2 & 4}} % PM Donald McLean

\include "bagpipe_extra.ly"
\include "bagpipe_new.ly"
\include "BP_format.ly"

\book {

\header {
    title = "Heather Pipes & Drums"
    subtitle = "Band Collection - 2015"
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
			title = "2/4 Marches"
			subtitle = ##f}
		\tocSection \markup { 2/4 Marches }		
		\tocItem \markup {1. Donald MacLean's Farewell to Oban}
		\include "../2-4_marches/Donald_macleans_farewell_to_oban.ly"
		\pageBreak
		\tocItem \markup {2. Campbell's Fairwell to Redcastle}
		\include "../2-4_marches/Campbells_fairwell.ly"
%		\pageBreak
		}

	\bookpart {
		\header {
			title = "3/4 Marches"
			subtitle = ##f}
		\tocSection \markup { 3/4 Marches } 
		\tocItem \markup {1. Green Hills of Tyrol}
		\include "../3-4_marches/Green_hills.ly" 
%		\pageBreak
		\tocItem \markup {2. When the Battles O'er}
		\include "../3-4_marches/When_the_battles_oer.ly" 
		\pageBreak
		\tocItem \markup {3. Colin's Cattle}
		\include "../3-4_marches/Collins_cattle.ly" 
		\pageBreak
		}	

			\bookpart {
		\header {
			title = "4/4 Marches"
			subtitle = ##f}
		\tocSection \markup { 4/4 Marches } 
		\tocItem \markup {1. Scotland the Brave}
		\include "../4-4_marches/Scotland_the_brave.ly" 
%		\pageBreak
		\tocItem \markup {2. Rowan Tree}
		\include "../4-4_marches/Rowan_tree.ly" 
		\pageBreak
		\tocItem \markup {6. Flett from Flotta}
		\include "../4-4_marches/Flett_from_flotta_3.ly" 
%		\pageBreak
		}	

	\bookpart {
		\header {
			title = "6/8 Marches"
			subtitle = ##f}
		\tocSection \markup { 6/8 Marches } 
		\tocItem \markup {3. Mrs Lily Christie}
		\include "../6-8_marches/Mrs_lily_christie.ly"
		\pageBreak
		}

			\bookpart {
		\header {
			title = "Other Marches"
			subtitle = ##f}
		\tocSection \markup { Other Marches } 
		\tocItem \markup {1. Cullen Bay}
		\include "../9-8_marches/Cullen_bay.ly" 
		}	

	\bookpart {
		\header {
			title = "Airs"
			subtitle = ##f}
		\tocSection \markup { Airs }
		\tocItem \markup {Dark Isle }
		\include "../Airs/Dark_isle_3.ly"
%		\pageBreak
		}
				
		\bookpart {
		\header {
			title = "March, Strathspey & Reel"
			subtitle = ##f
			picture = ##f}
		\tocSection \markup { March, Strathspey & Reel } 
		\tocItem \markup {3. Molly Connel }
		\include "../Strathspeys/Molly_connel.ly" 
		\pageBreak
		\tocItem \markup {5. The Ale is Dear }
		\include "../Reels/Ale_is_dear.ly" 
		\pageBreak 		
		}

		\bookpart {
		\header {
			title = "Medley-1"
			subtitle = ##f
			picture = ##f}
		\tocSection \markup { Medley-1 } 
		\tocItem \markup {3. Molly Connel }
		\include "../Strathspeys/Molly_connel.ly" 
		\pageBreak
		}
		
		\bookpart {
		\header {
			title = "Medley-2"
			subtitle = ##f
			picture = ##f}
		\tocSection \markup { Medley-2 } 
		\tocItem \markup {1. Barbara's Jig }
		\include "../Jigs/Barbaras_jig.ly"
%		\pageBreak
		\tocItem \markup {2. Electric Chopsticks }
		\include "../Hornpipes/Electric_chopsticks.ly"
		\pageBreak
		}

}%end book
