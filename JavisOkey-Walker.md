# CWE That I have Used:

~~~
Rank:4	CWE-20	Improper Input Validation
~~~

# About this CWE / Personal Experience:     

CWE-20 Improper Input Validation is when a product can recieve input/data, but the proper validation rules are not set     
to check that the input includes the properties that process the data safely and correctly. In the 2022 list of weaknesses CWE    
top 25, this CWE has a rank of 4th most common weakness. The risk this CWE creates is, when software does not properly validate inputs   
an attacker is able to create their input into a form that is not expected by the software, which could result in altered control        
flow, arbitrary control of a resource, or arbitrary code execution. This weakness is listed to include 20 common CVE's, with one being    
CVE-2020-9054 : improper input validation in username parameter, leading to OS command injection.       

My personal Experience with CWE-20 is, when doing a Web Development project, I was creating a site that required a username, password, and email to continue to the next page, however my program did not require to check that the email paramter was in an email format or for malicious input, which means any input was able to be inserted into those parameters. With any input being valid to insert into the paramter, this can lead to many weaknesses, and vulnerability oppurtunities for my website. A hacker could easily effect my site if they wanted too, due to not requiring proper valid inputs.     

To fix this issue of not requiring proper input validation, I could first make sure all required information such as an email, is in an proper email format. For all the input paramters, there is a function in php that can check and prevent harmful injections in each parameter. With this function any "strange" characters detected will be automatically changed. Taking these steps, could have removed those weaknesses in my website code.



