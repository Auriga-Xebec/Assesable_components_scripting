#!/bin/bash

### this program takes an input from a file, and trims it to 64 bytes
### it then generates another shasum from an input.
### it compares the password attempt three times then fails the program

### 202201301724  --> added colours to access granted and denied.
###                 --> chaned the password writing to secret.
###                 --> added newline characters to neaten the output
info_test=$(cut -b 1-64 secret.txt)

for ((i=1; i<=3; i++)); do
    echo "Attempt number $i of 3
Please enter a password: " ; read -s
    pass_attempt=$(echo -n $REPLY | sha256sum | cut -b 1-64)
 
    if [ $info_test = $pass_attempt ]; then
    echo -e "\n\033[32mAccess Granted\e[0m\n"; exit 0
    else 
    echo -e "\n\033[31mAttempt failed\e[0m\n"
    fi
done

exit 1