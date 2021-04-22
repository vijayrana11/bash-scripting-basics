#! /bin/bash
name=/home/ec2-user/t1 
SUBJECT="DISK IS FULL"
TO="vijaysinghrana118@gmail.com"
mail -s "$SUBJECT" "$TO" < $name
