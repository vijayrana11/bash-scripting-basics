#!/bin/bash
input="/home/ec2-user/test1"
while IFS= read -r line
do
  echo "$line"
done < "$input"
