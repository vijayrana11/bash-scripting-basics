#! /bin/bash
var=$(df -h | sed -n 6P | awk '{if($5>40) print$5}')
echo "the disk use of / partition is $var"
sudo su
var1=$(du -sh /* | grep abc |)
