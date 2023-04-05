#!/bin/bash

length () {
        len1=${#1}
        len2=${#2}
        if [[ $len1 > $len2 ]]; then
                echo "1st string is longer then 2nd string"
        elif [[ $len1 == $len2 ]]; then
                echo "1st and 2nd string are equal"
        else
                echo "2nd string is longer then 1st"
        fi
}

thesame () {
        if [[ $1 == $2 ]]; then
                echo "1st  and 2nd string  are the same"
        else
                echo "1st is diferent than 2nd"
        fi
}


[[ $# -lt 2 ]] && \
	echo "Usage: Enter TWO strings as an arguments"
str1=$1
str2=$2

echo "Is string1 zero length? If 1 is FALSE"
[ -z $str1 ]
echo $?

echo "Is string2 non zero length? If 0 is TRUE"
[ -n "$str2" ]
echo $?

length $str1 $str2
thesame $str1 $str2
