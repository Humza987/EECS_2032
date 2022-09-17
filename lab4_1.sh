#!/bin/bash
IFS=$'\t'
s=0
g=0

if [ $1 == "-I" ] 
then
while read name quantity class key ;  do
while read keyi min max; do
if [ $class == "I" ] && [ $quantity -ge $min ] && [ $quantity -le $max ] && [ $key == $keyi ];
 then
echo "$name"
 fi

done < B.txt
done < A.txt


elif [ $1 == "-G" ] 
then
while read name quantity class key ;  do
while read keyi min max; do
if [ $class == "G" ] && [ $quantity -ge $min ] && [ $quantity -le $max ] && [ $key == $keyi ];
 then
echo "$name"
 fi

done < B.txt
done < A.txt

elif [ $1 == "-check" ] 
then
while read name quantity class key ;  do
while read keyi min max; do
if [ $key != $keyi ];
 then
s=$((s+1))
fi
g=$((g+1))
done < B.txt
if [ $g -eq $s ] 
then
echo "$key is in file A.txt but not in B.txt"
else 
s=0
g=0
fi
done < A.txt

while read keyi min max; do
while read name quantity class key ;  do
if [ $key != $keyi ];
 then
s=$((s+1))
fi
g=$((g+1))
done < A.txt
if [ $g -eq $s ] 
then
echo "$keyi is in file B.txt but not in A.txt"
else 
s=0
g=0
fi

done < B.txt
fi

