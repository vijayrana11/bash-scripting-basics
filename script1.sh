#! /bin/bash

server=$(cat file1)
list=/home/ec2-user/list
echo "enter the username"
read name
echo "enter the uid"
read uid
 
for j in $server;
do 
echo $j
ssh -i "$list" $j "sudo useradd $name"
if [ $? -eq 0 ]; then
echo "User $name added on $i"
else
echo "Error on $i"
fi
done

