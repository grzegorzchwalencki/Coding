#!/bin/bash

length () {
	len1=${#1}
	len2=${#2}
	if [[ $len1 = 0 ]]; then 
		echo "First argument has 0 length"
	else 
		echo "First argument has $len1 length"
	fi
	if [[ $len2 > 0 ]] ; then
		echo "Second argument has $len2 length"
	fi
}

echo Give two strings:
read str1 str2

if [[ ${#str1}<1 ]]; then
	echo "First argument has ZERO length"
fi
if [[ ${#str2}>0 ]]; then 
	echo "Second argument has NON-ZERO length"
fi
length $str1 $str2

