#!/bin/bash
# Author: Chad Curvin
# Class: CS 3030
# Date: 01Sep2015
######## Description ############
# This is our first assignment with these 3 tasks executed in a menu loop:
# 1 - Verify user, required to use a CASE statement to accomplish this (rather than 'who', use $UID)
# 2 - Check that the script is running on Linux, not Windows (example is Cygwin on Windows). Required to use an IF statement
# 3 - Work with a -w flag, optionally followed by a second parameter that is then repeated 3 times if provided. Example is if the script is run: './task1.sh -w mytest' then print mytest 3 times on same line.
# And a fourth requirement, outside the menu loop, is to supply a help text that describes command line usage.

# Help info
# Usage ./hugoValle_hw1.sh [--help] [-w ]
# --help Print this help message
# -w Print name three times
# With no arguments it provides a menu to test the system
######## End Description ############

# Set variables
userOS=`uname -s`

# Explain the menu options
printf '\n
This script can do three (3) things: \n
\t 1. Check to see if the user is the root user \n
\t 2. Check to see if the script is running on Linux OS \n
\t 3. Check to see if the -w argument was given \n
'
printf 'What would you like to do? (1,2,3): '

# Read in from user input
read OPT

case $OPT in
	1)
		case $UID in
			0) 
	  			echo "Ah, greetings Master Root. Welcome to the party. I shall exit now."
	   		;;
			*)
	  			echo "You are not the root user, exiting."
			;;
	  	esac 
	;;
	2)
		if [[ $userOS != 'Linux' ]]
			then echo "JOIN THE DARKSIDE,"$USER"!! We are more powerful than you could ever imagine!"
			else echo "This script is running on Linux."
		fi
	;;
	3)
		if [[ $1 != '-w' ]]
			then echo "Maybe you meant to add the -w argument?"
			else echo "$2 $2 $2"
		fi
	;;
esac

