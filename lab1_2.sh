#!/bin/bash

a=$(($1+$2))
b=$(($1-$2))
c=$(($1*$2))
if [ "$a" -eq "$3" ] 
then 
echo "that is additions"
elif [ "$b" -eq "$3" ]
then
echo "that is subtraction"
elif [ "$c" -eq "$3" ] 
then
echo "that is multiplication"

fi
