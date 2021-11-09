#!/bin/bash

a=$(( RANDOM%2 ))

echo $a

if [ $a -eq 1 ]
then
        echo "Head"
else
        echo "Tail"
fi


