#!/bin/bash

# What this does:
# Removes lines specified in one file from another file
# Usage:
# File B contains the lines you want to remove from File A
# troll@69$ ./ledel.sh fileB.txt fileA.txt # File B is the file from where the lines to be removed are fetched from

PATTERN=$1
EDITF=$2

awk 'NR==FNR{a[$0];next} !($0 in a)' $PATTERN $EDITF >> output.txt
