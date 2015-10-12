#!/bin/bash
. test2.sh
num=".123456789"
len=`expr length $num`
for ((a=1;a<=$len;a++))
do
    char=`expr substr $num $a 1`
    if [ $char == '.' ]
    then
      break
    fi
done

length=`expr $a + 2`
newchar=`expr substr $num 1 $length`

if (( $a == 1 ))
then
   echo 0$newchar
fi
