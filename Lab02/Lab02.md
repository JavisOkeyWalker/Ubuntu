## Lab 02

- Name: Javis Okey-Walker
- Email: Okey-walker.2@wright.edu

## Part 1 Answers

The answers for this section are to help you record what steps  
are needed to create a file locally (in your cloned repo)  
and push them (sync) with GitHub

1. Add a file for tracking: git add Lab02.md
2. Commit changes:git commit
3. Sync local commits with GitHub:git push

## Part 2 Answers

For each, write the command used or answer the question posed.

<<<<<<< HEAD
1.sudo adduser bob
2./home/Ubuntu
3.
4.
5.
6.
7.
8.
=======
1. sudo adduser bob
2. /home/bob
3. No, because bob is the owner and it was created under bobs account.
4. su bob
5. cd ~
6. Yes, because it is his own directory with permissions only to him.
7. exit
8. cd ~
>>>>>>> afdb2f3d587cc124a9f49c02704c1b34b36962dc

## Part 3 Answers

For each, write the command used or answer the question posed.

1. sudo addgroup crew
2. sudo usermod -a -G crew bob
3. sudo chgroup crew DirA
4. su bob
5. cd DirA ,  touch Bobsfile.txt
6. This was succesful because the group crew has power to rwx in DirA, and bob is a member of the group crew.

## Part 4 Answers

For each, write the command used or answer the question posed.

1. sudo touch sudowho.txt
2. permissions of this file are only root can edit this file and root is the owner, other users can read the file.
3. file can't be saved because user can is set to "readonly"

## Part 5 Answers

1. `ssh` command before configuring `config` file: ssh -i 2350key.pem ubuntu@44.209.93.122
2. HostName: 44.209.93.122
3. User: Ubuntu
4. IdentityFile: /home/javiswalker/2350key.pem
5. `~/.ssh/config` contents:

```
Host aws
HostName 44.209.93.122
User ubuntu
IdentityFile /home/javiswalker/2350key.pem
```

6. `ssh` command after configuring `config` file: ssh aws
