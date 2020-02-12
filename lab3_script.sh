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
echo "Number of emails:"
echo `grep -P -c  '.+@.+\.\w{3}' regex_practice.txt`
echo "List of (303) phone numbers:"
echo `grep -P '303-\d{3}-\d{4}' regex_practice.txt`
echo "Writing geocities.com emails to file:"
echo `grep -P '.+@geocities\.com' regex_practice.txt >> email_results.txt`
echo "Done"
git add "email_results.txt"
git commit -m "added email results from script"
