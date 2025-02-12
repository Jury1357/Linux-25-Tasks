juryosc@pop-os:~$ cd Downloads/
juryosc@pop-os:~/Downloads$ ls
'code_1.97.0-1738713410_amd64(1).deb'  'VisualStudioSetup(1).exe'
 code_1.97.0-1738713410_amd64.deb      'VisualStudioSetup(2).exe'
 create_repo.sh                        'VisualStudioSetup(3).exe'
 Linux-25-Tasks                        'VisualStudioSetup(4).exe'
 Task_6.tar.bz2                         VisualStudioSetup.exe
juryosc@pop-os:~/Downloads$ cp Task_6.tar.bz2 Linux-25-Tasks/
juryosc@pop-os:~/Downloads$ cd Linux-25-Tasks/
juryosc@pop-os:~/Downloads/Linux-25-Tasks$ ls
Task_6.tar.bz2
juryosc@pop-os:~/Downloads/Linux-25-Tasks$ -d Task_6.tar.bz2 
-d: command not found
juryosc@pop-os:~/Downloads/Linux-25-Tasks$ bzip2 -d Task_6.tar.bz2 
juryosc@pop-os:~/Downloads/Linux-25-Tasks$ ls
Task_6.tar
juryosc@pop-os:~/Downloads/Linux-25-Tasks$ tar -xf Task_6.tar 
juryosc@pop-os:~/Downloads/Linux-25-Tasks$ ls
Task_6  Task_6.tar
juryosc@pop-os:~/Downloads/Linux-25-Tasks$ cd Task_6/
juryosc@pop-os:~/Downloads/Linux-25-Tasks/Task_6$ ls
files  README.md
juryosc@pop-os:~/Downloads/Linux-25-Tasks/Task_6$ cat README.md 
YAAAAAAAAY! Thank you for extracting me! 

juryosc@pop-os:~/Downloads/Linux-25-Tasks/Task_6$ sudo useradd  alice
juryosc@pop-os:~/Downloads/Linux-25-Tasks/Task_6$ sudo useradd  bob
juryosc@pop-os:~/Downloads/Linux-25-Tasks/Task_6$ ls -l
total 8
drwxr-xr-x 2 juryosc juryosc 4096 Feb  5 18:59 files
-rw-r--r-- 1 juryosc juryosc  502 Feb  5 18:46 README.md
juryosc@pop-os:~/Downloads/Linux-25-Tasks/Task_6$ sudo groupadd project_group
juryosc@pop-os:~/Downloads/Linux-25-Tasks/Task_6$ usermod -a -G project_group aice
usermod: user 'aice' does not exist
juryosc@pop-os:~/Downloads/Linux-25-Tasks/Task_6$ usermod -a -G project_group alice
usermod: Permission denied.
usermod: cannot lock /etc/passwd; try again later.
juryosc@pop-os:~/Downloads/Linux-25-Tasks/Task_6$ sudo usermod -a -G project_group alice
juryosc@pop-os:~/Downloads/Linux-25-Tasks/Task_6$ sudo usermod -a -G project_group bob
juryosc@pop-os:~/Downloads/Linux-25-Tasks/Task_6$ cd files/
juryosc@pop-os:~/Downloads/Linux-25-Tasks/Task_6/files$ ls
file1.txt  file2.txt  file3.txt  file4.txt  file5.txt
juryosc@pop-os:~/Downloads/Linux-25-Tasks/Task_6/files$ cd ..
juryosc@pop-os:~/Downloads/Linux-25-Tasks/Task_6$ sudo chown alice files.zip
juryosc@pop-os:~/Downloads/Linux-25-Tasks/Task_6$ sudo chgrp project_group files.zip
juryosc@pop-os:~/Downloads/Linux-25-Tasks/Task_6$ ls -l
total 12
drwxr-xr-x 2 juryosc juryosc       4096 Feb  5 18:59 files
-rw-rw-r-- 1 alice   project_group 1700 Feb 12 10:17 files.zip
-rw-r--r-- 1 juryosc juryosc        502 Feb  5 18:46 README.md
juryosc@pop-os:~/Downloads/Linux-25-Tasks/Task_6$ chmod g=r-- files.zip
chmod: changing permissions of 'files.zip': Operation not permitted
juryosc@pop-os:~/Downloads/Linux-25-Tasks/Task_6$ sudo chmod g=r-- files.zip
juryosc@pop-os:~/Downloads/Linux-25-Tasks/Task_6$ ls -l
total 12
drwxr-xr-x 2 juryosc juryosc       4096 Feb  5 18:59 files
-rw-r--r-- 1 alice   project_group 1700 Feb 12 10:17 files.zip
-rw-r--r-- 1 juryosc juryosc        502 Feb  5 18:46 README.md
juryosc@pop-os:~/Downloads/Linux-25-Tasks/Task_6$ sudo chmod o=--- files.zip
juryosc@pop-os:~/Downloads/Linux-25-Tasks/Task_6$ ls -l
total 12
drwxr-xr-x 2 juryosc juryosc       4096 Feb  5 18:59 files
-rw-r----- 1 alice   project_group 1700 Feb 12 10:17 files.zip
-rw-r--r-- 1 juryosc juryosc        502 Feb  5 18:46 README.md
