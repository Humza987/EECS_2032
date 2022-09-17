#!/bin/bash
IFS=$'\t'
UnitsNeeded=0
name=""
echo "==============="
echo "Needed NOW"
echo "==============="

while read PNa PId PU PR; do
 name=$PId
 ProdNum=$PId
 while read PN PO; do
 if [[ "$PN" == "$ProdNum" ]]
 then
  if [[ $PO -gt $PU ]]
  then
  UnitsNeeded=$((PO-PU))
  echo "$name     $UnitsNeeded"
  fi
 fi
done < orders.txt
done < inventory.txt 
 
name2=""
echo "==============="
echo "Not urgent"
echo "===============" 

while read PNa2 PId2 PU2 PR2; do
 name2=$PId2
 while read PN2 PO2; do
 if [[ $PN2 == $PId2 ]]
 then
  if [ $((PU2-PO2)) -le 5 ] && [ $((PU2-PO2)) -ge 0 ];
  then
  echo "$name2"
  fi
 fi
done < orders.txt
done < inventory.txt  
