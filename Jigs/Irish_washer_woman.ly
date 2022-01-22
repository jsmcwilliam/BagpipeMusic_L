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
    \tempo 4 = 160 
%    \bagpipeKey
    \hideKeySignature
    \bar ".|:"
    		
    % Part 1
    \repeat volta 2 {
    \partial 8 A8 
 \hdblf f8.  d16 \grG d8  \grg a8.  d16 \grG d8  
 \grg f8. d16 f8  A8.  g16 \grA f8  
 \grA g8.  e16 \gra e8  \grg c8.  e16 \gra e8  
 \grg a8.  \grd c16 e8  \grA g8.  f16 \grg e8   
% \break

 
 \hdblf f8.  d16 \grG d8  \grg a8.  d16 \grG d8  
 \grg f8. d16 f8  A8.  g16 \grA f8  
  g8.  \grA f16 g8  \hdble e8.  c16 e8  
 \grA f8.  d16 \grG d8  \slurd d4 
 \break
    }
    
    % Part 2
    \repeat volta 2 {
 A8 
 \hdblf f8.  d16 \grG d8  A8.  d16 \grG d8  
 \grg f8.  d16 \grG d8  A8.  g16 \grA f8  
 \grA g8.  e16 \gra e8  \grg c8.  e16 \gra e8  
 \grA g8.  e16 \gra e8  \grg f16  A8.  g8   
% \break

 
 \hdblf f8.  d16 \grG d8  A8.  d16 \grG d8  
 \grg f8.  d16 \grG d8  A8.  g16 \grA f8  
 \grA g8. f16 g8  \hdble e8.  c16 e8  
 \grA f8.  d16 \grG d8  \slurd d4
 \break
 }   
    % Part 3
    \repeat volta 2 {
 A8 
 f16  A8. f8  \dbld d8.  c16 d8  
 \grg a8.  d16 \grg f8  A8.  g16 \grA f8  
 g8. \grA f16 g8  \hdble e8.  c16 e8  
 \grg a8.  \grd c16 e8  \grA g8.  f16 \grg e8   
% \break

 
 f16  A8. f8  \dbld d8.  c16 d8  
 \grg a8.  d16 \grg f8  A8.  g16 \grA f8  
  g8. \grA f16 g8  \hdble e8.  c16 e8  
 \grA f8.  d16 \grG d8  \slurd d4
 \break
}
    % Part 4
    \repeat volta 2 {
 e8 
 \grg f4 \grip f8 A8.  g16 \grA f8  
 \grg a8.  d16 \grg f8  A8.  g16 \grA f8  
 \grg e4 \grip e8 \grA g8.  f16 \grg e8  
 \grg a8.  \grd c16 e8  \grA g8.  f16 \grg e8   
% \break
    }
    \alternative {
    	    {
 \grg f4 \grip f8 A8.  g16 \grA f8  
 \grg a8.  d16 \grg f8  A8.  g16 \grA f8  
  g8. \grA f16 g8  \hdble e8.  c16 e8  
 \set Score.measureLength = #(ly:make-moment 5/8)
 \grA f8.  d16 \grG d8  \slurd d4 
 \break
 	    }
 	    {
 \set Score.measureLength = #(ly:make-moment 6/8)
 \grg f16  A8. f8  \dbld d8.  c16 d8  
 \grg a8.  d16 \grg f8  A8.  g16 \grA f8  
 g8.  \grA f16 g8  \hdble e8.  c16 e8  
 \grA f8.  d16 \grG d8  \slurd d4 
 \bar "|." 
 	    }
    }
    } %end staff
    
  \header {
%    meter = "Jig"
    piece = "The Irish Washer Woman"
    composer = "Trad."
    parttagline = "Copied by John S. McWilliam"
  }
  
% added layout options. See bagpipe_new.ly (\layout) for default settings
  \layout {
  	  ragged-last = ##t
  	}

% \midi {} %Generation of midi files option.

}%end score

