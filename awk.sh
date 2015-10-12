#!/bin/bash
for ((i=1;i<=5;i++))
do
#  awk -v line=$i 'NR==line {print $0}' /etc/passwd
  awk 'NR=='$i' {print $0}' /etc/passwd
done
