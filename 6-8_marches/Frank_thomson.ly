\version "2.18.0"
%
%   	1. Comment out generation of midi files before compiling book
%  	2. Comment out from here when compiling book.........................
%{
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a4" 'landscape)

\include "bagpipe.ly"           %(Original)
%\include "bagpipe_new.ly" 	%(Replaces bagpipe.ly)
%\include "bagpipe_extra.ly"	%(Extras)
\include "../../Includes/BP_format.ly" 	
                                %(Tagline: Copied by John McWilliam, date)
				%(Paper format A4, Landscape)
				%(Header: piece, meter and composer)
				%(Otherwise Lilypond subtitle)
%to here..........................................................
%}

\score {

    \new Staff  {
    \time 6/8	    %adjust time to suit specific tunes
    \tempo 4 = 80   % adjust speed accordingly for playback
    \hideKeySignature
%    \quarterBeaming
    \bar ".|:"

    % Part 1
    \repeat volta 2 {
    \partial 8*2 r8 \dblA A8
    \hdblc c4. \grg a8. \grd c16 e8 |\grg e8. a16 A8 \hdblc c4 \gre a8
    \grg f8. e16 \gra e8 \grg e8. a16 \grd c8 |\grg d8. c16 \gra c8 \dblb b4
    
    \set Score.repeatCommands = #'((volta "2.--2.")) \dblA A8 
%    \break
    \hdblc c4. \grg a8. \grd c16 e8 |\grg e8. a16 A8 \hdblc c4 \gre a8
    A8. a16 \grg a8 \grg b8. f16 e8 |\grg a4. \wbirl a8
    \set Score.repeatCommands = #'((volta #f)) \break  
    }
    % Part 2
    \repeat volta 2 {
    r8 e8
    \grg f8. A16 \grg A8 a8. \grd c16 A8 |\hdblf f8. e16 \gra e8 \dble e4 \grg c8
    \thrwd d8.e16 f8 \grg e8. a16 \grd c8 |\grg d8. c16 \grG c8 \dblb b4
    
    \set Score.repeatCommands = #'((volta "1.")) e8 
%    \break
    \grg f8. A16 \grg A8 a8. \grd c16 A8 |\hdblf f8. e16 \gra e8 \grg c8. d16 e8
    A8. a16 \grg a8 \grg b8. f16 e8 |\grg a4. \wbirl a8
    \set Score.repeatCommands = #'((volta #f)) \break 
    }
    % Part 3
    \repeat volta 2 {
    r8 f
    \dblA A4 f8 \grg f8. e16 \gra e8 |\grg a8. f16 \grg e8 \dblc c4.
    \dblA A4 f8 \grg f8. e16 \gra e8 |\grg e8. a16 \grd c8 \dblb b4 A8
%    \break
    \grg f8. e16 \gra e8 \grg e8. a16 \grd c8
    \grg f8. e16\gra e8 \grg c8. d16 e8 |A8. a16 \grg a8 \grg b8. f16 e8
    \grg a4. \wbirl a8 \break
    }
    % Part 4
    \repeat volta 2 {
    r8 \dblg g8
    \dblA A4. a8. A16 \grg A8 |f8. \grg d16 \grc d8 \dble e4 A8
    \grg f8. e16 \gra e8 \grg e8. a16 \grd c8 |\grg d8. c16 \gra c8 \dblb b4
    \bar "|" 
%    \break 
    }
    \alternative {
    {\dblg g8
    \dblA A4. a8. A16 \grg A8 |f8. \grg d16 \grc d8 \grg c8. d16 e8
    A8. a16 \grg a8 \grg b8. f16 e8 |\grg a4. \wbirl a8
    \break }
     
    { r8 A
    a8. \grd c16 \gre c8 \grg b8. d16 \grd d8 |\dblc c4 \gre a8 \grg c8. d16 e8
    A8. a16 \grg a8 \grg b8. f16 e8 |\grg a4. \wbirl a8 r4 \bar "|."
    }
    }
    } %end staff
    
  \header {
    meter = "March"
    piece = "Frank Thomson"
    composer = "Trad."
    parttagline = "Copied by John S. McWilliam"

  }
  \layout {
  	  #(layout-set-staff-size 18)
  	  ragged-last = ##t
  	}
  	
%Generation of midi files can be removed here.
%  \midi {}
}%end score
%................................................................
%Useful commands for upgrading from older versions of Lilypond:
%\set Score.measureLength = #(ly:make-moment 5/8)
%\set Score.repeatCommands = #'((volta "1.--2."))
%\set Score.repeatCommands = #'((volta #f))
%\unfoldRepeats for better playback
%remove midi when compiling book
%................................................................