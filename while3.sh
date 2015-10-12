#!/bin/bash
(( pri=$RANDOM % 10 ))
while :
do
read -p "input:" a
let num++
if (( a==pri ))
  then
  echo "ok,$pri"
  echo "all $num times"
  exit 0
elif (( a>pri ))
  then 
  echo "high"
else
  echo "low"
fi
done
