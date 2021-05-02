#! /bin/bash
count=$(df -h |wc -l)
#var=$(df -h|sed -n "$var"p|awk '{if($5>18 && $6=="/")  print$5}')#to check disk
#var2=$(sudo cat acd | head -n 3| wc -l)#to count disl uses file line
for((var=2;var<$count;var++))
do
df -h|sed -n "$var"p|awk '{if($5>18 && $6=="/")  print$5 " Disk is consumed by  " $6 " Partition"}'
var4=$(df -h| sed -n "$var"p |awk '{if($6=="/") print$6}')
var3=$(df -h|sed -n "$var"p|awk '{if($5>18 && $6=="/")  print$5}')
if [[ $var3 > 18%  &&  $var4 == / ]]
then 
sudo du -s /* |sort -rn>acd
var2=$(sudo cat acd | head -n 3| wc -l)
var5=1000000
for((var1=1;var1<var2;var1++))
do
var4=$(sudo cat acd|head -n 3|sed -n "$var1"p |awk '{if($1>1000000) print$1}') 	
var7=$(sudo cat acd|head -n 3|sed -n "$var1"p |awk '{if($1>1000000) print$2}')
var6=$(echo "scale=1; $var4/$var5" | bc -l)
echo "$var7 is consuming $var6 GB of disk"
done
fi
done
