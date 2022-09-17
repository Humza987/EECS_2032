#!/bin/bash
num=$#

if [ ! $num -eq 3 ] 
then 
   echo "Just three numbers please"
else 
 if [[ ($1 -eq $2) || ($1 -eq $3) || ($2 -eq $3) ]] 
 then
echo "Sorry median here does not mean anything"
elif [[ ($1 -lt $2 && $1 -gt $3) || ($1 -gt $2 && $1 -lt $3) ]] 
then
echo "$1"
elif [[ ($2 -lt $1 && $2 -gt $3) || ($2 -gt $1 && $2 -lt $3) ]] 
then
echo "$2"
elif [[ ($3 -lt $2 && $3 -gt $1) || ($3 -gt $2 && $3 -lt $1) ]] 
then
echo "$3"

fi
fi
