#!/bin/bash

num=$#;
if [ $num -eq 0 ]
	

  then 
	echo "No numbers to add"
  else 
	s=0;
	for x in $@; do
	s=$(($s+$x));
done	
	echo "$s"
fi
