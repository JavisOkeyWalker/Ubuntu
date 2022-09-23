## Lab 04

- Name:Javis Okey-Walker
- Email: Okey-walker.2@wright.edu

## Part 1 Answers

1. `grep -P '[xX]\d{4}' grepdata.txt`
2. `grep -i 'ca' grepdata.txt`
3. ` grep '@' grepdata.txt`
4. ` grep -P '\s[2]\d\d' grepdata.txt`

## Part 2 Answers

1. `sed 's/<\/.*>//g' sedfile.html`
2. `sed 's/<li>/- /g' sedfile.html`
3. `sed 's/<h1>/# /g' sedfile.html`
4. `sed 's/<h2>/## /g' sedfile.html`
5. `sed 's/<.*>//g' sedfile.html`
6. `sed 's/Batches/Matches/g' sedfile.html > sedfile.md`

## Part 3 Answers

1. `awk ' /Bil/{ print $1 }' records.txt`
2. `awk '$4 ~ /42/{ print $3, "", $4 }' records.txt`
3.  `awk '$3 ~ /wright.edu/{ print $2, "", $1,":", $3 }' records.txt`
4. `awk '$3 ~ /wright.edu/ && $6 ~ /1234/ { print $2," Favorite number is: ", $4 }' reco
rds.txt`
5.

