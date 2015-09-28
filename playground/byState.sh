#! /bin/bash
# This shell script has three parts: 
# 1) The program invokes awk to produce input for the 
# sort program and then invokes awk again to test
# the sorted input and determine if the name of 
# the state in the current record is the same
# as in the previous record

# usage: sed -f nameState list.csv | byState

# Read input from nameState and expect $4 
# to be state name
# The $0 in awk means to print the current line
# 	all fields.
awk -F, '{ 
	print $4 ", " $0 
	}' $* | 
# sort lines in alphabetical order
sort |
# Now we perform a programming task. The script looks at the first
# field of each record (the state) to determine if it is the same
# as in the previous record. If it is not the same, the name of the state
# is printed followed by the person's name. If it is the same, then we 
# only print the person's name. 
awk -F, '
$1 == LastState { 
	print "\t" $2 
}
$1 != LastState { 
	LastState = $1
	print $1 
	print "\t" $2
}'

exit 0
