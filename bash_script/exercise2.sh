#!/bin/bash

# prompts the user for a directory name and then create it with mkdir.

echo "Give a directory name to create:"
read NEW_DIR

# Save original directory so we can return it.

ORIG_DIR=$(pwd)

# Check to make sure it doesn't already exist!

[[ -d $NEW_DIR ]] && echo $NEW_DIR already exist, aborting && exit
mkdir $NEW_DIR

# Change to the new direcotory and prints out where is is using pwd.

cd $NEW_DIR
pwd

# Using touch, creates several empty files and runs ls on them to verify they are empty.

for n in 1 2 3 4
do 
	touch file$n
done

ls file?

# Puts some content in them using echo and redirection.

for names in file?
do
	echo This file is named $names > $names
done

# Display their content using cat

cat file?

# Says goodbye to the user and cleans up after itself

cd $ORIG_DIR
rm -rf $NEW_DIR/
echo "Goodbye My Linux Friend!"


