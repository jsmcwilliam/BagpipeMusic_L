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
    \time 6/8	  
    \tempo 4 = 80   
    \hideKeySignature
    \bar ".|:"
    		
    % Part 1

   \repeat volta 2 {
   \partial 8 e8 
 \dblc c4 b8 \grG a4 \grd c8 
 \dble e4 \gra e8 \dblc c4 e8 
 A4 \grg A8 \slurf g4 f8 
 \dble e4. \gra e4 A8 

   }

 \alternative {
 	 {\hdble e4 \gra e8 \grg f4 e8 
 	 \dble e4 c8 \grG a4 \grd c8 
 	 \dble e4 \gra e8 \thrwd d4 c8 
 	 \grg b4. \taor b4  \break
 }
 	 
 	{
 	\dble e4 \gra e8 \grg f4 g8 
 	\dblA A4 f8 \dble e4 d8 
 	\grg c8 e4 \dblc c4 b8 
 	\gra a4. \wbirl a4 \bar "|."
 	}
}
    % Part 2
    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "Air"
    piece = "Waters of Kylesku"
    composer = "Trad."
    parttagline = "Copied by John S. McWilliam"
  }

% added layout options. See bagpipe_new.ly (\layout) for default settings
  \layout {
  	  ragged-last = ##t
  	}

% \midi {} %Generation of midi files option.

}%end score
