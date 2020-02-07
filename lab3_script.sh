#!/bin/bash
# Authors : Ryan Hughes
# Date : 2/7/2020

# Problem 1 Code:
# Use grep to search for, and count, phone numbers and emails in a
# 	specified text file

echo "Enter filename:"
read filename
echo "Enter regular expression:"
read reg
echo "Matches:"
echo `grep $reg $filename`
echo "Number of (303) phone numbers:"
echo `grep -P -c  '303-\d{3}-\d{4}' regex_practice.txt`