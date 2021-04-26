#! /bin/bash
list=(1 2 3 4 5)

sum=0

for i in ${list[@]}
do  
	sum=`expr $sum + $i`
done
echo $sum
