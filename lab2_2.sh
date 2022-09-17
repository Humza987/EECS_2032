#!/bin/bash
string=$1
filename=$2
if [ ! -e $filename ] 
then 
   echo "$filename does not exist"
else 
 
 if grep -q $string $filename 
 then
 echo "word does exist in $filename"
else 
echo "word does not exist in $filename"

fi
fi
