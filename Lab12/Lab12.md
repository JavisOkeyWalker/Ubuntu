## Lab 12

- Name: Javis Okey-Walker
- Email: Okey-Walker.2@wright.edu

## Part 1 Answers:

1. `tar` options:
   - `-c  create a new archive `
   - `-v  operate verbosely`
   - `-f  use archive file or device archive`
   - `-z  filter the arhcive through gzip `
   - `-x  extract files from an archive`
2. Command(s): `tar -czvf archive.tar.gz tarTest`

## Part 2 Answers:

1. Command:  `sftp -i 2350key.pem ubuntu@44.209.93.122`
2. `sftp` options:
   - `ls Display a remote directory listing of either path or the current directory if path is not specified. `
   - `lls  Display local directory listing of either path or current directory if path is not specified. `
   - `put  Upload local-path and store it on the remote machine.`
   - `get  Retrieve the remote-path and store it on the local machine.`
3. Command(s): ` get archive.tar.gz `
4. Command(s): `tar -xf archive.tar.gz`

## Part 3 Answers:

1. `sudo adduser ituser`
2. ` ssh-keygen`
3. ` ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC5STloQjG5v0KekREuZA5K4SIO1DmQHKVloNF4z1X27cMXSvN5WxGpn9wUGH17g3cK0lHeBwPutmMAdofVy8oYz8F+HaQXdG+nEqh8d36HZwmzK4p9uknpatjuZRX89erKxhl1JoEi+ZsfhxIV2LDqO12210iAtGbgSnAgvoiS01XxuDoWXhzHxe1jmgdEXPdGMqnThCwwiYWnEJBxUcUL4NQxPZ8Blz7zhqJgfdiClRNAOvGXo81mhKrwDeKMI92LBzH8XtRqxUP6VvHLkX7/S+mef012cSAyeEr6ip434qc1Rze8PJ0DRwbfxfKBQ5RHrra+d6/7iSoe8G5ckiMznsu7bkLYcCjEaex4ibBuhIjCGbdQcbd5f/lVNoVd+3AZ8UKnUQ0hyJgvlzjJN1Vee1kz4OklNevWijg85IO67NJ6OVlJNMi4AJeQ/GzvJ/dijOIz6hrc7qYV9vQwEBnmrKb951vXkVjBV9LNKlwPMMIFFeoYSldLk+tqM6dpoRs= javiswalker@LAPTOP-QG6TCCSH `
4.  ` ssh -i authorized_keys ituser@44.209.93.122 `

## Part 4 Answers

1. Translate to network prefixes + CIDR notation:
   - Sample: `10.0.0.0 - 10.0.1.255` = `10.0.0.0/23` OR `10.0.1.0/23`
   - `130.108.0.0 - 130.108.255.255` = `130.108.0.0/16` OR `130.108.0.0/16 `
   - `10.0.0.0 - 10.0.0.255` =
   - `your_public_ip - your_public_ip` =
2. How you confirmed current rules are bad, and why are they bad.
3. Your implementation details and **screenshot**
4. Something invalid:

## Extra Credit Answers:

### Solve the conflict

1.
2.
3.
4.
5.
