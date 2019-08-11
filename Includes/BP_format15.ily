\version "2.18.0"

%Header formatting for bagpipe tunes. Customize to get name in the tag line.
%Bring in the time/date package. Set format to month day, year. Set format for
%headers: piece, meter and composer.

#(ly:set-option 'relative-includes #t)
#(set-global-staff-size 15) % set staff-size when ready to print

today = #(strftime "%d-%m-%Y" (localtime (current-time)))

% PM Donald McLean
VoltaTxtTwoFour = \markup { 2. \text\fontsize #2 {--Parts: 2 & 4}}

\defineBarLine "|.-.|" #'("|." ".|" "")
\defineBarLine ":|.-.|" #'(":|." ".|" "") 
\defineBarLine "|.-.|:" #'("|." ".|:" "") 
\defineBarLine ":|.-.|:" #'(":|." ".|:" "|.")


\paper {
    #(set-paper-size "a4" 'landscape)
    indent = 0.0\cm
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

\layout {
    \context {
        \Score
        \remove "Bar_number_engraver"
        \override VoltaBracket #'Y-offset = #7.5
        \override VoltaBracket #'height = #2.2
    }
}
