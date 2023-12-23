 **Here's a detailed summary of the script's functionality, presented in bullet points:**

This Bash script uses curl to automate Instagram account creation and follow specific users. It dynamically generates usernames and passwords, cycles through different IP addresses to avoid detection, extracts key tokens and IDs from the API response, and then follows pre-defined users while implementing delays to adhere to potential rate limits. While technically impressive, be aware that hardcoded user IDs, excessive use, and violating Instagram's terms of service could all lead to account restrictions or suspensions. Use responsibly!


 **Prerequisites**
* Bash (Bourne Again SHell)
* cURL (Client for URLs) command-line tool

**Usage**
Clone the repository:

```bash
git clone https://github.com/giruu/Increase-Instagram-follower.git
```
Navigate to the cloned directory:

```bash
cd Increase-Instagram-follower
```
Run the script:
```bash
./Introxt_Instagram.sh
```

**Key Features:**

- **Automates Instagram account creation:**
    - Uses the `curl` command to interact with Instagram's web API.
    - Sends POST requests with specific headers to simulate account signup.
    - Takes user input for account names and desired quantity.
- **Cycles through multiple IP addresses:**
    - Employs an array of IP addresses to potentially avoid detection.
    - Rotates through these addresses for each account creation.
- **Extracts essential tokens and IDs:**
    - Parses response data to retrieve CSRF tokens, user IDs, session IDs, etc.
    - Stores these values for subsequent actions.
- **Follows specific users:**
    - Uses another `curl` command to issue follow requests to designated accounts.
    - Includes a list of user IDs and usernames to follow.
- **Implements short delays:**
    - Incorporates 3-second pauses between follow actions for potential rate limiting.

**Additional Observations:**

- **Intro logo:** The script begins by displaying a logo from the "Logo" directory.
- **Hardcoded values:** The user IDs and usernames to follow are currently hardcoded within the script.
- **Potential ethical concerns:** The script's actions, if used excessively, could violate Instagram's terms of service and ethical guidelines regarding automation.

**Disclaimer:**

- It's crucial to adhere to Instagram's terms of service and community guidelines when using automation tools.
- Excessive use of such scripts could lead to account restrictions or suspensions.


