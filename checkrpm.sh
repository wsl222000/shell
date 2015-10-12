#!/bin/bash
checkrpm()
{
  for i
  do
	! rpm -q $i && echo "$i is not installed!"
  done
}
checkrpm $@
