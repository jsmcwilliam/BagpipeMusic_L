\version "2.18.0"
% When ready to include in collection: 1. Comment out paper.
% 				       2. Create include file of score and
%					  header.
%Comment out from here

%
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a4") % option 'landscape
#(set-global-staff-size 16)
#(allow-volta-hook "|") % enables volta hook outside repeat context

%\include "bagpipe.ly"
\include "../../Includes/bagpipe_new.ly" 	%(Replaces bagpipe.ly)
\include "../../Includes/bagpipe_extra.ly"	%(Extras)
\include "../../Includes/BP_format_piobaireachd.ly" 	
				%(Tagline: Copied by John McWilliam, date)
				%(Paper format Letter, Portrait  ))
%...to here
%}


common = {
  \bagpipeKey
  \time 2/4
  \override TextScript.staff-padding = #2
  \override Script #'padding = #1
  \override TextScript #'padding = #2 % horizontal text alignment
  \override Score.VoltaBracket.shorten-pair = #'(0.5 . 0)
  \override Score.VoltaBracket.shorten-pair = #'(0 . 0.5)
}
tr = ^\markup {\italic tr}

Secondtime = {
	  \once \override Staff.TextSpanner.outside-staff-priority = #650
          \once \override TextSpanner.bound-details.left.text = 
          \markup\concat {
              \draw-line #'(0 . -2)
              \hspace #-.1
              \column {
                \draw-line #'(20 . 0)
                \line { \hspace #1 \raise #.7 "2." }
              }
            }
          %\once \override TextSpanner.font-size = #-2
          \once \override TextSpanner.style = #'line
          \once \override TextSpanner.thickness = #1.5
          \once \override TextSpanner.bound-details.left.padding = #-1
          \once \override TextSpanner.bound-details.right.padding = #-3.2
          \once \override TextSpanner.bound-details.right.text = 
          \markup \draw-line #'(0 . -2)
}

VarIIIfd = { \set Score.measureLength = #(ly:make-moment 3 4)
      f4_\txtaorcrun
      \set Score.repeatCommands = #'((volta "S"))  
      \grg d4
      \once \hide Score.BarLine
      \once \hide Score.SpanBar
      \set Score.repeatCommands = #'((volta #f)(volta "D.") end-repeat)
      d4_\txtaorcrun
      \set Score.repeatCommands = #'((volta #f)) 
      \set Score.measureLength = #(ly:make-moment 2 4) }

VarIIIeb = { \set Score.measureLength = #(ly:make-moment 3 4)
      e4_\txtaorcrun
      \set Score.repeatCommands = #'((volta "S"))  
      \grg b4
      \once \hide Score.BarLine
      \once \hide Score.SpanBar
      \set Score.repeatCommands = #'((volta #f)(volta "D.") end-repeat)
      b4_\txtaorcrun
      \set Score.repeatCommands = #'((volta #f)) 
      \set Score.measureLength = #(ly:make-moment 2 4) }

VarIIIfb = { 
      f4_\txtaorcrun\startTextSpan f_\txtaorcrun 
      \set Score.measureLength = #(ly:make-moment 3 4)
      f4_\txtaorcrun
      \set Score.repeatCommands = #'((volta "S"))  
      \grg b4
      \once \hide Score.BarLine
      \once \hide Score.SpanBar
      \set Score.repeatCommands = #'((volta #f)(volta "D.") end-repeat)
      b4_\txtaorcrun\stopTextSpan
      \set Score.repeatCommands = #'((volta #f)) 
      \set Score.measureLength = #(ly:make-moment 2 4) }
      
      
VarIIIda = { \set Score.measureLength = #(ly:make-moment 3 4)
      d4_\txtaorcrun
      \set Score.repeatCommands = #'((volta "S"))  
      \grg a4
      \once \hide Score.BarLine
      \once \hide Score.SpanBar
      \set Score.repeatCommands = #'((volta #f)(volta "D.") end-repeat)
      a4_\txtaorcrun
      \set Score.repeatCommands = #'((volta #f)) 
      \set Score.measureLength = #(ly:make-moment 2 4) }
      
written = {\common \set Staff.instrumentName = #"Written"
	   d8\tr \bar "|"
	   b4\tr \bar "|"
	   f4\mordent s8 \bar "|."
}
played =  {\common \set Staff.instrumentName = #"Played"
	   \pthrwd d8 s8
	   \grip b4 
	   \thrwf f4
}

  \header {
    title = "Mackintosh's Lament" 
    subtitle = "Cumha Mhic-an-Toisich" 
    composer = "Macintyre ca 1550"
  }

% ---------------------------------------------------------------------------

% Ground
  urlar = {

    {
      \common
      \time 3/4
      \bar ".|:"
      
% Part 1.
      \repeat volta 2 {
      \grg f16 [ \gre f8. ] \grecad f8 \grg f4. 
      \grg f8. [ e16 ] d8\tr \grg d4. 
      \grg e4 \grip e8 \grg f4. 
      \cad b16 [ \grG b8. ] \grGcad b8 \grg b4. 
      \set Score.repeatCommands = #'((volta "2."))  
      \grg f8. [ e16 ] d8\tr \grg f4.  \break

      \cad b16 [ \grG b8. ] \grGcad b8 \grg b4. 
      \set Score.repeatCommands = #'((volta #f))  
      \grg e8. [ d16 ] \gre a4 \grg b16 [ d8.\tr ] 
      \grg e8. [ d16 ] \gre a4 \grg b16 [ d8.\tr ] 
      \grg b16 [ \grGcad a8. ] b4\tr f4\mordent 
      \grg f8 [ e8\fermata ] \grg d2^\markup {\halign #-2 \italic Fine.} \break
      } %end repeat
% Part 2. 
      \repeat volta 2 {
      \grg f16 [ \gre f8. ] \grecad f8 A4. 
      f8. [ e16 ] d8\tr \grg d4. 
      \grg e4 \grip e8 \grg f4. 
      \cad b16 [ \grG b8. ] \grGcad b8 \grg b4. 
      \set Score.repeatCommands = #'((volta "2"))  
      \grg f8. [ e16 ] d8\tr \grg f4.  \break

      \cad b16 [ \grG b8. ] \grGcad b8 \grg b4. 
      \set Score.repeatCommands = #'((volta #f)) 
 
      \grg e8. [ d16 ] \gre a4 \grg b16 [ d8.\tr ] 
      \grg e8. [ d16 ] \gre a4 \grg b16 [ d8.\tr ] 
      \grg b16 [ \grGcad a8. ] b4\tr f4\mordent 
      \grg f8 [ e8\fermata ] \grg d2 \break
      } %end repeat
    } %end staff

    \header {
      piece = "I. Urlar"
    } %end header

  } %end urlar

% ---------------------------------------------------------------------------
% Var. 1
  varI = {

    {
      \common
      \bar ".|:"
      
% Part 1.
	\repeat volta 2 {
	\grg f8. e16 \grg f8. e16
	\grg f8. e16 \grg d4
	\grg e8. d16 \grg f8. d16
	\grg e8. d16 \grg b4
	\set Score.repeatCommands = #'((volta "2"))  
	\grg f8. e16 \grg f8. e16 %\break
	
	\grg f8. d16 \grg b4
	\set Score.repeatCommands = #'((volta #f)) 
	\grg d8. b16 \grg d8. b16
	\grg d8. b16 \grg a4
	\grg b8. a16 \grg f8. a16
	\grg f8 e\fermata \grg d4 \break
	} %end repeat
% Part 2.
	\repeat volta 2 {
	\grg f8. e16 \grg A8. e16
	\grg f8. e16 \grg d4
	\grg e8. d16 \grg f8. d16
	\grg e8. d16 \grg b4
	\set Score.repeatCommands = #'((volta "2"))  
	\grg f8. e16 \grg f8. e16 %\break
	
	\grg f8. d16 \grg b4
	\set Score.repeatCommands = #'((volta #f)) 
	\grg d8. b16 \grg d8. b16
	\grg d8. b16 \grg a4
	\grg b8. a16 \grg f8. a16
	\grg f8 e\fermata \grg d4 \break		
	} % end repeat
    } % end staff

    \header {
      piece = "Var. I"
    } % end header

  } %end score

% ---------------------------------------------------------------------------

% Var. II
  \score {

    {
      \common
      \bar ".|:"
      
% Part 1.
	\repeat volta 2 {
	\grg f8. \grg a16 \grg f8. \grg a16
	\grg f8. \grg a16 \grg d8. \gre a16
	\grg e8. \grg a16 \grg f8. \grg a16
	\grg e8. \grg a16 \grg b8. \gre a16
	\set Score.repeatCommands = #'((volta "2"))  
	\grg f8. \grg a16 \grg f8. \grg a16 %\break
	
	\grg f8. \grg a16 \grg b8. \gre a16
	\set Score.repeatCommands = #'((volta #f)) 
	\grg d8. \gre a16 \grg d8. \gre a16
	\grg d8. \grg a16 \grg a8. \gre a16
	\grg b8. \gre a16 \grg f8. \grg a16
	\grg e8. \grg a16 \grg a8. \gre a16 \break
	} %end repeat
% Part 2.
	\repeat volta 2 {
	\grg f8. \grg a16 \grg A8. \grg a16
	\grg f8. \grg a16 \grg d8. \gre a16
	\grg e8. \grg a16 \grg f8. \grg a16
	\grg e8. \grg a16 \grg b8. \gre a16
	\set Score.repeatCommands = #'((volta "2"))  
	\grg f8. \grg a16 \grg f8. \grg a16 %\break
	
	\grg f8. \grg a16 \grg b8. \gre a16
	\set Score.repeatCommands = #'((volta #f)) 
	\grg d8. \gre a16 \grg d8. \gre a16
	\grg d8. \grg a16 \grg a8. \gre a16
	\grg b8. \gre a16 \grg f8. \grg a16
	\grg e8. \grg a16 \grg a8. \gre a16 \break
	} %end repeat
	
    } %end Staff

    \header {
      piece = "Var. II"
    } %end Header

    \layout {
%      ragged-right = ##t
    } %end Layout

  } %end score

  % ---------------------------------------------------------------------------
%  \pageBreak
% Var. III
  \score {

    {
      \common
      \bar ".|:"
      
% Part 1      
      \repeat volta 2 {
      f4_\txtaorcrun f_\txtaorcrun |\VarIIIfd
      e4_\txtaorcrun f_\txtaorcrun |\VarIIIeb
      \Secondtime \VarIIIfb 
      d4_\txtaorcrun d_\txtaorcrun |\VarIIIda
      b4_\txtaorcrun f_\txtaorcrun |
      \set Score.repeatCommands = #'((volta "S"))  
      \grg f8 e\fermata \grg d4
      \set Score.repeatCommands = #'((volta #f)(volta "D."))
      e4_\txtaorcrun a_\txtaorcrun
      \set Score.repeatCommands = #'((volta #f))
      \break } %end repeat
% Part 2      
      \repeat volta 2 {
      f4_\txtaorcrun A_\txtaorcrun |\VarIIIfd
      e4_\txtaorcrun f_\txtaorcrun |\VarIIIeb
      \Secondtime \VarIIIfb      
      d4_\txtaorcrun d_\txtaorcrun |\VarIIIda
      b4_\txtaorcrun f_\txtaorcrun |
      \set Score.repeatCommands = #'((volta "S"))  
      \grg f8 e\fermata \grg d4
      \set Score.repeatCommands = #'((volta #f)(volta "D."))
      e4_\txtaorcrun a_\txtaorcrun
      \set Score.repeatCommands = #'((volta #f))      
      \break } %end repeat
    } %end staff

    \header {
      piece = "Var. III - Taorluath [S] & [D] Var. IV Crunluath [S] & [D]"
%      breakbefore = ##t
    } %end header

  } %end score

  % ---------------------------------------------------------------------------
% Movements

  \score { \new StaffGroup {
  	   \cadenzaOn
  	  <<
  	  \new Staff {	\written }
  	  \new Staff { 	\played  }
  	  >>
  	   \cadenzaOff
}

    \header {
      piece = "Abreviations used:"
    } %end header
    
    \layout {
    	    indent = 2.0\cm 
   	    \context {
    \Staff
    \remove "Time_signature_engraver"
    	    }

    }
  } %end score
  
\markup {S = Singling. D = Doubling}

% ---------------------------------------------------------------------------

%{
Useful Commands:
      \set Score.repeatCommands = #'((volta "2"))  
      \set Score.repeatCommands = #'((volta #f)) 

%}