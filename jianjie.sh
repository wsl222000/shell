#!/bin/bash
i=1
while (( i<=$# ))
do
  echo ${!i}
let i++
done
