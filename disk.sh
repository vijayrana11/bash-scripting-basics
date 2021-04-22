#! /bin/bash
var=$USER
var1=$HOSTNAME
echo "you are currently in $var directory having hostname is $var1"
disk=$(df -h | sed -n 6P | awk '{ if($5>10) print$5}')
echo "the disk utilization of / partition is $disk" 
