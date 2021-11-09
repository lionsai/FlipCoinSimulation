#!/bin/bash

i=1
j=0
k=0
l=0
m=0
n=0
p=0
q=0
r=0
isHead=0
isTail=1
declare -a arr

while [ $i -lt 50 ]
do
        a=$(( RANDOM%2 ))
        b=$(( RANDOM%2 ))
	c=$(( RANDOM%2 ))
        if (( $a == $isHead && $b == $isHead && $c == $isHead ))
        then
                arr[$i]="HHH"
                j=$(($j+1))
        elif (( $a == $isHead && $b == $isHead && $c == $isTail ))
        then
                arr[$i]="HHT"
                k=$(($k+1))
        elif (( $a == $isHead && $b == $isTail && $c == $isHead ))
	then
                arr[$i]="HTH"
                l=$(($l+1))
	 elif (( $a == $isHead && $b == $isTail && $c == $isTail ))
        then
                arr[$i]="HTT"
                m=$(($m+1))
	 elif (( $a == $isTail && $b == $isHead && $c == $isHead ))
        then
                arr[$i]="THH"
                n=$(($n+1))
	 elif (( $a == $isTail && $b == $isHead && $c == $isTail ))
        then
                arr[$i]="THT"
                p=$(($p+1))
	 elif (( $a == $isTail && $b == $isTail && $c == $isHead ))
        then
                arr[$i]="TTH"
                q=$(($q+1))
	 elif (( $a == $isTail && $b == $isTail && $c == $isTail ))
        then
                arr[$i]="TTT"
                r=$(($r+1))
        fi

        i=$(($i+1))
done

echo "count of Head Triplet: " $j
echo "count of Head Head and Tail Triplelet: " $k
echo "count of Head Tail Head Triplelet: " $l
echo "count of Head Tail Tail Triplelet: " $m
echo "count of Tail Head Head Triplelet: " $n
echo "count of Tail Head Tail Triplelet: " $p
echo "count of Tail Tail Head Triplelet: " $q
echo "count of Tail Tail Tail Triplelet: " $r



echo $j | awk '{ per=$j/50*100; printf"%0.2f\n",per }'
echo $k | awk '{ per=$k/50*100; printf"%0.2f\n",per }'
echo $l | awk '{ per=$l/50*100; printf"%0.2f\n",per }'
echo $m | awk '{ per=$m/50*100; printf"%0.2f\n",per }'
echo $n | awk '{ per=$n/50*100; printf"%0.2f\n",per }'
echo $p | awk '{ per=$p/50*100; printf"%0.2f\n",per }'
echo $q | awk '{ per=$q/50*100; printf"%0.2f\n",per }'
echo $r | awk '{ per=$r/50*100; printf"%0.2f\n",per }'
