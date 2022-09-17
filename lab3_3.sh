UnitsNeeded=0
name=""
echo "==============="
echo "Needed NOW"
echo "==============="

while read PNa PId PU PR; do
name=$PNa
ProdNum=$PId

while read PN PO; do

if [[ "$PN" == "$ProdNum" ]]
then
if [[ $PO -gt $PU ]]
then
UnitsNeeded=$((PO-PU))
echo "$name"
fi
fi
done < orders.txt
done < inventory.txt  
