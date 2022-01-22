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

\defineBarLine ":|.-.|" #'(":|." ".|" "|.")
\defineBarLine "|.-.|:" #'("|." ".|:" "|.")

\score {

    \new Staff  {
    \set Staff.midiInstrument = #"bagpipe"    
    \time 4/4
    \tempo 4 = 100
%    \bagpipeKey
    \hideKeySignature
    \quarterBeaming			

    % Part 1
    \repeat volta 2 {
    \bar ".|:"
 \partial 8  e8 |
 \grg d16 [ \hslurb b8. ] \dblb b16 [ \gre a8. ] \grg G8. [ a16 ] \dblb b16 [ e8. ] |
 \thrwd d16 [ \gre G8. ] \dblb b16 [ \gre G8. ] \whslurd d16 [ \gre G8. ] \dblb b16 [ e8. ] |
 \grg d16 [\hslurb b8. ] \dblb b16 [ \gre a8. ] \grg G8. [ a16 ] \dblb b16 [ e8. ] |
 \dblg g8. [ e16 ] \grg f16 [ e16 d8 ] \dble e4 \dblg g4 
 \bar ":|.-.|" \break }
    
    % Part 2
 \thrwd d8. [ e16 ] \dblg g8. [ e16 ] \dblA A4 \hslure e8. [ f16 ] |
 \dblg g8. [ e16 ] \thrwd d8. [ b16 ] \dblg g4 \whslurd d8. [ e16 ] |
 \thrwd d8. [ e16 ] \dblg g8. [ e16 ] \dblA A4 \hslure e8. [ f16 ] |
 \dblg g8. [ e16 ] \grg f16 [ e16 d8 ] \dble e4 \dblg g4 | 
 \break

 \thrwd d8. [ e16 ] \dblg g8. [ e16 ] \dblA A4 \hslure e8. [ A16 ] |
 \dblg g8. [ e16 ] \thrwd d8. [ b16 ] \dblg g4 \whslurd d8. [ e16 ] |
 \dblA A8. [ f16 ] \dblg g8. [ f16 ] \dble e8. [ d16 ] \dblb b16 [ \gre a8. ] |
 \grip e4 \grg f16 [ e16 d8 ] \dble e4 \dblg g4 
 \bar "|.-.|:" \break

    % Part 3
 \repeat volta 2 {
%       \bar ".|:"
 \grA G8. [ a16 ] \dblb b16 [ \gre G8. ] \whslurd d16 [ \gre G8. ] \dblb b16 [ e8. ] |
 \grg d16 [ \hslurb b8. ] \thrwd d8. [ e16 ] \grg d16 [\hslurb b8. ] \dblb b16 [ \gre a8. ] |
 \grA G8. [ a16 ] \dblb b16 [ \gre G8. ] \whslurd d16 [ \gre G8. ] \dblb b16 [ e8. ] |
 \dblg g8. [ e16 ] \grg f16 [ e16 d8 ] \dble e4 \dblg g4 
 \bar ":|.-.|" \break }
    
    % Part 4
 \thrwd d8. [ e16 ] \dblg g8. [ A16 ] g16 [ f16 e8 ] \dblg g4 |
 \thrwd d8. [ e16 ] \dblg g8. [ e16 ] \dblA A4 \grip A4 |
 \thrwd d8. [ e16 ] \dblg g8. [ A16 ] g16 [ f16 e8 ] \dblg g4 |
 \hdblb b16 [ \gre a8. ] \grg b16 [ c16 d8 ] \dble e4 \dblg g4 |
 \break
    

 \thrwd d8. [ e16 ] \dblg g8. [ A16 ] g16 [ f16 e8 ] \dblg g4 |
 \thrwd d8. [ e16 ] \dblg g8. [ e16 ] A4 \hslure e8. [ f16 ] |
 \dblg g8. [ A16 ] g16 [ f16 e8 ] \thrwd d8. [ e16 ] \grg f16 [ e16 d8 ] |
 \dblb b16 [ \gre a8. ] \grg b16 [ c16 d8 ] \dble e4 \dblg g4 \bar "|." \break     

    } %end staff
    
  \header {
    meter = "Strathspey"
    piece = "John Roy Stewart"
    composer = "Arr. by W. Ferguson"
    parttagline = "Copied by John S. McWilliam"

  }
  	
%Generation of midi files can be removed here.
%  \midi {}

}%end score
