#! /bin/bash

s=df -h | sed -n 6P |awk '{if($5>10) print$5}' 
#ss=df -h | sed -n 6P |awk '{if($5>10) print$5}'
echo "disk utilisation of / partition is" $s

