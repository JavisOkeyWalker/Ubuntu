Flag 0: Not in history
Flag 1: running `cat readme` in airmanjoe's root directory you find the flag "welcome~padawan" 
Flag 2: Not there
Flag 3: running `vim .` then pressing enter on "-" then shows the flag "options:rule"
FLag 4: changing the permissions of the file running `chmod 700 'spaces in the filename` then ` cat ~/'spaces in this filename'`
shows the flag "low/orbit"
Flag 5: running `cd ~` then running a `ls -lah` you see all hidden directories, you then `cd hidden` then `ls -lah`, you will
see a hidden file named .cantseeme, run `cat .cantseeme` and the flag "nananananananana+batman" is found.
Flag 6: running `cd ../airmanjoe/` from airmon joes root directory and then running `./execute_me`
the flag "calamity-zebra" shows.
Flag 7: running `./example_setuid.exe su airmanbob` in airmanjoes home switches to airmanbobs home directory, from there
you will find the file "bobs.secret", run `cat bobs.secret` you will find the flag "butter+chicken"
Flag 8: from airmanjoe's home run `cd lost`, once in that directory you run the command `find * -size 503c` to search for
a file that is 503 bytes. That command will show the path to the file that is 503 bytes. when running `cat file9`
the flag "honest$cap" is found.

Flag 9 & 10: changing directories to the "alike" directory, then running the `diff` command on 2 files to find the difference
you will eventually find `diff echo-heeler bravo-corgi` returns no difference, meaning they are aliike. Flags: echo-heeler bravo-corgi

Flag 11:
