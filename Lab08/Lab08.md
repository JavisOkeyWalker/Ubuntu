## Lab 08

- Name: Javis Okey-Walker
- Email: Okey-Walker.2@wright.edu

## Part 1 Answers

1. Current Mounted block device: `xvda, xvda1, xvdb `
2. Listed in /dev/block
`202:0 (xvda),  202:1 (xvda1),  202:16 (xvdb),  7:0  7:1  7:2  7:3  7:4  7:5  7:6  7:7`

3. `gdisk` main menu options
   - `p - Display  basic partition summary data.`
   - `o - Clear out all partition data. `
   - `n - Create a new partition`
   - `i - Show detailed partition information.`
   - `w - Write data.`
4. Using the `gdisk` utility on the disk:` sudo gdisk/dev/xvdb, Command: n, Partition number: 1, Command: w `
5.` sudo mkfs.ext4 /dev/xvdb1 `
6. ` cd /mnt , sudo /bin/mkdir expanse `
7. `sudo mount -t ext4 /dev/xvdb1 /mnt/expanse`
8. Skip - trust you to do it ;)
9. `sudo strings /dev/xvdb1`
10. `sudo rm testfile.txt, sudo strings /dev/xvdbq. The file was not truly deleted and still is hidden on the system.`
11. `sudo shred -zvu -n 3 testfile.txt
I used this command, which removed the file but renamed it to 000000000000. Once I run the string command again a  000000000000xt.swp file appears, and the text of the file is now removed in the string.`
12. `sudo umount /dev/xvdb1 , once the the partition is unmounted you can no longer interact with the files and folders.`

## Part 2 Answers

1. `vim original.txt`
2. For `original.txt` identify:
   - Command to find the following info about `original.txt`: `stat original.txt`
   - inode number of `original.txt`: `513917`
   - number of blocks storing `original.txt`: `8`
   - number of links to `original.txt`: `1`
3. Command to create a hard link to `original.txt`: `ln -v original.txt hardlink1`
   - What identifiers indicate a hard link was created? `stat original.txt shows, numbers of links:2 instead of 1.`
   - Does modifying the hard linked file modify `original.txt`? Explain. `Yes once I edited the text of the hardlinked file the text of the original file was changed also, because these files are now linked whatever changes are made to one, will be made to the other.`
4. Command to create a symbolic link to `original.txt`: `ln -s original.txt symbolink.txt`
   - What identifiers indicate a symbolic link was created?  `when using the command ls -l symbolink.txt , it shows symbolink.txt -> original.txt `
   - If `original.txt` was deleted, and a new `original.txt` was created, would the sym link still work? Explain `Yes, when original.txt got deleted and I created a new one with new text inside it, the sym link reconnected and had its new content`
5. Command to create a copy of `original.txt` ` cp original.txt original2.txt`
   - Does modifying the copied file modify `original.txt`? Explain `No, because using the copy command just copies the content of the original file and puts it into a new one, it is not linked.`
6. Command to move `original.txt` to another directory. `mv original.txt ~/Ubuntu/Lab07`
   - Does it have the same inode? Explain ` No, because the inode acts as an ID for files, and because this is a new file, it has obtained a new inode number. `
   - Was the hard link you created affected? Explain `No, the hardlink is still connected to the original file and has the contents. It is a special connection path to that specific file. `
   - Was the symbolic link you created affected? Explain `Yes, once the file was moved the symbolic link file is no longer accesible, moving the file to a new directory has changed its path which ruined the connection to the original file. `

## Extra Credit Answers

Line added to `/etc/fstab`:

```
UUID="eff3c56b-c1bd-4fe1-852e-9ea8c2fe11ed" /mnt/expanse ext4 defaults,discard 0 0
```

