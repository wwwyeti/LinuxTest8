#!/bin/bash
echo "please input a number list"
read -a arr
let length=${#arr[*]}-1
for ((i=0; i<$length; i++))
do
  for ((j=0; j<$length-i; j++))
  do
   if [ ${arr[j]} -gt ${arr[j+1]} ];then
      tmp=${arr[j]} 
      arr[j]=${arr[j+1]} 
      arr[j+1]=$tmp
   fi
  done 
done
echo "after sort"
echo ${arr[*]}

