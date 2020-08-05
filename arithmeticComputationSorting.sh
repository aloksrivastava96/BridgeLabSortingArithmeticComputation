#!/bin/bash -x

echo "This problem computes different arithmetic expressions and sorts the results"
read -p "Enter the first number:" a
read -p "Enter the second number:" b
read -p "Enter the third number:" c

echo $(($a+$b*$c))
echo $(($a*$b+$c))
awk "BEGIN {print $a + `awk "BEGIN {print $a/$b}"`}"
