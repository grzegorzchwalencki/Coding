#!/bin/bash

# Ask user to choose a number
echo "What number 1 or 2? Choose wisley my friend..."
read NUM

# If statments 1 -> print YES , 2 -> print NO , other input value or null print "Error input"

if [ $NUM == 1 ] ; then
	echo "YES"
elif [ $NUM == 2 ] ; then
	echo "NO"
else 
	echo "Error input"
fi
