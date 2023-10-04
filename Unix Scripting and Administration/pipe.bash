#!/bin/bash
# Author:         Delijah Joseph
# Major:          Information Technology
# Creation Date:  February 25, 2022
# Due Date:       March 4, 2022
# Course:         CSC252
# Professor Name: Professor Earl
# Assignment:     #3
# Filename:       pipe.bash
# Purpose:        Demonstrate understanding of shell pipes, Practice using filter commands
echo 1.1
cat students2.dat -n | sort students2.dat
echo 1.2
cat students2.dat -n | grep -w CS
echo 1.3
cat students2.dat -n | grep -w John
echo 1.4
cat students2.dat | grep -w ECE | sort -nrk 4
echo 1.5
cat students2.dat | cut -f 2,4 | sort -sk 2
echo 2
find /home/students.kutztown.edu/djose480 -name *.cpp 2>/dev/null
echo 3.1
rm newFile.hard
echo 3.2
ln students2.dat newFile.hard
echo 3.3
# The number after the permisions confirm that they are two names refering to the same file
echo 4.1
rm newFile.soft
echo 4.2
ln -s students2.dat newFile.soft
echo 4.3
#They are two differnt files because they have differnt permissions and they have a diffiremt number after their permissions 
echo 5
ls -iRA ~earl/public | sort
