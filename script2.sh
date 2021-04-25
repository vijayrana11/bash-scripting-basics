#! /bin/bash
backup_file=("/etc" "/home" "/boot")
dest_dir="/backup-dirct"
backup_date=$(date +%b-%d-%y)
for i in ${backup_file[@]};
do 
sudo tar -czf $dest_dir$i-$backup_date.tar $i
if [ $? -eq 0 ]
then
echo "backup is succesfully done"
else
	echo "failed to zip"
fi
done
