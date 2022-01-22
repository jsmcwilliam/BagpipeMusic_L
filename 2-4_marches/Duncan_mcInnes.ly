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

\score {

    \new Staff  {
    \time 2/4	    
    \tempo 4 = 80   
    \hideKeySignature
    \quarterBeaming
    \bar ".|:"

	% Part 1
	\partial 8
	\repeat volta 2 {
		e8
		\grg a8.[ b16] \grip c8[ \thrwd d]
		\grg e8.[ f16] \dblc c8[ \gre a]
		\dblc c8[ e] \grg a[ \grd c]
		\dble e8.[ d16] \dblb b8[ \gre G]
		\break

		\set Score.repeatCommands = #'((volta "2.--2."))		
		\grg a8.[ b16] \grip c8[ \thrwd d]
		\grg e8.[ f16] \dblc c8[ \grg e]
		\thrwd d8[ \gre G] \dble e8.[ d16]
		\dblb b8[ \gre a] \wbirl a8
		\set Score.repeatCommands = #'((volta #f))
		\break	}

	%Part 2	
	\repeat volta 2 {
		b8
		\gbirl a8.[ A16] \grg A8[ e]
		\dblg g8.[ A16] \grf g8[ \grA e]
		\dblc c8[ \gre a] \dblc c[ \dblg g]
		\hdble e8.[ d16] \dblb b8[ \gre G]
		\break	
		
		\set Score.repeatCommands = #'((volta "1."))
		\gbirl a8.[ A16] \grg A8[ e]
		\dblg g8.[ A16] \grf g8[ \grA e]
		\thrwd d8[ \gre G] \dble e8.[ d16]
		\dblb b8[ \gre a] \wbirl a8
		\set Score.repeatCommands = #'((volta #f))
		\break	}			%Jump to time 2 not performed!

	%Part 3
	\repeat volta 2 {	
		\grg e16.[ d32]
		\dbld d16[ c8.] \grg a8[ \grd c]
		\grg e8.[ f16] \dblc c8[ \gre a]
		\dble e4 \grg a8[ \thrwd d]
		\dblc c4 \dblb b8[ \gre G]
		\break
		
		\set Score.repeatCommands = #'((volta "2.--4."))
		\dbld d16[ c8.] \grg a8[ \grd c]
		\grg e8.[ f16] \dblc c8[ \grg e]
		\thrwd d8[ \gre G] \dble e8.[ d16]
		\dblb b8[ \gre a] \wbirl a8
		\set Score.repeatCommands = #'((volta #f))
		\break	}

	%Part 4	
	\repeat volta 2 {	
		\grg c16.[ d32]
		\dble e8[ c] \dblA A8.[ g16]
		\hdblf f8[ e] \dblc c[ \gre a]
		\dble e4 \grg a8[ \thrwd d]
		\dblc c4 \dblb b8[ \gre G]
		\break
		
		\set Score.repeatCommands = #'((volta "1."))
		\dble e8[ c] \dblA A8.[ g16]
		\hdblf f8[ e] \dblc c[ \grg e]
		\thrwd d8[ \gre G] \dble e8.[ d16]
		\dblb b8[ \gre a] \wbirl a8
		\set Score.repeatCommands = #'((volta #f))
		\break	}			%Jump to time 2 not performed
}%end Staff

	\header {
		meter = "March"
		piece = "Duncan McInnes"
		composer = "Traditional"
		title = ##f
		subtitle = ##f
		}
		
	\layout { }
            
%Generation of midi files can be removed here.

%	\midi { }
	
}%end score
