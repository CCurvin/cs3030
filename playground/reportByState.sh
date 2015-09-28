#!/bin/bash

#sed -f address.sed list.csv | #Change state to full name
#awk -F, '{print $4}' | #print just the state name
#sort #sort by state name only
sed -f nameState.sed list.csv |
#read input from sed and expect $4 to be the state.
#$0 prints current line (all fields)
#$* print all fields
awk -F, '{
	print $4 ", " $0
}' $* |
#sort lines in alphabetical order
sort |
#now do the programming task
awk -F, '
	$1 == LastState {
		print "\t" $2
	}
	$1 != LastState {
		LastState = $1
		print LastState
		print "\t" $2
}'
