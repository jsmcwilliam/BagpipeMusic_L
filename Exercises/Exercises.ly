\version "2.18.0"

#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a4" 'landscape)

\include "bagpipe.ly" 
\include "../Includes/BP_format.ily" 	

common = {
%  \bagpipeKey
  \time 2/4
  \override TextScript #'staff-padding = #2
  \override TupletBracket #'bracket-visibility = ##f
}

\book {
  \header {
    title = "EXERCISES"
    subtitle = "Memorize and play on the pipes"
    parttagline = "Copied by John S. McWilliam"
  }

% Part 1
\score {
    \new staff {	
    \common	
    \bar ".|:"
    		
    \repeat volta 2 {
    	 \times 2/3 {\grg G8 \grd G \gre G} \times 2/3 {\grg a8 \grd a \gre a} 
    	 \times 2/3 {\grg b8 \grd b \gre b} \times 2/3 { \grg c8 \grd c \gre c}
    	 \times 2/3 {\grg b8 \grd b \gre b} \times 2/3 { \grg a8 \grd a \gre a}
    	 \times 2/3 {\grg G8 \grd G \gre G} \grg G4 \bar ":..:"
    	 \times 2/3 {\grg a8 \grd a \gre a} \times 2/3 { \grg c8 \grd c \gre c} 
    	 \times 2/3 {\grg b8 \grd b \gre b} \times 2/3 { \grg c8 \grd c \gre c}
    	 \times 2/3 {\grg a8 \grd a \gre a} \times 2/3 { \grg c8 \grd c \gre c}
   	 \times 2/3 {\grg b8 \grd b \gre b} \grg a4 \break
    } % end repeat
%{
    \repeat volta 2 {
    \grg c8 \grd a \grg c \grd a |\grg b \grd G \grg b \grd G
    \grg c8 \grd a \grg c \grd a |\grg b \grd G \grg a4 \bar ":..:"
    \dblc c8 \gre a \dblc c \gre a |\dblb b \gre G \dblb b \gre G 
    \times 2/3 {\grg a8 (\grd a \gre a)} \dblc c \gre a
    \times 2/3 {\grg G8 (\grd G \gre G)} \dblb b \gre G \break
    } % end repeat
%}    
    }%end staff    
   
  \header {
    piece = "1. G,D&E Gracenotes"
  }
} %end score

% Part 2
\score {
	\new staff {
	\common
        \bar ".|:"
	\repeat volta 2 {
	\grg G16 a \grg b G \grg a b \grg c a
	\grg b c \grg d b \grg c d \grg e c
	\grg d e \grg f d \grg e f \grA g e
	\grg f g A8~ A4 \bar ":..:"
	
	\times 2/3 {A8 (g f)} \times 2/3 {\grA g (f e)}
	\times 2/3 {\grg f (e d)} \times 2/3 {\grg e (d c)}
	\times 2/3 {\grg d (c b)} \times 2/3 {\grg c (b a)}
	\times 2/3 {\grg b (a G)} \grg a4
	} %end repeat
	} %end staff
  \header {
    piece = "2. Runs and crossings"
  }
	
} %end score

% Part 3
\score {
	\new staff {
	\common
        \bar ".|:"
	\repeat volta 2 {
		\grg a8 \grG a \grg b \grG b
		\grg c \grG c \grg d \grG d
		\grg e \grG e \grg f \grG f
		\grA g \grf g A \grg  A \bar ":..:" 
				
		\times 2/3 {a8 e \gra e} \times 2/3 { b e \gra e}
		\times 2/3 {c e \gra e} \times 2/3 { d e \gra e}
		\times 2/3 {f e \gra e} \times 2/3 { g e \gra e}
		\times 2/3 {A e \gra e} r4 \break
			} %end repeat
	\repeat volta 2 {
		\times 2/3 {a8 f \gre f} \times 2/3 { b f \gre f}
		\times 2/3 {c f \gre f} \times 2/3 { d f \gre f}
		\times 2/3 {e f \gre f} \times 2/3 { g f \gre f}
		\times 2/3 {A f \gre f} r4 \bar ":..:"
		
		\times 2/3 {a8 g \grf g} \times 2/3 { b g \grf g}
		\times 2/3 {c g \grf g} \times 2/3 { d g \grf g}
		\times 2/3 {e g \grf g} \times 2/3 { f g \grf g}
		\times 2/3 {A g \grf g} r4 \break		
	} %end repeat
	\repeat volta 2 {
		\times 2/3 {a8 A \grg A} \times 2/3 { b A \grg A}
		\times 2/3 {c A \grg A} \times 2/3 { d A \grg A}
		\times 2/3 {e A \grg A} \times 2/3 { f A \grg A}
		\times 2/3 {g A \grg A} r4
	} %end repeat
	} %end staff
  \header {
    piece = "3. Echo Beats"
  }	
} %end score

% Part 4
\score {
	\new staff {
	\common
        \bar ".|:"
	\repeat volta 2 {
	\times 2/3 {d8 e d} \times 2/3 {e d e}
	\times 2/3 {c e c} \times 2/3 {e c e}
	\times 2/3 {b e b} \times 2/3 {e b e}
	\times 2/3 {d f d} \times 2/3 {f d f}
	\times 2/3 {c f c} \times 2/3 {f c f}
	\times 2/3 {b f b} \times 2/3 {f b f}
	\times 2/3 {c f c} \times 2/3 {f c f} \break
	
	\times 2/3 {d g d} \times 2/3 {g d g}
	\times 2/3 {c g c} \times 2/3 {g c g}
	\times 2/3 {d A d} \times 2/3 {A d A}
	\times 2/3 {c A c} \times 2/3 {A c A}
	\times 2/3 {b A b} \times 2/3 {A b A}
	\times 2/3 {c A c} \times 2/3 {A c A}
	
	} %end repeat
	} %end staff
  \header {
    piece = "4. Crossings"
  }
	
} %end score

% Part 5
\score {
	\new staff {
	\common
	\time 4/4
        \bar ".|:"
	\repeat volta 2 {
		\grg c8 \grd a \grg c \grd a
		\grg b \grd G \grg b \grd G
		\grg c \grd a \grg c \grd a
		\grg b \grd G \grg a4 \bar ":..:"
		
		\grg c16 \grd a8. \grg c16 \grd a8.
		\grg b16 \grd G8. \grg b16 \grd G8.
		\grg c16 \grd a8. \grg c16 \grd a8.
		\grg b16 \grd G8. \grg a4 %\break
	} %end repeat
			
	\repeat volta 2 {
		\repeat unfold 4 {\grg c16 \grd a8.}
		\repeat unfold 4 {\grg b16 \grd G8.}
		\repeat unfold 4 {\grg c16 \grd b8.}
		\repeat unfold 4 {\grg b16 \grd a8.}
		\repeat unfold 2 {\grg c16 \grd b8. \grg c16 \grd a8.}
		\repeat unfold 2 {\grg b16 \grd a8. \grg b16 \grd G8.}
	} %end repeat

	} %end staff
  \header {
    piece = "5. Tachums"
  }
	
} %end score

% Part 6
\score {
	\new staff {
	\common
        \bar ".|:"
	\repeat volta 2 {
		\dblc c8 \gre a \dblc c \gre a
		\dblb b \gre a \dblb b \gre a
		\dblc c \gre a \dblc c \gre a
		\dblb b \gre a \grg a4 \bar ":..:"
		
		\dblc c16 \gre a8. \dblc c16 \gre a8.
		\dblb b16 \gre G8. \dblb b16 \gre G8.
		\dblc c16 \gre a8. \dblc c16 \gre a8.
		\dblb b16 \gre G8. \grg a4 \break
	} %end repeat
	
	\repeat volta 2 {
		\dblc c8 \gre a \dblc c \gre a |\dblb b \gre G \dblb b \gre G 
		\times 2/3 {\grg a8 (\grd a \gre a)} \dblc c \gre a
		\times 2/3 {\grg G8 (\grd G \gre G)} \dblb b \gre G \break
	} % end repeat

	} %end staff
  \header {
    piece = "6. Strathspey Movements"
  }
	
} %end score

% Part 7
\score {
	\new staff {
	\common
	\time 6/8
        \bar ".|:"
	\repeat volta 2 {
		\grg c8. \grd a16 \gre a8
		\grg c8. \grd a16 \gre a8
		\grg b8. \grd G16 \gre G8
		\grg b8. \grd G16 \gre G8
		\grg c8. \grd a16 \gre a8
		\grg c8. \grd a16 \gre a8
		\grg b8. \grd G16 \gre G8 \grg a4 
	} %end repeat
	} %end staff
  \header {
    piece = "7. Reel Movements"
  }
	
} %end score

% Part 8
\score {
	\new staff {
	\common
	\time 4/4
        \bar ".|:"
	\repeat volta 2 {
	    a4 \grg a16 \grG a \grG a8~ a4 \times 2/3 {\grg a8 (\grG a \grG a) }
	    b4 \grg a16 \grG a \grG a8 b4 \times 2/3 {\grg a8 (\grG a \grG a) }
	    c4 \grg a16 \grG a \grG a8 c4 \times 2/3 {\grg a8 (\grG a \grG a) }
	    d4 \grg a16 \grG a \grG a8 d4 \times 2/3 {\grg a8 (\grG a \grG a) }
%	    \break
	    e4 \grg a16 \grG a \grG a8 e4 \times 2/3 {\grg a8 (\grG a \grG a) }
	    f4 \grg a16 \grG a \grG a8 f4 \times 2/3 {\grg a8 (\grG a \grG a) }
	    g4 \grA a16 \grG a \grG a8 g4 \times 2/3 {\grA a8 (\grG a \grG a) }
	    A4      a16 \grG a \grG a8 A4 \times 2/3 {     a8 (\grG a \grG a) }
	} %end repeat
	} %end staff
  \header {
    piece = "8. Birl"
  }

  } %end score

  % Part 9
\score {
	\new staff {
	\common
	\time 4/4
        \bar ".|:"
	\repeat volta 2 {
		a4 \thrwd d b \thrwd d c \thrwd d \grg d \thrwd d 
		e \thrwd d f \thrwd d g \thrwd d A \thrwd d 
		g \thrwd d f \thrwd d e \thrwd d \grg d \thrwd d 
		c \thrwd d b \thrwd d a \thrwd d r2
	} %end repeat
	} %end staff
  \header {
    piece = "9. D Throw"
  }
	
} %end score

% Part 10
\score {
	\new staff {
	\common
	\time 4/4
        \bar ".|:"
	\repeat volta 2 {
		\thrwd d4 \slurd d \thrwd d \wslurd d
		\thrwd d4 \slurd d \thrwd d \wslurd d
		\thrwd d4 \slurd d \thrwd d \wslurd d
		\thrwd d4 \slurd d \thrwd d \wslurd d \bar ":..:"
		
		b16 \grG b8. c16 \grG c8. e16 \gra e8. f16 \gre f8.
		b16 \grG b8. c16 \grG c8. e16 \gra e8. f16 \gre f8.		
	} %end repeat
	} %end staff
  \header {
    piece = "10. Throws and Strikes"
  }
	
} %end score

% Part 11
\score {
	\new staff {
	\common
	\time 4/4
        \bar ".|:"
	\repeat volta 2 {
		a4 \dblG G b \dbla a c \dblb b d \dblc c 
		e \dbld d f \dble e g \tdblf f e \hdblf f \dblA A r2.
	} %end repeat
	} %end staff
  \header {
    piece = "11. Doublings - practice each note on the scale"
  }
	
} %end score

\pageBreak

% Part 12
\score {
	\new staff {
	\common
	\time 4/4
        \bar ".|:"
	\repeat volta 2 {
		\grg b16 [\grip  c8.] \grg c8 [\dgrip a] 
		\grg b16 [\grip  c8.] \grg b8 [\grip a]
		\grg b16 [\grip  c8.] \grg c8 [\dgrip a]
		\grg b16 [\grip  c8.] \grg b8 [\grip a]
		\grg b16 [\grip  c8.] \grg c16 [\grd a8.]
		\grg b16 [\grip  c8.] \grg b16 [\grd G8.] \bar ":..:" \break
		
		\grg e8 [\grip e] \grg f [\grip f]
		\grA g [\grip g] A [\grip A]
		e8 [\grip e] \grg f [\grip f]
		\grA g [\grip g] A [\grip A]		
	} %end repeat
	} %end staff
  \header {
    piece = "12. Grips"
  }
	
} %end score

% Part 13
\score {
	\new staff {
	\common
	\time 4/4
        \bar ".|:"
	\repeat volta 2 {
		\grg a8. [\taor a16] \grg b8. [\taor b16]
		\grg c8. [\taor c16] \grg b8. [\taor a16]
		\grg d8. [\dtaor a16] \grg e8. [\taor a16]
		\grg c8. [\taor a16] \grg f8. [\taor a16]
	} %end repeat
	} %end staff
  \header {
    piece = "13. Taorluaths - practice from each note on the scale"
  }
	
} %end score

  \paper {
  	  ragged-last = ##t
  	}

% \midi {} %Generation of midi files option.

} %end book