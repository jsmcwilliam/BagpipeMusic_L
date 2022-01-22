\version "2.18.0"    

%#(set-global-staff-size 15) 

tocSection = #(define-music-function (parser location text) (markup?) 
        	(add-toc-item! 'tocSectionMarkup text)) 
logo = \markup {\epsfile #X #70 #"Logo_LNPB.eps" }

\include "bagpipe.ly"
\include "../Includes/BP_format_portrait.ily"
%\include "../Includes/BP_format_landscape.ily"

\book {

\header {
    title = "Lake Norman Pipe Band"
    subtitle = "Band collection - 2015"
    picture = \logo
    copyright = \markup {
    	    		\line {"Compiled by John S. McWilliam,"
    	    			\concat { "(rev. " \today ")" }}}
%    parttagline = "Copied by John S. McWilliam"
  }


\paper {
%    ragged-last-bottom = ##t
    %% Page footer: add a different part-tagline at part last page
    bookTitleMarkup = \markup {\fill-line { \huge\center-column {
        \fontsize #4 \bold\fromproperty #'header:title
        \vspace #1
        \fromproperty #'header:subtitle
        \vspace #1
       \fromproperty #'header:picture
    } } }
    scoreTitleMarkup = \markup {
      \fill-line {
        \fontsize #4 \bold \fromproperty #'header:piece
        \fromproperty #' header:meter
        \fromproperty #'header:composer 
      }
    }
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
    	    \fill-line { \null\bold "Table of Contents" \null } 
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
			subtitle = ##f
			picture = ##f}
		\tocSection \markup { 2/4 Marches }		
		\tocItem \markup {1. The High Road to Gairloch}
		\include "../2-4_marches/High_road_to_gairloch_2.ly"
%		\pageBreak
		\tocItem \markup {2. Weary Maid}
		\include "../2-4_marches/Weary_maid.ly" 
%		\pageBreak
		\tocItem \markup {3. Marie's Wedding}
		\include "../2-4_marches/Maries_wedding_2.ly" 
%		\pageBreak
		\tocItem \markup {4. Barren Rocks of Aden}
		\include "../2-4_marches/Barren_rocks_of_aden.ly" 
%		\pageBreak
		}
%
	\bookpart {
		\header {
			title = "3/4 Marches"
			subtitle = ##f
			picture = ##f}
		\tocSection \markup { 3/4 Marches }		
		\tocItem \markup {1. Green Hills of Tyrol}
		\include "../3-4_marches/Green_hills.ly" 
%		\pageBreak
		\tocItem \markup {2. When the Battles O'er}
		\include "../3-4_marches/When_the_battles_oer.ly" 
%		\pageBreak
		\tocItem \markup {3. Farewell to Nigg}
		\include "../3-4_marches/Farewell_to_nigg.ly" 
%		\pageBreak
		\tocItem \markup {4. Loch Maree}
		\include "../3-4_marches/Loch_maree.ly" 
		\pageBreak
		\tocItem \markup {5. Lochanside}
		\include "../3-4_marches/Lochanside.ly" 
%		\pageBreak
		\tocItem \markup {6. Colin's Cattle}
		\include "../3-4_marches/Collins_cattle.ly" 
%		\pageBreak
		}
%
	\bookpart {
		\header {
			title = "4/4 Marches"
			subtitle = ##f
			picture = ##f}
		\tocSection \markup { 4/4 Marches } 
		\tocItem \markup {1. Cabar Feidh}
		\include "../4-4_marches/Cabar_feidh.ly" 
		\pageBreak
		\tocItem \markup {2. Scotland the Brave}
		\include "../4-4_marches/Scotland_the_brave.ly" 
%		\pageBreak
		\tocItem \markup {3. Rowan Tree}
		\include "../4-4_marches/Rowan_tree.ly" 
		\pageBreak
		\tocItem \markup {4. Wings}
		\include "../4-4_marches/Wings.ly" 
%		\pageBreak
		\tocItem \markup {5. Major Davidson}
		\include "../4-4_marches/Major_davidson.ly" 
		\pageBreak
		\tocItem \markup {6. Flett from Flotta}
		\include "../4-4_marches/Flett_from_flotta.ly" 
%		\pageBreak
		\tocItem \markup {7. Murdo's Wedding}
		\include "../4-4_marches/Murdos_wedding.ly" 
%		\pageBreak
		\tocItem \markup {8. MacRae Meadow}
		\include "../4-4_marches/Macrae_meadow.ly" 
%		\pageBreak
		}
%
	\bookpart {
		\header {
			title = "6/8 Marches"
			subtitle = ##f
			picture = ##f}
		\tocSection \markup { 6/8 Marches } 
		\tocItem \markup {1. Leaving Port Ascaig}
		\include "../6-8_marches/Leaving_port_ascaig_2.ly" 
%		\pageBreak
		\tocItem \markup {2. The Bind}
		\include "../6-8_marches/Bind.ly" 
%		\pageBreak
		}

	\bookpart {
		\header {
			title = "Slow Marches/Airs"
			subtitle = ##f
			picture = ##f}
		\tocSection \markup { Slow Marches/Airs } 
		\tocItem \markup {1. Morag of Dunvegan}
		\include "../Airs/Morag_of_dunvegan.ly"
%		\pageBreak
		\tocItem \markup {2. Highland Cathedral}
		\include "../Airs/Highland_cathedral.ly"
%		\pageBreak
		\tocItem \markup {3. Amazing Grace}
		\include "../Airs/Amazing_grace_2.ly"
		\include "../Airs/Amazing_grace_3.ly"
		\pageBreak
		\tocItem \markup {4. Ash Grove }
		\include "../Airs/Ash_grove.ly"
%		\pageBreak
		\tocItem \markup {5. Lament for Jef ar Penven}
		\include "../Airs/Lament_for_jef.ly"
		\pageBreak
		\tocItem \markup {6. For the Honor}
		\include "../Airs/For_the_honor.ly"
%		\pageBreak
		}
%		
	\bookpart {
		\header {
			title = "Other Marches"
			subtitle = ##f
			picture = ##f}
		\tocSection \markup { Other Marches } 
		\tocItem \markup {1. Scots Wa Hae}
		\include "../4-4_marches/Scots_wa_hae.ly" 
		\tocItem \markup {2. Cullen Bay}
		\include "../9-8_marches/Cullen_bay.ly" 
		}
%		
	\bookpart {
		\header {
			title = "Hornpipes"
			subtitle = ##f
			picture = ##f}
		\tocSection \markup { Hornpipes } 
		\tocItem \markup {1. The Bumpy Old Road}
		\include "../Hornpipes/Bumpy_old_road.ly" 
		\tocItem \markup {2. An Dro}
		\include "../Hornpipes/An_dro_1.ly" 
		}
%		
	\bookpart {
		\header {
			title = "March, Strathspey & Reel"
			subtitle = ##f
			picture = ##f}
		\tocSection \markup { March, Strathspey & Reel } 
		\tocItem \markup {1. Brown Haired Maiden}
		\include "../2-4_marches/Brown_haired_maiden_2.ly" 
%		\pageBreak
		\tocItem \markup {2. Inverness Rant }
		\include "../Strathspeys/Inverness_rant_2.ly" 
%		\pageBreak
		\tocItem \markup {3. Molly Connel }
		\include "../Strathspeys/Molly_connel.ly" 
		\pageBreak
		\tocItem \markup {4. Barney's Balmoral }
		\include "../Reels/Barneys_balmoral.ly" 
%		\pageBreak
		\tocItem \markup {5. The Ale is Dear }
		\include "../Reels/Ale_is_dear.ly" 
%		\pageBreak 		
		}
%
	\bookpart {
		\header {
			title = "Medley-1"
			subtitle = ##f
			picture = ##f}
		\tocSection \markup { Medley-1 } 
		\tocItem \markup {1. The Bumpy Old Road - parts 1 & 2}
		\include "../Hornpipes/Bumpy_old_road_1.ly" 
%		\pageBreak
		\tocItem \markup {2. Fittie Boatmen}
		\include "../Jigs/Fittie_boatmen_1.ly" 
%		\pageBreak
		\tocItem \markup {3. Mac an Irish}
		\include "../Strathspeys/Mac_an_Irish.ly" 
		\pageBreak
		\tocItem \markup {4. Drowsy Maggie}
		\include "../Reels/Drowsy_maggie.ly" 
%		\pageBreak
		\tocItem \markup {5. Lament for Jef ar Penven}
		\include "../Airs/Lament_for_jef.ly" 
%		\pageBreak
		\tocItem \markup {6. An Dro}
		\include "../Hornpipes/An_dro_1.ly" 
		\pageBreak
		}
%		
	\bookpart {
		\header {
			title = "Medley-2"
			subtitle = ##f
			picture = ##f}
		\tocSection \markup { Medley-2 } 
		\tocItem \markup {1. The Bumpy Old Road - parts 1 & 2}
		\include "../Hornpipes/Bumpy_old_road_1.ly" 
%		\pageBreak
		\tocItem \markup {2. Fittie Boatmen}
		\include "../Jigs/Fittie_boatmen_1.ly" 
%		\pageBreak
		\tocItem \markup {3. Mist Covered Mountains}
		\include "../Airs/Mist_covered_mountains.ly" 
		\pageBreak
		\tocItem \markup {4. Lady Carmichael}
		\include "../Strathspeys/Lady_carmichael.ly" 
%		\pageBreak
		\tocItem \markup {5. Yester House}
		\include "../Strathspeys/Yester_house.ly" 
%		\pageBreak
		\tocItem \markup {6. Drowsy Maggie}
		\include "../Reels/Drowsy_maggie.ly" 
		\pageBreak
		\tocItem \markup {7. Bumpy Old Road - parts 3 & 4}
		\include "../Hornpipes/Bumpy_old_road_2.ly" 
%		\pageBreak
		}
%
}%end book
