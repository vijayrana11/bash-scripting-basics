#!/bin/bash
input="/home/ec2-user/file1"
while IFS= read -r line
do
for item in $line
do
echo $line[1] $item[1]
break
done	
done < "$input"
