#!/bin/bash

i=1
j=0
k=0
l=0
m=0
p=0
q=0
isHead=0
isTail=1
declare -a arr

while [ $i -lt 11 ]
do
        a=$(( RANDOM%2 ))
	b=$(( RANDOM%2 ))
        if (( $a == $isHead && $b == $isHead ))
        then
                arr[$i]="HH"
                j=$(($j+1))
        elif (( $a == $isHead && $b == $isTail ))
	then
		arr[$i]="HT"
		k=$(($k+1))
        elif (( $a == $isTail && $b == $isHead ))
	then
		arr[$i]="TH"
                l=$(($l+1))
	else
		arr[$i]="TT"
                m=$(($m+1))
	fi

        i=$(($i+1))
done

p=$(($j/11*100))
q=$(($k/11*100))
echo "count of Head Doublet: " $j
echo "count of Head and Tail Doublet: " $k
echo "count of Tail Head Doublet: " $l
echo "count of Tail Doublet: " $m
echo $j | awk '{ per=$j/11*100; printf"%0.2f\n",per }'
echo $k | awk '{ per=$k/11*100; printf"%0.2f\n",per }'
echo $l | awk '{ per=$l/11*100; printf"%0.2f\n",per }'
echo $m | awk '{ per=$m/11*100; printf"%0.2f\n",per }'
