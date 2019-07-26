\version "2.19.83"

%Header formatting for bagpipe tunes. Customize to get name in the tag line.
%Bring in the time/date package. Set format to month day, year. Set format for
%headers: piece, meter and composer.

today = #(strftime "%d-%m-%Y" (localtime (current-time)))
\paper {
%  #(set-default-paper-size "a4landscape")
%    ragged-bottom = ##t
    tagline = \markup {
        \line {
            "Copied by John McWilliam,"
            \concat { "(rev. " \today ")" }
        }
    }

	scoreTitleMarkup = \markup {
	\column {
		\fill-line {
		        \fromproperty #'header:meter
			\fontsize #4 \bold \fromproperty #'header:piece
			\fromproperty #'header:composer
		}}}

}