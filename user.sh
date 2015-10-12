#!/bin/bash
for ((i=1;i<=10;i++))
do
  if ((i==9 || i==5))
  then
	continue
  fi
  useradd stu$i
done

i=1
while ((i<=10))
do
  if ((i==5 || i==9))
  then
	((i++))
	continue
  fi
  userdel -r stu$i
  let i++
done
