#!/bin/bash
# case example

case $1 in
start)
    echo starting
    ;; #  We identify the end of this set of statements with a double semi-colon ( ;; )
stop)
    echo stoping
    ;;
restart)
    echo restarting
    ;;
*) # The * represents any number of any character
# It is essentialy a catch all if for if none of the other cases match. It is not necessary but is often used.
    echo don\'t know
    ;;
esac
