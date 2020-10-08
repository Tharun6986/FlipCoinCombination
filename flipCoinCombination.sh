#!/bin/bash
echo "Welcome to flip coin combination program"

##UserCase1
randomCheck=$((RANDOM%2));
if [ $randomCheck -eq 1 ]
then
	echo "Heads"
else
	echo "Tails"
fi

##UserCase2
declare -A dictionary;
dictionary[H]=0;
dictionary[T]=0;
count=0;

storeInDictionary(){
if [ $temp -eq 0 ]
then
	dictionary[H]=$(( ${dictionary[H]}+1 ));
else
	dictionary[T]=$(( ${dictionary[T]}+1 ));
fi
}

while [ $count -le 25 ]
do
temp=$((RANDOM%2))
storeInDictionary $temp;
((++count));
done

HeadPercentage=$(( ${dictionary[H]} * 100 / 25 ));
TailPercentage=$(( 100-$HeadPercentage ));
echo "Head Percentage is: " $HeadPercentage
echo "Tail Percentage is: " $TailPercentage

