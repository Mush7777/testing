#!/bin/bash


# Clear the screen
clear

# Output to stdout

var=0 
echo "Var is currently $var"
echo './goodbye.sh is currently '$(./goodbye.sh)
while [ $var -lt $(./goodbye.sh) ]
do
	(( var++ ))
	echo $var
done

# exit script and return code 0 to shell
exit 0
