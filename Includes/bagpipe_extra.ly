\version "2.22.0"

%{
    Locally customized stuff and helper macros.
%}

\allowVoltaHook "|"
% \allowVoltaHook "||"

% Used when substituting a single bar or just a few notes to show alternative.
altBracket = #(define-music-function (tag) (string?) #{
    \once \override Score.VoltaBracket.shorten-pair = #'(0.3 . 0.3)
    \set Score.repeatCommands = #(list (list 'volta (markup #:number tag)))
#})
altBracketText = #(define-music-function (tag) (string?) #{
    \once \override Score.VoltaBracket.shorten-pair = #'(0.3 . 0.3)
    \set Score.repeatCommands = #(list (list 'volta (markup #:text tag)))
#})

% End previous altBracket thingy.
altBracketEnd = { \set Score.repeatCommands = #'((volta #f)) }

markMark = #(define-music-function (text) (markup?) #{
    \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
    \mark $text
#})

markText = #(define-music-function (text) (string?) #{
    \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
    \mark \markup $text
#})

markMarkEol = #(define-music-function (text) (markup?) #{
    \once \override Score.RehearsalMark #'break-visibility = #end-of-line-visible
    \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
    \mark $text
#})

markTextEol = #(define-music-function (text) (string?) #{
    \once \override Score.RehearsalMark #'break-visibility = #end-of-line-visible
    \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
    \mark \markup $text
#})

markMarkEolDown = #(define-music-function (text) (markup?) #{
    \once \override Score.RehearsalMark #'break-visibility = #end-of-line-visible
    \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
    \once \override Score.RehearsalMark #'direction = #DOWN
    \mark $text
#})

markTextEolDown = #(define-music-function (text) (string?) #{
    \once \override Score.RehearsalMark #'break-visibility = #end-of-line-visible
    \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
    \once \override Score.RehearsalMark #'direction = #DOWN
    \mark \markup $text
#})

markDCalFine = \markMarkEolDown \markup { \italic "D.C. al Fine" }
markFine = \markMarkEolDown \markup { \italic "Fine" }

barLength = #(define-music-function (x y) (number? number?) #{
    \set Score.measureLength = #(ly:make-moment x y)
#})

% TOC formatting
\paper {
  tocItemMarkup = \markup { \fill-line {
    \override #'(line-width . 80)
    \fill-with-pattern #1 #RIGHT . \fromproperty #'toc:text \fromproperty #'toc:page
    }
  }
  tocSubheadMarkup = \markup \column {
    \hspace #1
    \fill-line { \null \bold \fromproperty #'toc:text \null }
    \hspace #1
  }
}
tocSubhead = #(define-music-function (text) (markup?)
               (add-toc-item! 'tocSubheadMarkup text))

%{
convert-ly (GNU LilyPond) 2.22.1  convert-ly: Processing `'...
Applying conversion: 2.19.2, 2.19.7, 2.19.11, 2.19.16, 2.19.22,
2.19.24, 2.19.28, 2.19.29, 2.19.32, 2.19.39, 2.19.40, 2.19.46,
2.19.49, 2.20.0, 2.21.0, 2.21.2, 2.22.0
%}
