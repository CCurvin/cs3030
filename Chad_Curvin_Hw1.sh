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

# Example menu from homework doc:
# hvalle@icarus:~$ ./hugoValle_hw1.sh
# This script can do three things:
# 1. Check to see if the user is the root user
# 2. Check to see if the script is running on Linux OS
# 3. Check to see if the -w argument was given
# What would you like to do? (1, 2, 3):

# Help info
# Usage ./hugoValle_hw1.sh [--help] [-w ]
# --help Print this help message
# -w Print name three times
# With no arguments it provides a menu to test the system

