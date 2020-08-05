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

function arraySort() {
        for (( sortcounter=0; sortcounter<LENGTH; sortcounter++ ))
        do
                for (( newcounter=$sortcounter+1; newcounter<LENGTH; newcounter++ ))
                do
                        if (( ${arrayResult[sortcounter]}>${arrayResult[newcounter]} ))
                        then
                                element=${arrayResult[sortcounter]}
                                arrayResult[sortcounter]=${arrayResult[newcounter]}
                                arrayResult[newcounter]=$element
                        fi
                done
        done
	echo ${arrayResult[@]}
}

counter=0
for value in `echo ${Computations[@]}`
do
	arrayResult[(( counter++ ))]=$value
done
echo "Results in ascending order are:"
LENGTH=$((counter++))
arraySort $arrayResult $LENGTH

