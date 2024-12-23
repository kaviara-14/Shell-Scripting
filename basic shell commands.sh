# basic shell commands

1. Create a File = touch command.
2. list my directory = ls command
3. get to know about any of the command = man command

4. File Operation 

```bash
open and write the file = vi kavi.sh(name of the file)
come to insert mode = esc and ctrl+i(insert)
save the file = esc and :wq!
quit the file = :q!

```
5. define the executable - bash is mostly used (#!/bin/bash)
(#!/bin/sh) - link to dash(#!/bin/dash) some of the operating system using dash

6. print the name in file
```bash
#!/bin/bash
echo "My name kavi" 
```
7. look for contents
cat kavi.sh(name of the file)

8. execute the file
./kavi.sh (or) sh kavi.sh(name of the file)

9. grant the permission for user, group and everyone
chmod = grants the permission (ch = change)
 - chmod UGE (4=read,2=write,1=execute)
 - chmod 777 kavi.sh = every the permission
 - chmod 444 = everyone read access
 - chmod 700 = user only accesss

10. to get all the history commands - history command

11. present working directory = pwd command
 
12. mkdir myfirstFolder = create a folder
13. cd myfirstFolder

14. go back from the current directory = cd ..

15. write a simple shell script

```bash
vim sample.sh

#!/bin/bash

#create a folder
mkdir kavi
cd kavi
# create a file
touch firstFile secondFile

# save = esc and :wq!

```

16. give the permission for user only
chmod 700 sample.sh

17. execute the file
./sample.sh

18. delete the file
rm -rf sample.sh

19. Analyse node health 
nproc command - print cpu
free command - print memory
top command - print the unning processes in your machine
df command - print all the disk space



2o. debug mode = set -x

21. details of the processes = ps -ef

22. get the the process only by amazon = ps -ef | grep "amazon"

23. send your first comment output to 2nd comment = | 

24. date | echo "today is"
outout : today is
reason : date sends the output to stdin,pipeline will not accept std input. it will only accept stdout of the first command..

26. retrieve the column = awk -F" "'{print $2}'


27. exit the script when there is error = set -e
but there is drawback : whenever there is pipeline, it will not throw error.so use set -o pipeline
set -o pipefail = # use set -o pipefail, so it will throw error

28. check for the node health

create a file : vim node.sh

~~~bash

#!/bin/bash
set -x # debug-mode
set -e # exit whenever there is error
set -o pipefail

df -h 
free -g
nproc
ps -ef | grep "amazon" | awk -F" "'{print $2}'

```
# grant the permisiion
chmod 700 node.sh

#execute
./node.sh

27. logfile = find the error

28. curl < url of the log file > | grep "Error"
get the required log file location 

29. download the file = wget

30. go to your root user 
sudo su - (root user)
sudo su (switch any user)

30. find command = find the file 
sudo find / -name kavi(name of the file)

32. if/else 

```bash
a=2
b=4

if[$a > $b]
then
 echo "greater than"
else
 echo "lesser than"
fi

```

33. for loop

for  i in {1,100}; do echo $1; done

34. trap command
# trapping the linux signals

35. kill = kill the process