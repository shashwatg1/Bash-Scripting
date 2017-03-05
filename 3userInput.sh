#!/bin/bash

# Ask the user for their name
echo Hello, who am I talking to?
read varname

read -p 'Username: ' uservar # prompt message
read -sp 'Password: ' passvar # silent prompt message
echo

echo It\'s nice to meet you $varname, $uservar, $passvar

echo 'What cars do you like? (name 2)'

read car1 car2 # multi input
echo Your first car was: $car1
echo Your second car was: $car2
