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
    title = "Light Music for the Highland Bagpipe"
    subtitle = "March collection"
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
		\tocItem \markup {1. Highland Laddie}
		\include "../2-4_marches/Highland_laddie.ly"
%		\pageBreak
		\tocItem \markup {2. The High Road to Gairloch}
		\include "../2-4_marches/High_road_to_gairloch_1.ly"
%		\pageBreak
		\tocItem \markup {3. A Mans a Man for a' that}
		\include "../2-4_marches/A_mans_a_man_for_a_that.ly"
%		\pageBreak
		\tocItem \markup {4. Marie's Wedding}
		\include "../2-4_marches/Maries_wedding_1.ly" 
		\pageBreak
		\tocItem \markup {1. Campbell's Fairwell to Redcastle}
		\include "../2-4_marches/Campbells_fairwell.ly"
%		\pageBreak
		\tocItem \markup {2. Earl of Mansfield}
		\include "../2-4_marches/Earl_of_mansfield.ly"
%		\pageBreak
		\tocItem \markup {3. Greenwood Side}
		\include "../2-4_marches/Greenwood_side.ly"
		\pageBreak
		\tocItem \markup {4. Men of Argyll}
		\include "../2-4_marches/Men_of_argyll.ly"
		\pageBreak
		\tocItem \markup {Arthur Bignold}
		\include "../2-4_marches/Arthur_bignold.ly"
		\pageBreak
		\tocItem \markup {Balmoral Highlanders}
		\include "../2-4_marches/Balmoral_highlanders.ly"
		\pageBreak
		\tocItem \markup {Donald MacLean's Farewell to Oban}
		\include "../2-4_marches/Donald_macleans_farewell_to_oban.ly"
		\pageBreak
		\tocItem \markup {Dugald MacColl}
		\include "../2-4_marches/Dugald_maccoll.ly"
		\pageBreak
		\tocItem \markup {Duncan McInnes}
		\include "../2-4_marches/Duncan_mcinnes.ly"
		\pageBreak
		\tocItem \markup {Leaving Glen Urquhuart}
		\include "../2-4_marches/Leaving_glen_urquhart.ly"
		\pageBreak
		\tocItem \markup {Road to the Isles}
		\include "../2-4_marches/Road_to_the_isles_2.ly"
		\pageBreak
		}

	\bookpart {
		\header {
			title = "3/4 Marches"
			subtitle = ##f}
		\tocSection \markup { 3/4 Marches } 
		\tocItem \markup {Pipe Major J.K. Cairns}
		\include "../3-4_marches/Pipe_major_jk_cairns.ly"
%		\pageBreak
		}	

			\bookpart {
		\header {
			title = "4/4 Marches"
			subtitle = ##f}
		\tocSection \markup { 4/4 Marches } 
		\tocItem \markup {1. Badge of Scotland}
		\include "../4-4_marches/Badge_of_scotland.ly"
%		\pageBreak
		\tocItem \markup {2. Intercontinental Gathering}
		\include "../4-4_marches/Intercontinental_gathering.ly"
		\pageBreak
		\tocItem \markup {3. Jimmie Findlater}
		\include "../4-4_marches/Jimmie_findlater.ly"
		\pageBreak
		\tocItem \markup {1. Bonnie Lass o' Fyvie}
		\include "../4-4_marches/Bonnie_lass_o_fyvie.ly"
%		\pageBreak
		\tocItem \markup {2. Comin Hame}
		\include "../4-4_marches/Comin_hame.ly"
%		\pageBreak
		\tocItem \markup {3. Meeting of the Waters}
		\include "../4-4_marches/Meeting_of_the_waters.ly"
		\pageBreak
		\tocItem \markup {4. Lord Lovat's Lament}
		\include "../4-4_marches/Lord_lovats_lament.ly"
%		\pageBreak
		}	

	\bookpart {
		\header {
			title = "6/8 Marches"
			subtitle = ##f}
		\tocSection \markup { 6/8 Marches } 
		\tocItem \markup {1. MacNeils of Ugadale}
		\include "../6-8_marches/Macneils_of_ugadale.ly"
%		\pageBreak
		\tocItem \markup {2. Pile Major Donald McLean of Lewis}
		\include "../6-8_marches/Pipe_major_donald_mclean_of_lewis.ly"
		\pageBreak
		\tocItem \markup {3. Frank Thomson}
		\include "../6-8_marches/Frank_thomson.ly"
%		\pageBreak
		\tocItem \markup {4. Cock o' the North}
		\include "../6-8_marches/Cock_o_the_north.ly"
		\pageBreak 
		\tocItem \markup {1. John D. Burgess}
		\include "../6-8_marches/John_d_burgess.ly"
%		\pageBreak
		\tocItem \markup {2. 10th. Bat. Lt._Infantry crossing the Rhine}
		\include "../6-8_marches/Tth_bat_lt_infantry.ly"
		\pageBreak		
		\tocItem \markup {3. Mrs Lily Christie}
		\include "../6-8_marches/Mrs_lily_christie.ly"
%		\pageBreak
		\tocItem \markup {4. Rab's Wedding}
		\include "../6-8_marches/Rabs_wedding.ly"
		\pageBreak
		\tocItem \markup {1. Angus MacKinnon}
		\include "../6-8_marches/Angus_mackinnon.ly"
%		\pageBreak
		\tocItem \markup {2. Ellen Orr}
		\include "../6-8_marches/Ellen_orr.ly"
		\pageBreak
		\tocItem \markup {3. The Braemar Gathering}
		\include "../6-8_marches/Braemar_gathering.ly" 
%		\pageBreak
		\tocItem \markup {1. Redford Cottage}
		\include "../6-8_marches/Redford_cottage.ly" 
		\pageBreak
		\tocItem \markup {2. Dr. Ross's Welcome to the Argyllshire Gathering}
		\include "../6-8_marches/Dr_ross.ly" 
		\pageBreak
		\tocItem \markup {3. Leaving Port Askaig}
		\include "../6-8_marches/Leaving_port_ascaig_1.ly" 
%		\pageBreak
		\tocItem \markup {4. Dovecote Park}
		\include "../6-8_marches/Dovecote_park.ly" 
		\pageBreak
		\tocItem \markup {Blue Bonnets oer the Border}
		\include "../6-8_marches/Blue_bonnets.ly" 
		\pageBreak
		\tocItem \markup {Glendaruel Highlanders}
		\include "../6-8_marches/Glendaruel_highlanders.ly" 
		\pageBreak
		}

			\bookpart {
		\header {
			title = "9/8 Marches"
			subtitle = ##f}
		\tocSection \markup { 9/8 Marches } 
		\tocItem \markup {Heights of Dargai}
		\include "../9-8_marches/Heights_of_dargai.ly"
%		\pageBreak
		\tocItem \markup {Battle of the Somme}
		\include "../9-8_marches/Battle_of_the_somme.ly"
%		\pageBreak
		}	

	\bookpart {
		\header {
			title = "Airs"
			subtitle = ##f}
		\tocSection \markup { Airs }
		\tocItem \markup {Auld Lang Syne }
		\include "../Airs/Auld_lang_syne.ly"
%		\pageBreak
		\tocItem \markup {Dark Isle }
		\include "../Airs/Dark_isle.ly"
%		\pageBreak
		\tocItem \markup {Flower of Scotland }
		\include "../Airs/Flower_of_scotland.ly"
		\pageBreak
		\tocItem \markup {Flowers of the Forest }
		\include "../Airs/Flowers.ly"
%		\pageBreak
		\tocItem \markup {Going Home  }
		\include "../Airs/Going_home.ly"
%		\pageBreak
		\tocItem \markup {Leaving Lismore }
		\include "../Airs/Leaving_lismore.ly"
		\pageBreak
		\tocItem \markup {Loch Etive Side }
		\include "../Airs/Loch_etive_side.ly"
%		\pageBreak
		\tocItem \markup {Skye Boat Song }
		\include "../Airs/Skye_boat_song.ly"
%		\pageBreak
		\tocItem \markup {Waters of Kylesku }
		\include "../Airs/Waters_of_kylesku.ly"
		\pageBreak
		\tocItem \markup {Westering Home }
		\include "../Airs/Westering_home.ly"
		\pageBreak
		}

}%end book
