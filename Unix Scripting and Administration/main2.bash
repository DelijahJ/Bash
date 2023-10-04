#!/bin/bash
# Author:         Delijah Joseph
# Major:          Information Technology
# Creation Date:  March 23, 2022
# Due Date:       April 1, 2022
# Course:         CSC252
# Professor Name: Professor Earl
# Assignment:     #4
# Filename:       main.bash
# Purpose:        Writing bash scripts, Use of bash control structures

size=$2
age=$3

if [ "$#" -gt 3 ]
then
    echo Usage:./main.bash [Starting directory] [minimum filesize in KB] [age for files in days]
exit
fi
# Displays usage statement if too many arguements are given
if [ "$1" == "-h" ]
then
    echo Usage:./main.bash [Starting directory] [minimum filesize in KB] [age for files in days]
exit
fi
# Displays usage statement if -h option is used
case $# in 
     0)
	 soutput=$( find . -size +10k 2>/dev/null)
	 aoutput=$( find . -mtime +180 2>/dev/null)
	 # Find commands if no arguements are given
	 ;;
     1)
	 soutput=$( find $1 -size +10k 2>/dev/null)
	 aoutput=$( find $1 -mtime +180 2>/dev/null)
	 # Find commands if 1 arguement is given
	 ;;
     2)
	 soutput=$( find $1 -size +"$size"k 2>/dev/null) 
	 aoutput=$( find $1 -mtime +180 2>/dev/null)
	 # Find commands if 2 arguements are given
	 ;;
     3)
         soutput=$( find $1 -size +"$size"k 2>/dev/null)
	 aoutput=$( find $1 -mtime +$age 2>/dev/null)
	 # Find commands if 3 arguements are given
	 ;;     
esac
if [ "$#" -gt 1 ]
   then
       echo Files larger than "$size"KB
       else echo Files larger than 10k
fi
# Displays file size heading
for file in $soutput; do ls -lh "$file";
done
# Displays long listing of files of specified size
if [ "$#" -gt 2  ]
   then
       echo Files older than $age days
       else echo Files older than 180 days
fi
# Displays file age heading
for file in $aoutput; do ls -lh "$file"
done 
# Displays long listing fof files of specified age
