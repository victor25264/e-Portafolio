---
title: "Secure Coding Practices in Object-Oriented Programming" 
date: 2025-09-14
tags: ["AOODP","OOP","Desing Patterns", "Security", "OAUTH"]
author: ["Victor"]
description: "Ensuring security in complex systems is important. This unit presents some attacks and considerations when developing software." 
summary: "Ensuring security in complex systems is important. This unit presents some attacks and considerations when developing software." 
cover:
    # image: "paper1.png"
    alt: "Secure Coding Practices in Object-Oriented Programming"
    relative: true
editPost:
    URL: "https://github.com/victor25264/e-Portafolio"
    Text: "Victor's E-portafolio"

---

---

#### Secure Coding Practices in Object-Oriented Programming

##### Injection Attacks
+ Attacks that abuse the lack of input validation to execute code in a different context.
+ Some relevant ones are: SQL injection, Cross-site scripting, and command injection.

##### Cross-Site Request
+ Attacks that abuse that a user is authenticated against a system to send commands or requests without the user knowing
+ There are multiple defenses, like Cross-Origin Resource Sharing and Content Security Policy

##### Password Management
+ Passwords are critical for user and service authentication
+ Developers must hash and salt user passwords using standard and secure libraries on the application
+ Also, on the development system, the service account password must be stored in secure systems for secure and ephemeral interactions like Hashicorp Vault

##### Authentication and authorization
+ For authentication, the application should use multifactor authentication. Usually, a combination of a password and an OTP
+ Biometric authentication can be used, as it is gaining popularity
+ Authorization must ensure the user has the correct permission to interact with the system
+ Role-based authorization and Java Web Tokens are popular for determining permissions

##### OAuth
+ Allows single sign-on using credentials of a trusted provider to make an integrated experience for the user
+ User do not sends their secrets to the application, as the trusted party ensures the validation and authorization of the user

##### Logging
+ From Secure Web Application Development: "Logging and monitoring are essential for spotting and responding to intrusions or intrusion attempts."

---
#### Exercises

##### Discussion Tasks

```python
from passlib.hash import pbkdf2_sha256
import re
from datetime import datetime, timedelta
import logging

logging.basicConfig(level=logging.INFO,
                    format='%(asctime)s - %(levelname)s - %(message)s', 
)


class User:
    def __init__(self, username, password):
         self.username = username
         self.password = password
         self.last_logon = datetime.now()
         self.bad_attempts = 0
         self.last_attempt = datetime(1999, 1, 1, 0, 0, 0)
         self.locked = False


class AuthenticationSystem:
    def __init__(self):
        self.users = []
        self._delta_pass = timedelta(days=1)

    def add_user(self, username, password):
        """
        Adds user only if password complies with requirements
        """
        if Validator.validate_password(password) and Validator.validate_user(username):
            hashed_password = pbkdf2_sha256.hash(password)
            self.users.append(User(username, hashed_password))
            logging.info(f"User {username} was created successfully")
            return True
        logging.info(f"User {username} did not pass the validations")
        return False

    def authenticate(self, username, password):
        """
        Verifies that the user is on the list, then if the user is locked and finally the password
        If the user has 5 or more fail autentication attempts in less than 1 day the user is locked
        """
        if Validator.validate_password(password) and Validator.validate_user(username):
            for user in self.users:
                if user.username == username:
                    if user.locked:
                        logging.info(f"User {username} is locked. Last accepted attempt was: {user.last_attempt}")
                        pbkdf2_sha256.verify("dummy", user.password)
                        return False
                    elif pbkdf2_sha256.verify(password, user.password):
                            logging.info(f"User {username} login sucessful. Last accepted attempt was: {user.last_attempt}")
                            user.bad_attempts = 0
                            user.last_attempt = None
                            return True
                    else:
                        logging.info(f"User {username} login failure. Last accepted attempt was: {user.last_attempt}")
                        now = datetime.now()
                        if user.last_attempt < now - self._delta_pass:
                            logging.info(f"User {username} reset password attempts to 1")
                            user.bad_attempts = 1
                        else:
                            user.bad_attempts += 1
                            if user.bad_attempts >= 5:
                                logging.info(f"User {username} change status to locked.")
                                user.locked = True
                        user.last_attempt = now
        return False
    
# code from https://www.geeksforgeeks.org/python/password-validation-in-python/
class Validator:
    @staticmethod
    def validate_password(password): 
        """
        Santizes and validates password has the complexity requirements
        """
        rule = r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$#%])[A-Za-z\d@$#%]{10,}$"
        return bool(re.match(rule, password))
    @staticmethod
    def validate_user(user): 
        """
        Santizes and validates password has the complexity requirements
        """
        rule = r"^([\w\d]{4,})$"
        return bool(re.match(rule, user))

# Usage
auth_system = AuthenticationSystem()
auth_system.add_user("admin", "admin123") # Weak password
auth_system.add_user("user1", "password") # Weak password
auth_system.add_user("user##", "St03ngpass$$") # Not supported username
auth_system.add_user("", "St03ngpass$$") # Not supported username
auth_system.add_user("user1", "Pas##s23qw") # Strong password
auth_system.add_user("admin", "Admin123$$$") # Weak password

# Simulate an injection attack
malicious_input = "admin' OR '1'='1"

auth_system.authenticate(malicious_input, "anything")
# Output: True (Vulnerable to SQL injection)
auth_system.authenticate("admin", "password")
auth_system.authenticate("user1", "Pas##12adawd") 
auth_system.authenticate("user1", "Pas##12adawd") 
auth_system.authenticate("user1", "Pas##12adawd") 
auth_system.authenticate("user1", "Pas##12adawd") 
auth_system.authenticate("user1", "Pas##12adawd") 
auth_system.authenticate("user1", "Pas##12adawd") 
auth_system.authenticate("user1", "Pas##s23qw") # Correct password locked user
auth_system.authenticate("admin", "Admin123$$$") # Correct password
```

The implementation presented in this class demonstrates improvements in the application's security by utilizing validators for user and password inputs. Additionally, the lockout helps prevent brute-force attacks; however, we have alternative design choices for this purpose. Additionally, the lack of logging was not presented as a vulnerability, but rather on validation systems, as it is essential to have logging that enables administrators and security operators to ensure there is no ongoing incident. Still, there is room for improvement. 

Using a battle-tested framework like Django for authentication can ensure better performance and security if we use the appropriate modules. Almost all web application frameworks have security features that can protect against injection attacks, brute force, and perform the validations needed. 

However, this also introduces supply chain risk, as if the framework were to have a vulnerability, our application would remain vulnerable until we use the latest version of the framework. Additionally, new attacks have compromised popular libraries in both PyPy and NPM, so we need to exercise caution when using or updating libraries.

---

#### Reflexion
+ Security in application is a complex topic with different costs and benefits. These chapters outline multiple threats and corresponding mitigations that can be employed when developing new applications. Knowing how applications should be designed and what options are available will help me when dealing with incidents and when developing and suggesting best practices for systems.

---

#### Reading 

+ Baker, M. (2022) Secure Web Application Development : A Hands-On Guide with Python and Django. 1st ed. 2022. [Online]. Berkeley, CA: Apress.
+ Shah, M. (2023) Cloud native software security handbook : unleash the power of cloud native tools for robust security in modern applications. 1st ed. Birmingham, England: Packt Publishing Ltd.
+ Lakshmanan, R. (2025) 20 popular NPM packages with 2 billion weekly downloads compromised in supply chain attack, The Hacker News. Available at: https://thehackernews.com/2025/09/20-popular-npm-packages-with-2-billion.html (Accessed: 21 September 2025). 