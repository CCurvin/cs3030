#!/bin/bash
#Calls a sed script that converts the date from / separated to . separted
#Calls an awk script that takes the output from sed and filters the list
# to only include those presidents who served on or after 1900.
#Also uses awk to only display the requested columns and other formatting preferences.

usage="\n Usage: $0 -s sedsrc -a awksrc -i inputFile \n"
error="\n Missing or invalid arguments \n"

if [[ $1 == "--help" ]]
then
	echo -e $usage
	exit 1
fi

while getopts ":s:a:i:h" opt
do
	case $opt in
	a)	
		awkfile=$OPTARG
		;;
	s)	
		sedfile=$OPTARG
		;;
	i)	
		infile=$OPTARG
		;;
	h)
		echo -e $usage
		exit 1
		;;
	\?)	
		echo -e "$error: -$OPTARG"
		echo -e $usage
		exit 1
		;;
	:)
		echo -e "Option -$OPTARG requires an argument."
		exit 1
		;;
	esac
done

shift $(( $OPTIND -1 ))

if ! [[ $awkfile && $sedfile && $infile ]]
then
	echo -e "$error" 
	echo -e "$usage"
	exit 1
fi

echo -e "Your output file will be saved to the file: 20thCenturyPresidents.txt."
sed -f "$sedfile" "$infile" | awk -f "$awkfile" > "20thCenturyPresidents.txt"

exit 0
