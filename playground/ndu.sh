#!/bin/bash

if [[ $# -lt 1 ]]
then
	echo "Please enter a directory"
	exit 1
fi
#check if it is a directory
if [[ -d $1 ]] ; then
	# Run du utility and capture the output
	# -s option gives you byes in KB form
	# cut -f cuts data by fields (columns)
	result=$(du -s $1 | cut -f 1)
	# Convert result to bytes
	let total=$result*1024
	echo "Total bytes in $1 are $total"
	# MB scale
	if [[ $total  -ge 1048576 ]] ; then
		echo "($((total/1048576)) MB)"
	fi
else
	echo "Please enter a directory"
	exit 1
fi

echo "Disk use is $result"
echo "Finish"
exit 0
