\version "2.18.0"    

tocSection = #(define-music-function (parser location text) (markup?) 
        	(add-toc-item! 'tocSectionMarkup text)) 

\include "bagpipe.ly" %(Original)
\include "../Includes/BP_format.ily" 	

\book {

\header {
    title = "Griffin Pipes & Drums"
    subtitle = "Colection"
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
		\tocItem \markup {1. Corriehoilies Welcome to the Northern Meeting}
		\include "../2-4_marches/Corriechoillies_welcome.ly"
		\tocItem \markup {2. Teribus }
		\include "../2-4_marches/Teribus.ly"
%		\pageBreak
		}
%
	\bookpart {
		\header {
			title = "3/4 Marches"
			subtitle = ##f}
		\tocSection \markup { 3/4 Marches } 
		\tocItem \markup {1. Green Hills of Tyrol }
		\include "../3-4_marches/Green_hills_4.ly" 
		\tocItem \markup {2. Lochanside}
		\include "../3-4_marches/Lochanside_4.ly" 
		\tocItem \markup {3. When the Battles O'er }
		\include "../3-4_marches/When_the_battles_oer_4.ly" 
%		\pageBreak
		}	
%
			\bookpart {
		\header {
			title = "4/4 Marches"
			subtitle = ##f}
		\tocSection \markup { 4/4 Marches } 
		\tocItem \markup {1. Bonnie Lass o' Fyvie }
		\include "../4-4_marches/Bonnie_lass_o_fyvie_4.ly" 
		\tocItem \markup {2. Cockney Jocks }
		\include "../4-4_marches/Cockney_jocks.ly" 
		\pageBreak
		\tocItem \markup {3. Flett from Flotta }
		\include "../4-4_marches/Flett_from_flotta.ly" 
		\tocItem \markup {4. Old Rustic Bridge }
		\include "../4-4_marches/The_old_rustic_bridge.ly" 
		\pageBreak
		\tocItem \markup {5. Rowan Tree }
		\include "../4-4_marches/Rowan_tree_4.ly" 
		\tocItem \markup {6. Scotland the Brave }
		\include "../4-4_marches/Scotland_the_brave_4.ly" 
		\pageBreak
		\tocItem \markup {7. Thistle of Scotland }
		\include "../4-4_marches/Thistle_of_scotland.ly" 
%		\pageBreak
		}	
%
	\bookpart {
		\header {
			title = "5/4 Marches"
			subtitle = ##f}
		\tocSection \markup { 5/4 Marches } 
		\tocItem \markup {1. Cullen Bay }
		\include "../9-8_marches/Cullen_bay.ly"
%		\pageBreak
		}
%
        \bookpart {
		\header {
			title = "6/8 Marches"
			subtitle = ##f}
		\tocSection \markup { 6/8 Marches } 
		\tocItem \markup {1. Mrs Lily Christie }
		\include "../6-8_marches/Mrs_lily_christie.ly"
                \pageBreak
		\tocItem \markup {2. Pipe Major Donald MacLean of Lewis }
		\include "../6-8_marches/Pipe_major_donald_mclean_of_lewis.ly"
		\tocItem \markup {3. Rab's Wedding }
		\include "../6-8_marches/Rabs_wedding_4.ly"
%		\pageBreak
		}
%
	\bookpart {
		\header {
			title = "Airs"
			subtitle = ##f}
		\tocSection \markup { Airs }
		\tocItem \markup {1. Amazing Grace }
		\include "../Airs/Amazing_grace_4.ly"
		\tocItem \markup {2. Going Home }
		\include "../Airs/Going_home_4.ly"
		\tocItem \markup {3. Highland Cathedral }
%                \pageBreak
                \include "../Airs/Highland_cathedral_4.ly"
		\tocItem \markup {4. Leaving Lismore }
		\include "../Airs/Leaving_lismore_4.ly"
		\tocItem \markup {5. Skye Boat Song }
		\include "../Airs/Skye_boat_song_4.ly"
		\tocItem \markup {6. We're No' Awa' Tae Bide Awa' }
		\include "../Airs/Were_no_awa.ly"
%		\pageBreak
		}
%{
		\bookpart {
		\header {
			title = "Competition Marches"
			subtitle = ##f
			picture = ##f}
		\tocSection \markup { Competition Marches } 
		\tocItem \markup {1. }
		\include "../2-4_marches/.ly"
		\pageBreak
		}
		
		\bookpart {
		\header {
			title = "March, Strathspey & Reel"
			subtitle = ##f
			picture = ##f}
		\tocSection \markup { March, Strathspey & Reel } 
		\tocItem \markup {1. Balmoral Highlanders }
		\include "../2-4_marches/Balmoral_highlanders_4.ly"
		\pageBreak				
		}
%
		\bookpart {
		\header {
			title = "Medley-1"
			subtitle = ##f
			picture = ##f}
		\tocSection \markup { Medley-1 } 
		\tocItem \markup {1. }
		\include "../Polka/.ly" 
		\pageBreak
		}
		
		\bookpart {
		\header {
			title = "Medley-2"
			subtitle = ##f
			picture = ##f}
		\tocSection \markup { Medley-2 } 
		\tocItem \markup {1. }
		\include "../Airs/.ly" 
		\pageBreak
		}
%}

}%end book
