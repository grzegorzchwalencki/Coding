#!/bin/bash

echo Enter number of the month You want to convert to name of month.
read month

case "$month" in
	'1' )		echo January;;
	'2' )		echo Febuary;;
	'3' )		echo March;;
	'4' )		echo April;;
	'5' )		echo May;;
	'6' )		echo June;;
	'7' )		echo July;;
	'8' )		echo August;;
	'9' )		echo September;;
	'10' )		echo October;;
	'11' )		echo November;;
	'12' )		echo December;;
	* )		echo You have to give argument in range 1-12!;
			echo $month not matched!;
			exit 2;;
esac
exit 0
