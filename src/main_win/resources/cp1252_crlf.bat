EXIT

ECHO ".bat file should actually be code page 437 (or similar), but that is left as
future exercise.
This file should not have explicitly set encoding or newline, and
should get the defaults of CP1252 and CRLF for its path.

!
! It seems that Idea auto-converts the newlines to LF after any change and save.
! A manual reconversion to CRLF after save is required.
!

CHANGE THE LINE BELOW: lowercase -> UPPERCASE
test ångström älämölö € š test
... Just that line above.


ADD A LINE WITH SOME  Ä Ö  CHARACTERS RIGHT BELOW THIS LINE.
Do NOT change the text below this (these lines are for checking that unmodified parts
do not get affected by a development round trip).
check älä sörki tätä tekstiä € check
sweet
"
