juryosc@pop-os:~$ mkdir Task_3
juryosc@pop-os:~$ cd Task_3
juryosc@pop-os:~/Task_3$ git init --verbose
error: unknown option `verbose'
usage: git init [-q | --quiet] [--bare] [--template=<template-directory>] [--shared[=<permissions>]] [<directory>]

    --template <template-directory>
                          directory from which templates will be used
    --bare                create a bare repository
    --shared[=<permissions>]
                          specify that the git repository is to be shared amongst several users
    -q, --quiet           be quiet
    --separate-git-dir <gitdir>
                          separate git dir from working tree
    -b, --initial-branch <name>
                          override the name of the initial branch
    --object-format <hash>
                          specify the hash algorithm to use

juryosc@pop-os:~/Task_3$ touch commands.sh
juryosc@pop-os:~/Task_3$ touch lol2
juryosc@pop-os:~/Task_3$ git status -v
fatal: not a git repository (or any of the parent directories): .git
juryosc@pop-os:~/Task_3$ git verbose init
git: 'verbose' is not a git command. See 'git --help'.

The most similar command is
	rebase
juryosc@pop-os:~/Task_3$ git init verbose
hint: Using 'master' as the name for the initial branch. This default branch name
hint: is subject to change. To configure the initial branch name to use in all
hint: of your new repositories, which will suppress this warning, call:
hint: 
hint: 	git config --global init.defaultBranch <name>
hint: 
hint: Names commonly chosen instead of 'master' are 'main', 'trunk' and
hint: 'development'. The just-created branch can be renamed via this command:
hint: 
hint: 	git branch -m <name>
Initialized empty Git repository in /home/juryosc/Task_3/verbose/.git/
juryosc@pop-os:~/Task_3$ git status -v
fatal: not a git repository (or any of the parent directories): .git
juryosc@pop-os:~/Task_3$ git init
hint: Using 'master' as the name for the initial branch. This default branch name
hint: is subject to change. To configure the initial branch name to use in all
hint: of your new repositories, which will suppress this warning, call:
hint: 
hint: 	git config --global init.defaultBranch <name>
hint: 
hint: Names commonly chosen instead of 'master' are 'main', 'trunk' and
hint: 'development'. The just-created branch can be renamed via this command:
hint: 
hint: 	git branch -m <name>
Initialized empty Git repository in /home/juryosc/Task_3/.git/
juryosc@pop-os:~/Task_3$ git status -v
On branch master

No commits yet

Untracked files:
  (use "git add <file>..." to include in what will be committed)
	commands.sh
	lol2
	verbose/

nothing added to commit but untracked files present (use "git add" to track)
juryosc@pop-os:~/Task_3$ git add .
error: 'verbose/' does not have a commit checked out
fatal: adding files failed
juryosc@pop-os:~/Task_3$ git add commands.sh
juryosc@pop-os:~/Task_3$ git add lol2
juryosc@pop-os:~/Task_3$ nano lol2
juryosc@pop-os:~/Task_3$ cat lol2
hi sorry for the spagetti task :/
juryosc@pop-os:~/Task_3$ git commit -m "myfirstcommit" --verbose
Author identity unknown

*** Please tell me who you are.

Run

  git config --global user.email "you@example.com"
  git config --global user.name "Your Name"

to set your account's default identity.
Omit --global to set the identity only in this repository.

fatal: unable to auto-detect email address (got 'juryosc@pop-os.(none)')
juryosc@pop-os:~/Task_3$ git config --global user.email jury.ahmed.osman@gmail
juryosc@pop-os:~/Task_3$ git user.name "Jury Ahmed"
git: 'user.name' is not a git command. See 'git --help'.
juryosc@pop-os:~/Task_3$ git --global user.name "Jury Ahmed"
unknown option: --global
usage: git [--version] [--help] [-C <path>] [-c <name>=<value>]
           [--exec-path[=<path>]] [--html-path] [--man-path] [--info-path]
           [-p | --paginate | -P | --no-pager] [--no-replace-objects] [--bare]
           [--git-dir=<path>] [--work-tree=<path>] [--namespace=<name>]
           [--super-prefix=<path>] [--config-env=<name>=<envvar>]
           <command> [<args>]
juryosc@pop-os:~/Task_3$ git config --global user.name "Jury Ahmed"
juryosc@pop-os:~/Task_3$ git commit -m "myfirstcommit" --verbose
[master (root-commit) 80f934e] myfirstcommit
 2 files changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 commands.sh
 create mode 100644 lol2
juryosc@pop-os:~/Task_3$ git status -v
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
	modified:   lol2

Untracked files:
  (use "git add <file>..." to include in what will be committed)
	verbose/

no changes added to commit (use "git add" and/or "git commit -a")
juryosc@pop-os:~/Task_3$ git add lol2
juryosc@pop-os:~/Task_3$ git status -v
On branch master
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
	modified:   lol2

Untracked files:
  (use "git add <file>..." to include in what will be committed)
	verbose/

diff --git a/lol2 b/lol2
index e69de29..b988ce4 100644
--- a/lol2
+++ b/lol2
@@ -0,0 +1 @@
+hi sorry for the spagetti task :/
juryosc@pop-os:~/Task_3$ echo "Good Morning, how are you? Hope you ar edoing good. Sorry for the last submission ^_^" > Hello.txt
juryosc@pop-os:~/Task_3$ ls
commands.sh  Hello.txt  lol2  verbose
juryosc@pop-os:~/Task_3$ git status -v
On branch master
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
	modified:   lol2

Untracked files:
  (use "git add <file>..." to include in what will be committed)
	Hello.txt
	verbose/

diff --git a/lol2 b/lol2
index e69de29..b988ce4 100644
--- a/lol2
+++ b/lol2
@@ -0,0 +1 @@
+hi sorry for the spagetti task :/
juryosc@pop-os:~/Task_3$ git status 
On branch master
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
	modified:   lol2

Untracked files:
  (use "git add <file>..." to include in what will be committed)
	Hello.txt
	verbose/

juryosc@pop-os:~/Task_3$ git add Hello.txt
juryosc@pop-os:~/Task_3$ git commit -m "greatest commit ever" --verbose
[master 79c8781] greatest commit ever
 2 files changed, 2 insertions(+)
 create mode 100644 Hello.txt
juryosc@pop-os:~/Task_3$ git verbose tag v1
git: 'verbose' is not a git command. See 'git --help'.

The most similar command is
	rebase
juryosc@pop-os:~/Task_3$ git tag v1 --verbose
error: unknown option `verbose'
usage: git tag [-a | -s | -u <key-id>] [-f] [-m <msg> | -F <file>]
               <tagname> [<head>]
   or: git tag -d <tagname>...
   or: git tag -l [-n[<num>]] [--contains <commit>] [--no-contains <commit>] [--points-at <object>]
               [--format=<format>] [--merged <commit>] [--no-merged <commit>] [<pattern>...]
   or: git tag -v [--format=<format>] <tagname>...

    -l, --list            list tag names
    -n[<n>]               print <n> lines of each tag message
    -d, --delete          delete tags
    -v, --verify          verify tags

Tag creation options
    -a, --annotate        annotated tag, needs a message
    -m, --message <message>
                          tag message
    -F, --file <file>     read message from file
    -e, --edit            force edit of tag message
    -s, --sign            annotated and GPG-signed tag
    --cleanup <mode>      how to strip spaces and #comments from message
    -u, --local-user <key-id>
                          use another key to sign the tag
    -f, --force           replace the tag if exists
    --create-reflog       create a reflog

Tag listing options
    --column[=<style>]    show tag list in columns
    --contains <commit>   print only tags that contain the commit
    --no-contains <commit>
                          print only tags that don't contain the commit
    --merged <commit>     print only tags that are merged
    --no-merged <commit>  print only tags that are not merged
    --sort <key>          field name to sort on
    --points-at <object>  print only tags of the object
    --format <format>     format to use for the output
    --color[=<when>]      respect format colors
    -i, --ignore-case     sorting and filtering are case insensitive

juryosc@pop-os:~/Task_3$ git tag v1
juryosc@pop-os:~/Task_3$ git status -v
On branch master
Untracked files:
  (use "git add <file>..." to include in what will be committed)
	verbose/

nothing added to commit but untracked files present (use "git add" to track)
juryosc@pop-os:~/Task_3$ git log
commit 79c87819a69374e6cfa411351cd5b9a9080cad46 (HEAD -> master, tag: v1)
Author: Jury Ahmed <jury.ahmed.osman@gmail>
Date:   Sat Feb 1 03:37:38 2025 +0200

    greatest commit ever

commit 80f934eadec7df5671da6e29eb787e9701fe6969
Author: Jury Ahmed <jury.ahmed.osman@gmail>
Date:   Sat Feb 1 03:31:50 2025 +0200

    myfirstcommit
juryosc@pop-os:~/Task_3$ # idk if this is the correct solution for the task :/
