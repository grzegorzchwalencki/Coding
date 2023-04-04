#!/bin/bash

# Print list of available operations to user and read an input
echo "ENTER the letter to choose the operation 
a - ADD
s - SUBTRACT
m - MULTIPLY
d - DIVIDE"
read OPR

# A condition that checks if user input is included in allowed operations
if ! [[ "$OPR" =~ ^(a|s|m|d)$ ]]  ; then
	echo "Bad or missing input value, try again"
	exit 1	
fi

# Ask for numbers and check if it is not an incorrect value
echo "ENTER first number: "
read NUM1

if ! [[  $NUM1 =~ ^[0-9]+$ ]] ; then
	echo "Wrong 1st value, enter Numbers"
	exit 1
fi

echo "ENTER second number: "
read NUM2
if ! [[ $NUM2 =~ ^[0-9]+$ ]] ; then
	echo "Wrong 2nd value, enter Numbers"
	exit 1
fi

# Based on choosen operation and numbers make a calculation and print a result, # In case of divide operation check if second numb is not a 0
if [ "$OPR" = a ] ; then let x=( $NUM1+$NUM2 ) ; echo $x

elif [ "$OPR" = s ] ; then echo $(($NUM1-$NUM2))

elif [ "$OPR" = m ] ; then echo $(($NUM1*$NUM2))

elif [ "$OPR" = d ] ; then
	if [ $NUM2 == 0 ] ; then echo "Cant divide by 0 - try again"
		exit 1
	fi
	echo "scale=2 ;  $NUM1 / $NUM2" | bc
fi

