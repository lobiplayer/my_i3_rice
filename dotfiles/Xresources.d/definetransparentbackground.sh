#! /bin/bash
# Written by Lobiplayer / Robin Mohan
# This file will make a new xresources file for the transparent background color. It will take it from the colors.xresources file which is created by wal.
#

FILE=./transpbg.xresources
BGCOLOR= xrdb -query | grep "*color14" | cut -f 2
OPACITY=80

if test -f "$FILE"; then
	rm $FILE
else
	echo -e ${BGCOLOR/\#/$OPACITY}

fi
echo -e "${BGCOLOR/\#/$OPACITY}"
