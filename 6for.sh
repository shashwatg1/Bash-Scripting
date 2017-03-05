#!/bin/bash
# Basic for loop

# List approach
names='Stan Kyle Cartman'
for name in $names
do
	echo $name # The list is defined as a series of strings, separated by spaces.
done

# Range approach
echo All done

for value in {1..5}
do
	echo $value
done
