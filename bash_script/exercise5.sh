#!/bin/bash

# Define three diffrent functions

func1(){
echo "This msg is from function 1"
}
func2(){
echo "This msg is from function 2"
}
func3(){
echo "This msg is from function 3"
}

# Ask user for a number in range 1-3
echo "Enter the number 1, 2 or 3"
read NUM

# Call a function with choosen number

func$NUM


