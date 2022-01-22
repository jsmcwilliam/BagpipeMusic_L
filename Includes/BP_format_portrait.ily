\version "2.22.1"

%Header formatting for bagpipe tunes. Customize to get name in the tag line.
%Bring in the time/date package. Set format to month day, year. Set format for
%headers: piece, meter and composer.

#(set-global-staff-size 12)
%#(ly:set-option 'relative-includes #t) 

today = #(strftime "%d-%m-%Y" (localtime (current-time)))
\paper {
    #(set-paper-size "a4" 'portrait)
    ragged-bottom = ##t
    tagline = \markup {
        \line {
            "Copied by John McWilliam,"
            \concat { "(rev. " \today ")" }
        }
    }
	scoreTitleMarkup = \markup {
	\column {
		\fill-line {
			\fontsize #4 \bold \fromproperty #'header:piece
			\fromproperty #'header:meter
			\fromproperty #'header:composer
		}}}

}
