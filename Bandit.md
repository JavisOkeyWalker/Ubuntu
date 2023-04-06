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





   



