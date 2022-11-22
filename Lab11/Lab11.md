## Lab 11

- Name: Javis Okey-Walker
- Email: Okey-Walker.2@wright.edu

## Part 1 Answers

1. Hostname of the device: ip-10-0-0-25
2. MAC address of the NIC connected to the network: DA-C0-A6-61-DD-15
3. IP address:  10.16.201.125
4. Subnet mask: 255.255.0.0
5. Gateway address: 10.16.0.1
6. DHCP server address: 192.168.151.44
7. DNS server address: 130.108.128.200
8. Public IP used for communications outside subnet: 130.108.104.23

## Part 2 Answers

1. `tcpdump` command: sudo tcpdump -i any

   - How many packets were captured? 274182 packets captured
   - Looking through the output, what traffic are you seeing? Real-Time

2. Fancy `tcpdump` command: sudo tcpdump -vv -A -i eth0 host www.google.com

3. Capturing `google.com` traffic:
   - Was there a difference in output from `curl` when using `http` or `https`? ` Both Curl outputs showed the html contents of google.com with no major difference. `
   - Was there a difference in packet content in `tcpdump` when using `http` or `https`? ` Yes, in the http dump there were 14 captured packets and 18 received, but in https there were 35 captures and 43 received. `
   - What caused the difference? `the https is more encrypted which causes more data to be moved. `
4. Save capture to a file:  sudo tcpdump -w facebook.pcap -A -i eth0 host www.facebook.com
   Read capture from a file:   sudo tcpdump -r facebook.pcap
   Don't forget to `commit` and `push` your capture to your `Lab11` folder.

## Part 3 Answers

1. Command(s) to install `python3` and `pip3`: sudo apt install pyhton3 pip3
2. Run web server with `index.html` contents in your folder: python3 -m http.server 9000
3. Confirm content is being served: netsat -nl
   - Using `localhost`:
   - Using the system's private IP:
   - Using the system's public IP:
4. What's playing?
5. Command to show `LISTEN`ing processes:
6. Command to `kill`:

## Extra Credit Answers

1. How to find hostname for `EIP`:
2. Port scan command:
   - List of open ports:
3. How to view webpage:
4. Command to find SSH version:
   - Version information:
