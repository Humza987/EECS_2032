#!/bin/bash

read input
echo "Hello, this is $0"
if [ "$1" == "$input" ]
  then 
	echo "Identical"
  else 
	echo "Not identical"
fi
