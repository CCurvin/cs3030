BEGIN {FS=","} #Comma Separator, delimiter must be in double quotes
{
	address = $2
	print $1"," address
}
