#!/bin/bash
# Basic if statement

if [ $1 -gt 100 ] # if the first command line argument is greater than 100
then
	echo "Hey that's a large number."
	pwd
	if (( $1 % 2 == 0 ))
	then
		echo And is also an even number.
	fi
fi

date
