#!/bin/bash
# A simple copy script

cp $1 $2 # 1 is stored in 2
#run cp with first command line arg as source and second as destination

# Let's verify the copy worked
echo $#
echo Details for $2 # prints details of 2

ls -lh $2
# included -lh where l to show extra info and h to make the size human readable
