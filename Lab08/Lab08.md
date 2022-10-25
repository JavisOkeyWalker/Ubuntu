## Lab 08

- Name: Javis Okey-Walker
- Email: Okey-Walker.2@wright.edu

## Part 1 Answers

1. Current Mounted block device: xvda, xvda1, xvdb 
2. Listed in /dev/block
202:0 (xvda),  202:1 (xvda1),  202:16 (xvdb),  7:0  7:1  7:2  7:3  7:4  7:5  7:6  7:7

3. `gdisk` main menu options
   - `p - Display  basic partition summary data.`
   - `o - Clear out all partition data. `
   - `n - Create a new partition`
   - `i - Show detailed partition information.`
   - `w - Write data.`
4. Using the `gdisk` utility on the disk: sudo gdisk/dev/xvdb, Command: n, Partition number: 1, Command: w
5. sudo mkfs.ext4 /dev/xvdb1
6.  cd /mnt , sudo /bin/mkdir expanse
7. sudo mount -t ext4 /dev/xvdb1 /mnt/expanse
8. Skip - trust you to do it ;)
9. sudo strings /dev/xvdb1
10. sudo rm testfile.txt, sudo strings /dev/xvdbq. The file was not truly deleted and still is hidden on the system.
11. sudo shred -zvu -n 3 testfile.txt
I used this command, which removed the file but renamed it to 000000000000. Once I run the string command again a  000000000000xt.swp file appears.
12. sudo umount /dev/xvdb1 , once the the partition is unmounted you can no longer interact with the files and folders.

## Part 2 Answers

1.
2. For `original.txt` identify:
   - Command to find the following info about `original.txt`:
   - inode number of `original.txt`:
   - number of blocks storing `original.txt`:
   - number of links to `original.txt`:
3. Command to create a hard link to `original.txt`:
   - What identifiers indicate a hard link was created?
   - Does modifying the hard linked file modify `original.txt`? Explain
4. Command to create a symbolic link to `original.txt`
   - What identifiers indicate a symbolic link was created?
   - If `original.txt` was deleted, and a new `original.txt` was created, would the sym link still work? Explain
5. Command to create a copy of `original.txt`
   - Does modifying the copied file modify `original.txt`? Explain
6. Command to move `original.txt` to another directory.
   - Does it have the same inode? Explain
   - Was the hard link you created affected? Explain
   - Was the symbolic link you created affected? Explain

## Extra Credit Answers

Line added to `/etc/fstab`:

```
Insert line here
```

