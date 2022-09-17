#!/bin/bash
IFS=$'\t'
n=0
name="";
if [ $1 == "-c" ] 
then
while read x1 x2 x3 ;  do
 if [[ $2 -eq $x2 ]] 
 then
n=$((n + 1))
a=$x1
 
 fi

done < student.txt
 if [[ $n -gt 0 ]] 
 then
echo "Student $a is registered in $n courses"

else 
echo "No such student"
fi

elif [ $1 == "-g" ]
then 
IFS=$'\t'
while read x1 x2 x3; do
  if [[ $2 -eq $x2 ]] 
then 
	name="$x1"
fi
done < student.txt
echo "$name"
while read x1 x2 x3; do
if [[ $2 -eq $x1 ]] 
then 
echo "$x2   $x3"
fi
done < grades.txt
fi
