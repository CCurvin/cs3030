#!/bin/bash

suffix="BACKUP--`date +%Y-%m-%d_%H:%M`"
# loop over any files matching *.sh 
for script in *.sh 
do
	newname=$script.$suffix
	echo "$script to $newname"
	cp $script $newname
done

exit 0
