#!/bin/bash

input=$1

letterCount=0
numberCount=0
symbolCount=0

letter="[a-zA-Z]"
number="[0-9]"
symbols="!@#$%^&()_+"


for (( i=0; i<${#input}; i++ ))
do
    count=${input:$i:1}
    if [[ $count =~ $letter ]]
    then
        letterCount=$(($letterCount+1))
    fi
done

for (( i=0; i<${#input}; i++ ))
do
    count=${input:$i:1}
    if [[ $count =~ $number ]]
    then
        numberCount=$(($numberCount+1))
    fi
done

for (( i=0; i<${#input}; i++ ))
do
    count=${input:$i:1}
    if [[ $symbols == *"$count"* ]]
    then
        symbolCount=$(($symbolCount+1))
    fi
done

echo "number: $numberCount Symbols: $symbolCount Letters: $letterCount"
