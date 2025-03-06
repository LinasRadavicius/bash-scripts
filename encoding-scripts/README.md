### Scripts & their usage:

**PRE REQUISITES**
Install jq for URL encoding to work
sudo apt update && sudo apt install -y jq

**B64-urlencode-curl.sh**
This script was created in assisting of completing HTB module **WEB ATTACKS/Bypassing Encoded References**
https://academy.hackthebox.com/module/134/section/1187

**Scenario and usage**
IDOR vuln, ability to modify url param for **contracts=**, values injected: employee id 1-20 > B64 encoded > URL encoded. following script was made to automate encoding and downloading each employees contracts using curl

![image](https://github.com/user-attachments/assets/b9eca5b8-4545-423a-8ede-2be0e093c378)

for loop used to pass in employee ID for encoding, $hash for B64 encode, $urlencoded to urlencode $hash, curl used to silently download from target server

