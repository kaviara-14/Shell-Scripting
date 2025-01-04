# 1. List some of the commonly used shell scripting

mkdir
touch
vim sample.sh
Cp
Mv
cd 
ls
sudo find / name = "kavi.sh"
df 
top
chmod

# 2. write a simple shell script to list all processes Id
#!/bin/bash
ps -ef | awk -F " "'{print $2}'

# 3. write a script to print only errors from a remote log

curl <url> | grep ERROR

# 4. write a shell script to print numbers divided by 3 & 5 and not 15
#!/bin/bash

for i in {1..100};do
if [[ ($((i % 3)) == 0 || $((i % 5)) == 0) && ($((i % 15)) != 0) ]] ; then
  echo "number divisible by 3 and 5 and not divisble by 15 is  $i"
fi
done

# 5. print even numbers

#!/bin/bash

for $i in {1..100};do 
if['expr $i % 2'==0];
then
    echo $i 
fi;
done

# 6. write a script to print number "S" in missiisssipi

#!/bin/bash
x = "mississsippi"
grep -o "-s"<<<"$x" | wc -l

# 7. How will you debug the shell script

command : set -x

# 8. wht is Crontab

Crontab is like a scheduler(Alarm).it will run the job automatically
eg : on 6 i need to check the cpu usage

# 9. how do you open a read-only file

vim -r sample.sh

# 10. wht is the difference bt soft link and hard link

Soft link : we can create a copy of file with soft link of one of the file if the original file is deleted its gone

Hard link : hardlink will create a copy
even if the original file is deleted.it will be there

# 11. disadvantage of shell scripting

    - errors are frequent and costly, a single error can alter the command
    - the execution speed is slow
    - large complex task arent suited to do 
    - every time a shell command is executed, a new process is launched

# 12. is bash dynamic or statically typed
dynamically typed

# 13. networking troubleshoot utility
traceroute google.com

# 14. sort list of names in file
sort function

# 15. how do manage logs of system that generate huge logs
logrotate

# 16. display active network connection
netstat or ss

# 17. check I/O connectivity - IOtop
