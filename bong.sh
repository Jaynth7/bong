#!/bin/bash

"$@"
#The above symbol will run the code and return an exit value
codeStatus=$?

successSound="/usr/share/sounds/freedesktop/stereo/complete.oga"
failureSound="/usr/share/sounds/freedesktop/stereo/dialog-warning.oga"


if [ $code -eq 0 ]; then
        echo "Done!"
        mpv $successSound || echo -e "\a"
else
        echo "Something happened"
        mpv $failureSound || echo -e "\a\a"
fi 