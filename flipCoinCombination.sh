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

