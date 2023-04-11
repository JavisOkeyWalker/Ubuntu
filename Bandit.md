# Bandit Level 0-1:

I used `ls` then `cat readme`    

Password: NH2SXQwcBdpmTEzi3bvBHMM9H66vVXjL

I learned to check contents of a file.

# Bandit Level 1-2:  

I logged out then ssh into bandit 1's account by using the command `ssh -p 2220 bandit1@bandit.labs.overthewire.org` then    
using the password of level 0-1 to log in. to read the file I used the command `cat ./-`    

Password: rRGizSaX8Mk1RTb1CNQoXTcYZWU6lgzi    

I learned to check the ownership of a file, and how to read files that start with a special character.   

# Bandit 2-3:   

Once logged into bandit2 I used the command ` cat "spaces in this filename" ` to read the file.  

Password: aBZ0W5EmUfAf7kHTQeOwd8bauFJ2lAiG   

I learned if file names have spaces you have to use "" to read them.    

# Bandit 3-4:    
   
Once logged into bandit3 I used `ls` then switch to the inhere directory by using `cd inhere` I ran `ls -lah` to see the hidden file, once I seen the file I ran `cat ./hidden` to show the password.     

Password: 2EW7BBsr6aMMoJ2HjW067dm8EgX26xNe     

I learned you have to use `ls -lah` to show all files including hidden ones.   

# Bandit 4-5:   
  
Once logged into bandit4 I used `cd inhere` to enter the inhere directory. once in the directory I ran a `cat ./-file**` through each file to find the human readable file once I used `cat ./-file07` I found the password.   

Password: lrIWWI6bB37kxfiCQZqUdOIYfr6eEeqR   

I learned to use `./` to read files beggining with special characters.    

# Bandit 5-6:    

Once I logged into bandit5 I used `cd inhere` once in the directory I used ` find . -size 1033c` to search for a file exactly 1033 bytes in size. Once I got the path I `cat ./maybehere07/.file2 ` to find the password.    

Password: P4L4vucdmLnm8I7Vl7jG1ApGSfjYKqJU    

I learned how to search for exact file size using the `find` command.    

# Bandit 6-7:     

Once I logged into bandit6 I used `find / -user bandit7 -group bandit6 -size 33c` to search for a file with the exact properties of owned by user bandit7, group bandit6, and 33 bytes in size. Once reading through the output I found a path leading to the file with those properties, so I ran `cat /var/lib/dpkg/info/bandit7.password` , which reveleaed the password.

Password: z7WtoNQU2XfjmMtWA8u5rN4vzqu4v99S    

I learned how to used the `find` command to search for files with exact user ownership, group ownership, and size.     

# Bandit 7-8:     

Once I logged into bandit7 I used `grep millionth data.txt` to search the file data.txt for the word millionth, which revelaed the password.    

Password: TESKZC0XvTetK0S9xNwm25STk5iWrBvP    

I learned how to use the `grep` command to search a file for specific text.     

# Bandit 8-9:     

Once i logged into bandit8 I used `cat data.txt | sort | uniq -u` which reads through the data.txt, sorts, and shows only unique lines.    

Password: EN632PlfYiZbn3PhVK3XOGSlNInNE00t     

I learned how to use the `sort` and `uniq` commands to search for unique lines.     

# Bandit 9-10:    

Once I logged into bandit9 I used `strings data.txt | grep -E "=+"` which searches for strings with extended patterns containg "=" in data.txt, and revealed the password.     

Password: G7w8LIi6J3kTb8A7j9LgrywtEUlyyp6s     

I learned how to use the `strings` command mixed with `grep` and regex to search a file for specific string patterns.   

# Bandit 10-11:    

Once I logged into bandit10 I used `base64 -d data.txt` which decodes data.txt base64 text data, which revealed the password.    

Password: 6zPeziLdR2RKNdNYFNb6nVCKzphlXHBM     

I learned how to use `-d` option with the `base64` command to decode base64 data in a file.     

# Bandit 11-12:    
    
Once logged into bandit 11 I ran `cat data.txt` to output the rotated text. To decode the text I ran the command ` cat data.txt | tr “A-Za-z” “N-ZA-Mn-za-m” ` which gave me the decoded text that contained the password.    
   
 Password: JVNBBFSmZwKKOP0XbFXOoW8chDz5yVRv
 
 I learned how to use the `tr` command which translates or deletes characters. piping the cat data.txt output to the tr rule of "A-Za-z" "N-ZA_mn-zam-m" rotates the letters containing all Upper and Lower case 13 positions.    
 
 # Bandit 12-13:   
    
 Once logged into bandit 12 following the recommendations in the guide I created a directory in temp by running the command `mkdir /temp/lev12` after that I copied data.txt to that directory by running `cp data.txt /temp/lev12` then changed to that directory by running `cd /temp/lev12` and confirming data.txt is there by using `ls`. Once confirmed data.txt is in the directory I ran a command to reverse hex dump and output it to a new file called decode by using `xxd -r data.txt decode` then I had to work on uncompressing the content of decode by checking the data type using `file decode` , then going through a repitive process of checking the file type, moving that file to its file type and decompressing that file over and over until it was a readable ascII file by using these commands:   
 
mv decode decode.gz   
gzip -d decode.gz  
file decode     
mv decode decode.bz2   
bzip2 -d decode.bz2   
file decode   
mv decode decode.gz   
gzip -d decode.gz   
file decode
mv decode decode.tar   
tar xvf decode.tar   
file data5.bin    
mv data5.bin data5.tar     
tar xvf data5.tar    
file data6.bin    
mv data6.bin data6.bz2      
bzip2 -d data6.bz2
file data6   
mv data6 data6.tar   
tar xvf data6.tar   
file data8.bin    
mv data8.bin data8.gz   
gzip -d data8.gz   
file data8    
cat data8, which finally revealed the uncompressed message containing the password.    

  
       
Password: wbWdlBxEir4CaE8LaPhauuOo6pwRmrDw     
 
From this challenged I learned how to create the proper extension of a file based on its file type, and also decompressing the file based on its type.   
 
 # Bandit 13-14:   
 
 once logged into bandit13 there was a file in its directory called sshkey.private, I used `nano sshkey.private` and copied the contents of the file, remade the file on my personal system and pasted the RSA key into the file. I changed the permissions of the file to make sure it was proper executable permissions to ssh using the key by doing `chmod 700 sshkey.private` then I used the command `ssh -i sshkey.private bandit14@bandit.labs.overthewire.org -p 2220` which granted access to bandit user 14. given the path provided in the directions I ran the command `cat /etc/bandit_pass/bandit14 ` which presented me with the password.
    
Password: fGrHPx402xGC7U7rXKDaxiWFTOiF0ENq    

In this challenge I practiced accessing a system using ssh with its private key.
 
 
 














   



