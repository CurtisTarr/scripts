#!/bin/sh

cmd=$1
arrCmd=(${cmd//d/ })  
numDice=${arrCmd[0]}
sides=${arrCmd[1]}
sum=0

for (( i=0; i<numDice; i++ ))
do
    roll=$((1 + $RANDOM % sides))
    sum=$((sum + roll))
done

echo $sum