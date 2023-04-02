#!/bin/bash

echo "Give me your proposition name to new directory."
read dir_name
#Make a directory with a name user Enter
mkdir $dir_name
#Change directory to new created one
cd $dir_name/
#Print a working directory to show that previous steps are done.
pwd
#Create 3 empyty files.
touch emp1 emp2 emp3
ls emp1 emp2 emp3 #Check if files are existed
#Add some content to empty files.
echo "Hello world" > emp1
echo "This is second file" > emp2
echo "this is third file" > emp3
#Show if the content was added to empty files. 
cat emp1 emp2 emp3
echo "Good Bye"
#Changce to directory above and delete created directory
cd ..
rm -r $dir_name/
