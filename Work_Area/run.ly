\version "2.19.80"

#(ly:set-option 'point-and-click #f)

#(set-global-staff-size 16)
#(set-default-paper-size "a4" 'landscape)

%\include "bagpipe.ly"
%\include "bagpipe_extra.ly"
\include "bagpipe_new.ly"
%\include "format.ly"

% Local tweaks
\layout {
    indent = 0.0\cm

    \context {
        \Score
        \remove "Bar_number_engraver"
        \override VoltaBracket.Y-offset = #7.5
        \override VoltaBracket.height = #2.2
    }
}
\paper {
    ragged-bottom = ##t
}

% The tune to generate.
\include "bells_of_perth.book.ly"                                    
