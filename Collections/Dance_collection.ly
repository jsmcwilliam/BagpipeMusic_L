\version "2.18.0"    

#(ly:set-option 'relative-includes #t) 
#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 15) % set staff-size when ready to print

date = #(strftime "%d-%m-%Y" (localtime (current-time)))
tocSection = #(define-music-function (parser location text) (markup?) 
        	(add-toc-item! 'tocSectionMarkup text)) 
VoltaTxtTwoFour = \markup { 2. \text\fontsize #2 {--Parts: 2 & 4}}

\include "bagpipe_extra.ly"
\include "bagpipe_new.ly"
\include "BP_format.ly"

\book {

\header {
    title = "Light Music for the Highland Bagpipe"
    subtitle = "Dance collection"
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
			title = "Hornpipes"
			subtitle = ##f}
		\tocSection \markup { Hornpipes } 
		\tocItem \markup {1. Crossing the Minch }
		\include "../Hornpipes/Crossing_the_minch.ly"
		\pageBreak
		\tocItem \markup {2. The Man from Skye }
		\include "../Hornpipes/Man_from_skye.ly"
		\pageBreak
		\tocItem \markup { Ballachulish Walkabout }
		\include "../Hornpipes/Ballachulish_walkabout.ly"
		\pageBreak
		}
	
	\bookpart {
		\header {
			title = "Jigs"
			subtitle = ##f}
		\tocSection \markup { Jigs }
		\tocItem \markup {1. The Irish Washerwoman }
		\include "../Jigs/Irish_washer_woman.ly"
%		\pageBreak
		\tocItem \markup {2. Paddy's Leather Breeches }
		\include "../Jigs/Paddys_leather_breeches.ly"
		\pageBreak
		\tocItem \markup {1. Barbara's Jig }
		\include "../Jigs/Barbaras_jig.ly"
%		\pageBreak
		\tocItem \markup {2. The Seagull }
		\include "../Jigs/Seagull.ly"
		\pageBreak
		\tocItem \markup {Braes of Mellanish }
		\include "../Jigs/Braes_of_mellinish.ly"
%		\pageBreak
		}		
		
	\bookpart {
		\header {
			title = "Strathspeys"
			subtitle = ##f}
		\tocSection \markup { Strathspeys }
		\tocItem \markup {1. Loudon's Bonny Woods and Braes}
		\include "../Strathspeys/Loudons_bonny_woods.ly"
%		\pageBreak
		\tocItem \markup {2. Inverness Rant}
		\include "../Strathspeys/Inverness_rant_1.ly"
%		\pageBreak
		\tocItem \markup {3. The Devil in the Kitchen}
		\include "../Strathspeys/Devil_in_the_kitchen.ly"
		\pageBreak
		\tocItem \markup {Caledonian Society of London}
		\include "../Strathspeys/Caledonian_society_of_london.ly"
		\pageBreak
		\tocItem \markup {John Roy Stewart}
		\include "../Strathspeys/John_roy_stewart.ly"
		\pageBreak
		}

	\bookpart {
		\header {
			title = "Reels"
			subtitle = ##f}
		\tocSection \markup { Reels } 
		\tocItem \markup { 1. The Famouse Ballymote }
		\include "../Reels/Famouse_ballymote.ly"
%		\pageBreak
		\tocItem \markup { 2. The Piper of Drummond }
		\include "../Reels/Piper_of_drummond.ly"
		\pageBreak
		\tocItem \markup { Lord MacDonald }
		\include "../Reels/Lord_macdonald.ly"
		\pageBreak
		\tocItem \markup { The Rejected Suitor }
		\include "../Reels/Rejected_suitor.ly"
		\pageBreak
		\tocItem \markup { Sandy Cameron }
		\include "../Reels/Sandy_cameron.ly"
		\pageBreak
		\tocItem \markup { Twisted Fingers }
		\include "../Reels/Twisted_fingers.ly"
%		\pageBreak
		}
				
	\bookpart {
		\header {
			title = "Other"
			subtitle = ##f}
		\tocSection \markup { Other }
		\tocItem \markup {1. It came upon a midnight clear}
		\include "../Other/It_came_upon_a_midnight_clear.ly"
%		\pageBreak
		}

}%end book