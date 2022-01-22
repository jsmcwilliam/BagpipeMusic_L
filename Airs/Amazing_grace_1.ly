\version "2.22.1"

% When ready to include in collection:	
%	1. Comment out top section with \Include file(s)
%					
%	2. \midi section if present.
%	3. Option to comment out "meter" from title e.g. if first tune following
%	   section title.
                                    
%Comment out from here
%{
\include "bagpipe.ly" %(default Lilypond formats)
\include "../Includes/BP_format_portrait.ily" 	

%to here..........................................................
%}

common = {
  \time 3/4
  %  \bagpipeKey
  \hideKeySignature
  \quarterBeaming
  \set Staff.midiInstrument = #"bagpipe"
}

musicA = {
  \common

  \grg \partial 4 a8. d16
  \slurd d2 \grg f8[ e32 d16.]
  \grg f2 \grg f8 e
  \thrwd d2 \grg b4
  \grG a2 \grg a8. d16
  \slurd d2 \grg f8[ e32 d16.]
  \grg f2 \grg e8. f16
  \dblA A2 \grg A4
  \grg A2 f8. A16
  \break

  \grg A2 \hdblf f8[ e32 d16.]
  \grg f2 \grg f8 e
  \thrwd d2 \grg b4
  \grG a2 \grg a8. d16
  \slurd d2 \grg f8[ e32 d16.]
  \grg f2 e4
  \thrwd d4 c b
  \grG a2\fermata
  \bar "|."
}

musicB = {
  \common

  \grg \partial 4 a8. d16
  \grg f2 a4
  \grg d2 \dbld d8. c16
  \grg b2 \grg G4
  \grg a2 \grg a8. d16
  \grg f2 \grg f8[ e32 d16.]
  \slurd d2 \grg c8. d16
  \grg f4 e b
  \dblA A2 f8. A16
  \break

  a8. d16 \grg f8. A16 f8[ e32 d16.]
  \slurd d4. a8 \dbld d8. c16
  \grg b4. d8 \grA gflat8. d16
  \grg f2 \grg a8. d16
  \grg f2 \grg f8[ e32 d16.]
  \slurd d4 \grg c e
  \grA gflat4 f e
  f8 e f4\fermata
  \bar "|."
}

musicC = {
  \common

  \grg \partial 4 a4
  d2 A4
  \hdblf f2 \grg b8. a16
  \gre G4. \grg b8 d4
  \grg b16 \grG a8. ~ a4 \grg a
  d2 A4
  f4 d \grg c8. d16
  \grg b2 f4
  \dble e2 \grg a4
  \break

  d2 A4
  \hdblf f2 \grg b8. a16
  \gre G4. \grg b8 d4
  \grg b16 \grG a8. ~ a4 \grg a
  d2 A4
  \hdblf f4 e a
  \grA gflat4 f e
  \thrwd d2\fermata
  \bar "|."
}

\score {

  \new StaffGroup <<
    \new Staff \musicA
    \new Staff \musicB
    \new Staff \musicC
  >>

    
  \header {
    meter = "Hymn"
    piece = "Amazing Grace"
    composer = "Trad."
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score

