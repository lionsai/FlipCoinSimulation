#!/bin/bash

i=1
j=0
k=0
p=0
q=0
isHead=0
isTail=1
declare -A dict

while [ $i -lt 11 ]
do
        a=$(( RANDOM%2 ))

        if [ $a -eq $isHead ]
        then
		dict[Head$j]="H"
                j=$(($j+1))
        else
		dict[Tail$k]="T"
                k=$(($k+1))
        fi
        i=$(($i+1))
done

p=$(($j/11*100))
q=$(($k/11*100))
echo "count of Head Singlet: " $j
echo "count of Tail Singlet: " $k
echo $j | awk '{ per=$j/11*100; printf"%0.2f\n",per }'
echo $k | awk '{ per=$k/11*100; printf"%0.2f\n",per }'
