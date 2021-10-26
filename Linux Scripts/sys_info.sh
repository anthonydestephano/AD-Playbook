#!/bin/bash
#create directory for output
Sys_Info="~/research/sys_info.txt"
if [ ! -d ~/research]
then
	mkdir ~/research
fi

if [ -f ~/research/sys_info.txt ]
then
	rm ~/research/sys_info.txt
fi
echo "A Script"
date
echo -e "Uname info: $(uname -a) \n"
echo -e "IP Info: $(ip addr | head -9 | tail -1) \n"
echo -e "Hostname: $(hostname) \n"
sudo find /home/ -type f -perm 777 >> Sys_Info
ps aux --sort -%mem | awk {'print $1,$2 $3 $4 $11'} | head >> Sys_Info

list=(
	'/etc/shadow'
	'/etc/passwd'
)

for perm in ${list[@]}
do
	echo $(ls -la $perm)
done
