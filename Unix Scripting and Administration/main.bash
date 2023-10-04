#!/bin/bash
# Author:         Delijah Joseph
# Major:          Information Technology
# Creation Date:  February 24, 2022
# Due Date:       February 25, 2022
# Course:         CSC252
# Proffesor Name: Professor Earl
# Assignment:     #2
# Filename:       main.bash
# Purpose:        Script that outputs information using the id command and the date command.

echo 1a.
id -u -n
echo 1b.
id -u
echo 1c.
id -g
echo 1d.
id -n -G
echo 2a
uname -o
echo 2b
hostname -s
echo 2c
uname -s -r -v
echo 3a
date +"%m/%d/%Y" -d 2019-09-05
echo 3b
date +"%A, %B %d, %Y"
echo 3c
date --rfc-3339=seconds
