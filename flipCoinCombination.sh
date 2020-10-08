#!/bin/bash -x
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

##UserCase3
declare -A dictionary;
dictionary[HH]=0;
dictionary[TT]=0;
dictionary[HT]=0;
dictionary[TH]=0;
count=0;

storeInDictionary(){
if [ $temp -eq 0 ]
then
	dictionary[HH]=$(( ${dictionary[HH]}+1 ));
elif [ $temp -eq 1 ]
then
	dictionary[TT]=$(( ${dictionary[TT]}+1 ));
else
	dictionary[HT]=$(( ${dictionary[HT]}+1 ));
	dictionary[TH]=$(( ${dictionary[TH]}+1 ));
fi
}

while [ $count -le 25 ]
do
temp=$((RANDOM%3));
storeInDictionary $temp;
((++count))
done

HeadHeadPercentage=$(( ${dictionary[HH]} * 100 / 25 ));
TailTailPercentage=$(( ${dictionary[TT]} * 100 / 25 ));
HeadTailPercentage=$(( ${dictionary[HT]} * 100 / 25 ));
TailHeadPercentage=$(( ${dictionary[TH]} * 100 / 25 ));

echo "HH percentage is: " $HeadHeadPercentage
echo "TT percentage is: " $TailTailPercentage
echo "HT percentage is: " $HeadTailPercentage
echo "TH percentage is: " $TailHeadPercentage
