#!/bin/bash

# Check if user enter any argument when run the script

if [ $# -eq 0 ] ; then
	echo "Usage: $0 argument"
	exit
fi

# Print first argument on the screen

echo $1 
exit
