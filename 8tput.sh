#!/bin/bash
# Print message in center of terminal

cols=$( tput cols ) # will tell us how many columns the terminal has.
rows=$( tput lines ) # will tell us how many lines (or rows) the terminal has.

message=$@ # Take all the command line arguments and assign them to a single variable message.

input_length=${#message} # Find out how many characters are in the string message.
# variable message first as ${#@} would tell us how many command line arguments there were instead of the number of characters combined.

half_input_length=$(( $input_length / 2 )) # We need to know what 1/2 the length of the string message is in order to center it.

# Calculate where to place the message for it to be centered.
middle_row=$(( $rows / 2 ))
middle_col=$(( ($cols / 2) - $half_input_length ))

tput clear # clear the terminal.

tput cup $middle_row $middle_col # place the cursor at the given row and column.
tput bold # make everything printed to the screen bold.

echo $@ # print our message.
tput sgr0 # will turn bold off 
tput cup $( tput lines ) 0 # Place the prompt at the bottom of the screen.
