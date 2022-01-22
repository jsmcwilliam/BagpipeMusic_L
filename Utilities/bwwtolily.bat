: Convert BWW files to Lilypond_2.18.2
: Create environment variable %LilyPY18% ("C:\Program Files (x86)\LilyPond_2.18.2\usr\bin")
: Create environment variable %LilyPY22% ("C:\Program Files (x86)\LilyPond_2.22.1\usr\bin")
: Open command window and set path to Work_Area for Lilypond 2.22.1
: File must be located in Work_Area
: Type "bwwtolily.bat fileName"
:---------------------------------------------


ECHO ON 
cd C:\Users\John\Music\Lilypond_Files\BagpipeMusic_L\Utilities
:PAUSE
:set arg1=%1
:%LilyPY%\python.exe %LilyPY%\bwwtolily.py -i %1
%LilyPY22%\python.exe %LilyPY22%\bwwtolily_63.py -i Rejected_Suitor.bww
PAUSE
End

:------------------------------------------------