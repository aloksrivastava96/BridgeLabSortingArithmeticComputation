#!/bin/bash -x

echo "This problem computes different arithmetic expressions and sorts the results"
read -p "Enter the first number:" a
read -p "Enter the second number:" b
read -p "Enter the third number:" c

declare -A Computations

Computation[result1]=$(($a+$b*$c))
Computation[result2]=$(($a*$b+$c))
Computation[result3]=$(($c+$a/$b))
Computation[result4]=$(($a%$b+$c))
