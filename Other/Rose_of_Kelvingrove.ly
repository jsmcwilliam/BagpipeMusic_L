\version "2.18.2"

% When ready to include in collection:	
%	1. Comment out top section with \Include file(s)
%					
%	2. \midi section if present.
%	3. Option to comment out "meter" from title e.g. if first tune following
%	   section title.
                                    
%Comment out from here
%{
\include "bagpipe.ly" %(Original)
\include "../Includes/BP_format.ily" 	

%to here..........................................................
%}

#(allow-volta-hook "||") % enables volta hook outside repeat context

\score {

    \new Staff  {
    \time 4/4	    
    \tempo "Moderato" 4 = 84    
%    \bagpipeKey
    \hideKeySignature
    \compressFullBarRests
    \marchTime      % 4/4 marches are written with numerical time signature and 
                    % with quarter beaming.
    		
    % Part 1
    \partial 4 r4 {R1*3 }
    
    \tweak self-alignment-X #LEFT
    \mark \markup\fontsize #-1 "* (Strike)"

    R1 |r2 r4 \grg a8.d16
    
    \repeat volta 2 {
      \mark \markup { \musicglyph #"scripts.segno" }
      \grg f8 e \grg d c \thrwd d4 \grg a8. d16 | \grg b2.~ b8 \grg b 
      \dblg g f \grg e d \grg b4 \grg G8. d16 |\grg c2. 
      \grg c8. b16 |\grg a4. d8 \grg f4 A8. g16 |\grA g2. d4
    }
    \alternative {
      {\dble e4. \gra e8 \grg f4 e8. d16 |\dble e2. \grg a8. d16}
    
      {\dble e4. \gra e8 \grg f8 e \grg d c |\thrwd d2. \grg a4}
    }
    
    \repeat volta 2 {
      \dblA A4. g8 \grA f4 e |\thrwd d2. b4 
      \dblg g4. f8 \grg e4 \thrwd d |\dbld d2 \dblc c4 \gre a
      \dblA A4. g8 \grA f4 e |\thrwd d4. g8 \grA g2
      \mark \markup { \musicglyph #"scripts.coda" }
      \grA f4. a8 \grg f e \grg d c  
    }
    \alternative {
      {\thrwd d2. \grg a4 }
      {\thrwd d2._"D.S. al Coda (with repeats)" \grg a8. d16 \bar "||"
       \break}
    }  
    
    % Coda
    \mark \markup { \musicglyph #"scripts.coda" }
    \grA f2. a4 |\grg f4 e \grg d c |\thrwd d1~ |d~ |d\fermata \bar "|." 
    % Part 2
    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "Air"
    piece = "The Rose of Kelvingrove"
    composer = "David Knox"
    parttagline = "Copied by John S. McWilliam"
  }
% added layout options. See bagpipe_new.ly (\layout) for default settings
  \layout {
  	  ragged-last = ##t
  	}

% \midi {} %Generation of midi files option.

}%end score
