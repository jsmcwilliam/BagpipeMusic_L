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
    \tempo 4 = 100   
%    \bagpipeKey
    \hideKeySignature
    \bar ".|:"
    		
    % Part 1
    	\repeat volta 2 {
		\partial 8 a8
		\grg f4 c8 \grg e[ d b]
		\grg a4 b8 \grg a4 \gre a8
		\grg b8[ c d] \grg d[ e f]
		\grg e4.( e4) a8
		\break
		
		\grg f4 c8 \grg e[ d b]
		\grg a4 b8 \grg a4 \gre a8
		\grg b4 \gre b8 \grg c[ b a]
		\thrwd d4.( d4) f8
		\break
		
		\grg f4 b8 \grg b[ c d]
		\thrwd d4 e8 \grg f4 \gre f8
		\grg e8[ d c] \grg b[ c b]
		\grg a4.( a4) \gre a8
		\break
		
		\grg f4 c8 \grg e[ d b]
		\grg a4 b8 \grg a4 \gre a8
		\grg b4 \gre b8 \grg c[ b a]
	\thrwd d4.( d4) }
		
	\addlyrics {
		\set stanza = "1. "
		It came up -- on " " the mid -- night clear,
		that glo -- _ rious song " " of old,
		from an -- gels bend -- _ ing near the earth
		to touch their harps " " of gold.
		Peace on earth, " " good will to men,
		from heav -- _ en's all gra -- _ cious King.
		The world in sol -- _ emn still -- ness lay
		to hear the an -- _ gels sing.
	}

	\addlyrics {
		\override LyricText.color = #darkgreen
		\override StanzaNumber.color = #darkgreen
		\set stanza = "2. "
		Still through the clo -- _ ven skies they come
		with peace -- _ ful wings " " un -- furled,
		and still their heav -- en -- ly mu -- sic
		floats o'er all the wea -- _ ry world.
		A -- bove its sad " " and low -- ly plains 
		they bend " " on hov -- _ 'ring wing,
		and ev -- er o'er " " its Ba -- bel sounds
		the bles -- sed an -- _ gels sing.
	}

	\addlyrics {
		\override LyricText.color = #darkred
		\override StanzaNumber.color = #darkred
		\set stanza = "3. "
		And ye, be -- neath " " life's crush -- ing load
		whose forms " " are ben -- _ ding low,
		who toll a -- long " " the climb -- ing way,
		with pain -- ful steps " " and slow,
		look now, for glad " " and gol -- den hours 
		come swift -- _ ly on " " the wing.
		O rest be -- side " " the wear -- y road,
		and hear the an -- _ gels sing!
	}

	\addlyrics {
		\set stanza = "4. "
		For low, the days " " are hast -- 'ning on
		by pro -- _ phet bards " " fore -- told,
		when with the ev -- _ er cir -- cling years
		comes round the age " " of gold
		when peace shall o -- _ ver all the earth
		its an -- _ cient splen -- _ dors fling,
		and the whole world " " send back the song
		which now the an -- _ gels sing.
	}

    } %end staff
    
  \header {
    meter = "Christmas Carol"
    piece = "It came upon a midnight clear"
    composer = "Trad."
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score

