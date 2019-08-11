\version "2.18.0"    

tocSection = #(define-music-function (parser location text) (markup?) 
        	(add-toc-item! 'tocSectionMarkup text)) 

\include "bagpipe.ly"
\include "../Includes/BP_format.ily"

\book {

\header {
    title = "Heather Pipes & Drums"
    subtitle = "Grade 4 Band Collection - 2015"
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
	
%
	\bookpart {
		\header {
			title = "2/4 Marches"
			subtitle = ##f}
		\tocSection \markup { 2/4 Marches }		
		\tocItem \markup {1. Corriechoillies Welcome to the Northern Meeting}
		\include "../2-4_marches/Corriechoillies_welcome.ly"
%		\pageBreak
		\tocItem \markup {2. Teribus }
		\include "../2-4_marches/Teribus.ly"
%		\pageBreak
		}
%

	\bookpart {
		\header {
			title = "3/4 Marches"
			subtitle = ##f}
		\tocSection \markup { 3/4 Marches } 		\tocItem \markup {1. Green Hills of Tyrol}
		\include "../3-4_marches/Green_hills.ly" 
%		\pageBreak
		\tocItem \markup {2. When the Battles O'er}
		\include "../3-4_marches/When_the_battles_oer.ly" 
%		\pageBreak
		\tocItem \markup {3. Colin's Cattle}
		\include "../3-4_marches/Collins_cattle_3.ly" 
		\pageBreak
		\tocItem \markup {3. Kilworth Hills }
		\include "../3-4_marches/Kilworth_hills.ly" 
		\pageBreak
		
		}	
%
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
%		\pageBreak
%
		\tocItem \markup {6. Flett from Flotta}
		\include "../4-4_marches/Flett_from_flotta_3.ly" 
%		\pageBreak
		}	
%
	\bookpart {
		\header {
			title = "6/8 Marches"
			subtitle = ##f}
		\tocSection \markup { 6/8 Marches } 
		\tocItem \markup {1. Murdo MacKenzie of Torridon }
		\include "../6-8_marches/Murdo_mackenzie_of_torridon.ly"
%		\pageBreak
		\tocItem \markup {2. Mrs Lily Christie}
		\include "../6-8_marches/Mrs_lily_christie_3.ly"
		\pageBreak
		}
%
			\bookpart {
		\header {
			title = "Other Marches"
			subtitle = ##f}
		\tocSection \markup { Other Marches } 
		\tocItem \markup {1. Cullen Bay}
		\include "../9-8_marches/Cullen_bay.ly" 
		}	
%
	\bookpart {
		\header {
			title = "Airs"
			subtitle = ##f}
		\tocSection \markup { Airs }
		\tocItem \markup {1. Dark Isle }
		\include "../Airs/Dark_isle_3.ly"
%		\pageBreak
		\tocItem \markup {2. Amazing Grace }
		\include "../Airs/Amazing_grace_2.ly"
		\pageBreak
%
		\tocItem \markup {3. Our Ain Fireside }
		\include "../Airs/Our_ain_fireside.ly"
%		\pageBreak
		}
%
	\bookpart {
		\header {
			title = "Competition Marches"
			subtitle = ##f
			picture = ##f}
		\tocSection \markup { Competition Marches } 
		\tocItem \markup {1. Barnyards of Delgaty}
		\include "../2-4_marches/Barnyards_o_delgaty.ly"
%		\pageBreak
%		\tocItem \markup {2. Fare Thee Weel Ye Allourman Braes }
%		\include ""
%		\pageBreak 
		\tocItem \markup {3. Campbells Farewell to Redcastle }
		\include "../2-4_marches/Campbells_fairwell.ly"
		\pageBreak
		\tocItem \markup {4. 25th. K.O.S.B.s Farewell to Meerut }
		\include "../2-4_marches/25th_kosbs_farewell.ly"
		\pageBreak		
		}
%		
	\bookpart {
		\header {
			title = "March, Strathspey & Reel"
			subtitle = ##f
			picture = ##f}
		\tocSection \markup { March, Strathspey & Reel } 
		\tocItem \markup {1. Donald MacLean's Farewell to Oban}
		\include "../2-4_marches/Donald_macleans_farewell_to_oban.ly"
		\pageBreak
		\tocItem \markup {2. Susan MacLeod}
		\include "../Strathspeys/Susan_macleod.ly"
		\pageBreak
		\tocItem \markup {3. Mrs MacPherson of Inveran }
		\include "../Reels/Mrs_macpherson_of_inveran.ly"
		\pageBreak
		\tocItem \markup {1. Campbell's Fairwell to Redcastle}
		\include "../2-4_marches/Campbells_fairwell.ly"
		\pageBreak
		\tocItem \markup {2. 25th K.O.S.B.s Farewell to Meerut }
		\include "../2-4_marches/25th_kosbs_farewell.ly" 
		\pageBreak
		\tocItem \markup {3. Dalnahasaig }
		\include "../Strathspeys/Dalnahasaig.ly" 
%		\pageBreak
		\tocItem \markup {4. Molly Connel }
		\include "../Strathspeys/Molly_connel_3.ly" 
%		\pageBreak
		\tocItem \markup {5. The Ale is Dear }
		\include "../Reels/Ale_is_dear_3.ly" 
		\pageBreak 		
		\tocItem \markup {6. Silver Spear }
		\include "../Reels/Silver_spear.ly" 
		\pageBreak 		
		}
%
	\bookpart {
		\header {
			title = "Medley-1"
			subtitle = ##f
			picture = ##f}
		\tocSection \markup { Medley-1 } 
		\tocItem \markup {1. Royal Scots Polka }
		\include "../Polka/Royal_scots_polka_3.ly" 
%		\pageBreak
		\tocItem \markup {2. Airlies Big Day }
		\include "../Hornpipes/Airlies_big_day.ly" 
		\pageBreak
		\tocItem \markup {4. P/M Joe Wilson }
		\include "../Jigs/Joe_wilson_3.ly" 
%		\pageBreak
		\tocItem \markup {5. Callin Mo Ruin-Sa }
		\include "../Airs/Callin_mo_ruin_sa.ly" 
%		\pageBreak
		\tocItem \markup {6. Molly Connel }
		\include "../Strathspeys/Molly_connel_3.ly" 
		\pageBreak
		\tocItem \markup {7. Dalnahasaig }
		\include "../Strathspeys/Dalnahasaig.ly" 
%		\pageBreak
		\tocItem \markup {8. Itchy Fingers }
		\include "../Hornpipes/Itchy_fingers_3.ly" 
		\pageBreak		
		}
%		
	\bookpart {
		\header {
			title = "Medley-2"
			subtitle = ##f
			picture = ##f}
		\tocSection \markup { Medley-2 } 
		\tocItem \markup {1. Hector the Hero }
		\include "../Airs/Hector_the_hero.ly" 
%		\pageBreak
		\tocItem \markup {2. Sonny_brogans_mazurka }
		\include "../Mazurka/Sonny_brogans_mazurka.ly" 
%		\pageBreak
		\tocItem \markup {3. Barbara's Jig }
		\include "../Jigs/Barbaras_jig_3.ly"
		\pageBreak
		\tocItem \markup {4. Mr. & Mrs. J. Duncans Golden Wedding 2000 }
		\include "../Hornpipes/Mr_&_mrs_Duncan_3.ly" 		
%		\pageBreak
		\tocItem \markup {5. Dark Isle }
		\include "../Airs/Dark_isle_3.ly" 
		\pageBreak
		\tocItem \markup {6. Electric Chopsticks }
		\include "../Hornpipes/Electric_chopsticks.ly"
		\pageBreak
		}
%}
}%end book
