#!/bin/bash
input="/home/ec2-user/test1"
while IFS= read -r line
do
for i in $line
do
echo "$i"
done
done < "$input"
