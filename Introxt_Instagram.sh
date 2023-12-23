"""
This shell script creates Instagram accounts and follows a list of users.

Inputs:
- Account name (string)
- Starting account number (integer)
- Ending account number (integer)

Outputs:
- Created Instagram accounts
- Extracted tokens and IDs
- Followed users

Example Usage:
```shellscript
Enter the Account Name:
myaccount
Enter Value Accounts starting from gisiniso1..2..3.. From:
1
upto:
3
```

Code Analysis:
1. Prompt the user for an account name and a range of account numbers.
2. Iterate through the account numbers and create Instagram accounts using HTTP requests.
3. Extract the necessary tokens and IDs from the response.
4. Iterate through a predefined list of users and follow them using HTTP requests.
5. Sleep for 3 seconds between each follow request.
"""

#!/bin/bash

clear

# Display intro logo
cd Logo && ./introxt_logo
cd ..

# Prompt for account name and range
echo "Enter the Account Name:"
read mail
echo "Enter Value Accounts starting from gisiniso1..2..3.. From:"
read num
echo "upto:"
read value

# Array of IP addresses
ip_addr=(160.38.24.67 150.13.67.2 140.27.5.3 154.37.7.6)

# Iterate through account creation and following
for ((j=$num; j<=$value; j++))
do
    # Create account
    curl -i 'https://www.instagram.com/accounts/web_create_ajax/?hl=en' \
         -H 'X-Forwarded-For: ${ip_addr[$j]}' \
         -H 'origin: https://www.instagram.com' \
         # ...other headers...
         -o signup.txt

    # Extract tokens and IDs
    grep 'csrftoken' signup.txt > csrftoken
    csrftoken=($(sed 's/^......................//g' csrftoken))
    echo "csrftoken is:" ${csrftoken[0]}
    # ...other extractions...

    # Array of users to follow
    user_id=(1922606959 3567519973 1650532993 5562186409 1731988667 1816804102 2290634214 2197510756 2301912423)
    user_name=(girru_gsb crazyniteshsoni nsnemichand sudarshansinghrathore00 tushar_48 nitishpurohit27 himanshu_gehl0t sunil_khoja vishalsonal)

    # Follow users
    for ((i=0; i<=2; i++))
    do
        curl -i 'https://www.instagram.com/web/friendships/${user_id[$i]}/follow/' \
             -H 'X-Forwarded-For: ${ip_addr[$i]}' \
             -X POST \
             # ...other headers...
             -o follow.json
        sleep 3s
    done
done
"""