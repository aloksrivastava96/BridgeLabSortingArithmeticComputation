#!/bin/bash -x

echo "This problem computes different arithmetic expressions and sorts the results"
read -p "Enter the first number:" a
read -p "Enter the second number:" b
read -p "Enter the third number:" c

declare -A Computations

Computations[result1]=$(($a+$b*$c))
Computations[result2]=$(($a*$b+$c))
Computations[result3]=$(($c+$a/$b))
Computations[result4]=$(($a%$b+$c))

counter=0
for value in `echo ${Computations[@]}`
do
	arrayResult[(( counter++ ))]=$value
done
